--This is an implementation of DDR SuperNOVA 2 and beyond scoring as described
--by Aaron Chmielowiec at http://aaronin.jp/ddrssystem.html#ss9.

--To use it, you can call PrepareScoringInfo at the start of each stage or course.

--Shared functions/data

SN2Scoring = {}
--ScoringInfo is used and maintained solely by PrepareScoringInfo.
ScoringInfo = {
    seed = nil
}

local tapNoteScoresToIgnore = {
    TapNoteScore_None = true,
    TapNoteScore_CheckpointHit = true,
    TapNoteScore_CheckpointMiss = true,
    TapNoteScore_HitMine = true,
    TapNoteScore_AvoidMine = true
}

function SN2Scoring.PrepareScoringInfo()
    if GAMESTATE then
        local stageSeed = GAMESTATE:GetStageSeed()
        --if the seed hasn't changed, we're in the same game so we don't want
        --to re-initialize
        if stageSeed == ScoringInfo.seed then return end
        ScoringInfo.seed = stageSeed
        local inCourse = GAMESTATE:IsCourseMode()
        local maker = inCourse and SN2Scoring.MakeCourseScoringFunctions or SN2Scoring.MakeNormalScoringFunctions
        --cool lua trick: GAMESTATE:GetCurrentTrail(pn) is equivalent to
        --GameState.GetCurrentTrail(GAMESTATE,pn) so we can save the right
        --function to a variable and save... 3 lines of code or so...
        --oh well.
        local dataFetcher = inCourse and GameState.GetCurrentTrail or GameState.GetCurrentSteps
        for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
            local data = dataFetcher(GAMESTATE,pn)
            if data then
                ScoringInfo[pn] = maker(data,pn)
            end
        end
    end
end

--Normal scoring

function SN2Scoring.MakeNormalScoringFunctions(stepsObject,pn)
    local package = {}
    local radar = stepsObject:GetRadarValues(pn)
    local baseScore = 1000000/(radar:GetValue('RadarCategory_TapsAndHolds')+radar:GetValue('RadarCategory_Holds')+radar:GetValue('RadarCategory_Rolls'))
    local currentScore = 0
    local currentMaxScore = 0

    package.AddTapScore = function(tapNoteScore)
        if tapNoteScoresToIgnore[tapNoteScore] then
            return
        end
        currentMaxScore = currentMaxScore + baseScore
        if tapNoteScore == 'TapNoteScore_W1' then
            currentScore = currentScore + baseScore
        elseif tapNoteScore == 'TapNoteScore_W2' then
            currentScore = currentScore + (baseScore - 10)
        elseif tapNoteScore == 'TapNoteScore_W3' then
          currentScore = currentScore + (baseScore * 0.6 - 10)
        elseif tapNoteScore == 'TapNoteScore_W4' then
            currentScore = currentScore + (baseScore * 0.2 - 10)
        end
    end

    package.AddHoldScore = function(holdNoteScore)
        currentMaxScore = currentMaxScore + baseScore
        if holdNoteScore == 'HoldNoteScore_Held' then
            currentScore = currentScore + baseScore
        end
    end

    package.GetCurrentScore = function(exact)
        if exact then
            return currentScore
        end
        local rawScore = 10 * math.round(currentScore / 10)
        --this serves two functions: you can't get 1,000,000
        --in A mode, and also all A-mode scores end in 9
        -- if (rawScore > 0) then
        --     rawScore = rawScore - 1
        -- end
        return rawScore
    end

    package.GetCurrentMaxScore = function()
        return currentMaxScore
    end

    return package
end

--Course scoring

local function CourseNoteMultiplier(stage, score)
    --if you just pass a stage number, it gives you the maximum
    score = score or 'TapNoteScore_W1'

    --the multiplier starts at 3 and goes up by 1 every two stages cleared
    local baseMultiplier = math.floor(stage-1 / 2) + 3

    if score == 'TapNoteScore_W1' or score == 'HoldNoteScore_Held' then
        return baseMultiplier
    elseif score == 'TapNoteScore_W2' then
        return baseMultiplier - 1
    elseif score == 'TapNoteScore_W3' then
        return baseMultiplier - 2
    end
    return 0
end

function SN2Scoring.MakeCourseScoringFunctions(trailObject,pn)
    local package = {}
    local trailEntries = trailObject:GetTrailEntries()
    local totalSDP = 0

    for stage, entry in ipairs( trailEntries ) do
        local multiplier = CourseNoteMultiplier(stage)
        local radar = entry:GetSteps():GetRadarValues(pn)
        totalSDP = (radar:GetValue('RadarCategory_TapsAndHolds')
            +radar:GetValue('RadarCategory_Holds')
            +radar:GetValue('RadarCategory_Rolls'))
            * multiplier
            + totalSDP
    end

    local baseScore = 1000000 / totalSDP
    local currentScore = 0
    local currentMaxScore = 0

    package.AddTapScore = function(tapNoteScore, stage)
        assert(stage and stage > 0, "You NEED to pass a stage number for course scoring!")
        if tapNoteScoresToIgnore[tapNoteScore] then
            return
        end
        currentMaxScore = currentMaxScore + baseScore*CourseNoteMultiplier(stage)
        currentScore = currentScore + baseScore*CourseNoteMultiplier(stage, tapNoteScore)
    end

    package.AddHoldScore = function(holdNoteScore, stage)
        assert(stage and stage > 0, "You NEED to pass a stage number for course scoring!")
        currentMaxScore = currentMaxScore + baseScore*CourseNoteMultiplier(stage)
        currentScore = currentScore + baseScore*CourseNoteMultiplier(stage, holdNoteScore)
    end

    package.GetCurrentScore = function(exact)
        if exact then
            return currentScore
        end
        return math.floor(currentScore)
    end

    package.GetCurrentMaxScore = function()
        return currentMaxScore
    end

    return package
end

-- (c) 2015-2016 John Walstrom, "Inorizushi"
-- All rights reserved.
--
-- Permission is hereby granted, free of charge, to any person obtaining a
-- copy of this software and associated documentation files (the
-- "Software"), to deal in the Software without restriction, including
-- without limitation the rights to use, copy, modify, merge, publish,
-- distribute, and/or sell copies of the Software, and to permit persons to
-- whom the Software is furnished to do so, provided that the above
-- copyright notice(s) and this permission notice appear in all copies of
-- the Software and that both the above copyright notice(s) and this
-- permission notice appear in supporting documentation.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-- OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF
-- THIRD PARTY RIGHTS. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR HOLDERS
-- INCLUDED IN THIS NOTICE BE LIABLE FOR ANY CLAIM, OR ANY SPECIAL INDIRECT
-- OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
-- OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
-- OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
-- PERFORMANCE OF THIS SOFTWARE.
