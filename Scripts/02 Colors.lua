ColorGR = {
	Yellow		=	color("1,1,0,0.75"),
}

GameColor = {
	Difficulty = {
		Beginner	= color("#1ed6ff"),
		Easy		= color("#ffaa19"),
		Medium		= color("#ff1e3c"),
		Hard		= color("#32eb19"),
		Challenge	= color("#eb1eff"),
		Edit		= color("#afafaf"),
		Couple		= color("#ed0972"),
		Routine		= color("#ff9a00"),

		Difficulty_Beginner	= color("#1ed6ff"),
		Difficulty_Easy		= color("#ffaa19"),
		Difficulty_Medium	= color("#ff1e3c"),
		Difficulty_Hard		= color("#32eb19"),
		Difficulty_Challenge	= color("#eb1eff"),
		Difficulty_Edit 	= color("#afafaf"),
		Difficulty_Couple	= color("#ed0972"),
		Difficulty_Routine	= color("#ff9a00")
	},
	Judgment = {
		JudgmentLine_W1		= color("#bfeaff"),
		JudgmentLine_W2		= color("#fff568"),
		JudgmentLine_W3		= color("#48ff1d"),
		JudgmentLine_W4		= color("#34bfff"),
		JudgmentLine_W5		= color("#e44dff"),
		JudgmentLine_Held	= color("#FFFFFF"),
		JudgmentLine_Miss	= color("#ff3c3c"),
		JudgmentLine_MaxCombo	= color("#ffc600")
	},
}

function BoostColor( cColor, fBoost )
	local c = cColor
	return { c[1]*fBoost, c[2]*fBoost, c[3]*fBoost, c[4] }
end

function ColorLightTone(c)
	return { c[1]+(c[1]/2), c[2]+(c[2]/2), c[3]+(c[3]/2), c[4] }
end

function ColorMidTone(c)
	return { c[1]/1.5, c[2]/1.5, c[3]/1.5, c[4] }
end

function ColorDarkTone(c)
	return { c[1]/2, c[2]/2, c[3]/2, c[4] }
end

function CustomDifficultyToColor( sCustomDifficulty )
	return GameColor.Difficulty[sCustomDifficulty]
end

function CustomDifficultyToDarkColor( sCustomDifficulty )
	local c = GameColor.Difficulty[sCustomDifficulty]
	return { c[1]/2, c[2]/2, c[3]/2, c[4] }
end

function CustomDifficultyToLightColor( sCustomDifficulty )
	local c = GameColor.Difficulty[sCustomDifficulty]
	return { scale(c[1],0,1,0.5,1), scale(c[2],0,1,0.5,1), scale(c[3],0,1,0.5,1), c[4] }
end

function StepsOrTrailToColor(StepsOrTrail)
	return CustomDifficultyToColor( StepsOrTrailToCustomDifficulty(stepsOrTrail) )
end
