local curScreen = Var "LoadingScreen";
local curStageIndex = GAMESTATE:GetCurrentStageIndex() + 1;
local playMode = GAMESTATE:GetPlayMode();

local t = Def.ActorFrame {
	LoadFont("SGStage") .. {
		InitCommand=cmd(diffusecolor,color("#000000");playcommand,"Set");
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
		CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
		CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
		CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
		CurrentTraiP1ChangedMessageCommand=cmd(playcommand,"Set");
		CurrentTraiP2ChangedMessageCommand=cmd(playcommand,"Set");
		SetCommand=function(self)
			local curStage = GAMESTATE:GetCurrentStage();
			if GAMESTATE:IsEventMode() then
				self:settextf("EVENT");
			elseif GAMESTATE:IsExtraStage() then
				self:settextf("EXTRA");
			elseif GAMESTATE:IsExtraStage2() then
				self:settextf("ENCORE EXTRA");
			else
				local thed_stage= thified_curstage_index(false)
				self:settextf(thed_stage)
			end;
		end;
	};
};
return t