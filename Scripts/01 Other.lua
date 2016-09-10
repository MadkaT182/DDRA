function LoadStepsDisplayGameplayFrame(self,player)
	local difficultyStates = {
		Difficulty_Beginner	 = 0,
		Difficulty_Easy		 = 2,
		Difficulty_Medium	 = 4,
		Difficulty_Hard		 = 6,
		Difficulty_Challenge = 8,
		Difficulty_Edit		 = 10,
	};
	local selection;
	if GAMESTATE:IsCourseMode() then
		-- get steps of current course entry
		selection = GAMESTATE:GetCurrentTrail(player);
		local entry = selection:GetTrailEntry(GAMESTATE:GetLoadingCourseSongIndex()+1)
		selection = entry:GetSteps()
	else
		selection = GAMESTATE:GetCurrentSteps(player);
	end;
	local diff = selection:GetDifficulty()
	local state = difficultyStates[diff] or 10;
	if player == PLAYER_2 then state = state + 1; end;
	return state;
end;

local numbered_stages= {
	Stage_1st= true,
	Stage_2nd= true,
	Stage_3rd= true,
	Stage_4th= true,
	Stage_5th= true,
	Stage_6th= true,
	Stage_Next= true,
}

function thified_curstage_index(on_eval)
	local cur_stage= GAMESTATE:GetCurrentStage()
	local adjust= 1
	-- hack: ScreenEvaluation shows the current stage, but it needs to show
	-- the last stage instead.  Adjust the amount.
	if on_eval then
		adjust= 0
	end

	local ordinal = "th";

	if GAMESTATE:GetCurrentStageIndex() + adjust == 1 then
		ordinal ="st";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 2 then
		ordinal ="nd";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 3 then
		ordinal ="rd";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 11 then
		ordinal ="th";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 12 then
		ordinal ="th";
	elseif GAMESTATE:GetCurrentStageIndex() + adjust == 13 then
		ordinal ="th";
	end

	if GAMESTATE:GetCurrentStage() == "Stage_Final" or GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
		ordinal = "";
	end

	if numbered_stages[cur_stage] then
		return GAMESTATE:GetCurrentStageIndex() + adjust .. ordinal
	else
		return ToEnumShortString(cur_stage) .. ordinal
	end
end
