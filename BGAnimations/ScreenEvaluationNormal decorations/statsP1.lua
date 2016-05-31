local t = Def.ActorFrame {};

local Combo = 	STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):MaxCombo();

local Marvelous = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W1");
local Perfect = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W2");
local Great = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W3");
local Good = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W4");
local Ok = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetHoldNoteScores("HoldNoteScore_Held");
local Miss = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_Miss") + STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetTapNoteScores("TapNoteScore_W5");

local EXScore = (Marvelous * 3) + (Perfect * 2) + Great + (Ok * 3);

local Score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore();

--Max Combo--
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,1;draworder,6;y,SCREEN_CENTER_Y-227;horizalign,right);
	OnCommand=function(self)
		self:settextf(Combo);
	end;
};
--Marvelous--
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,0.72;draworder,5;y,SCREEN_CENTER_Y-206;horizalign,right);
	OnCommand=function(self)
		self:settextf(Marvelous);
		self:diffuse(color("#000000"));
	end;
};
--Perfect--
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,0.72;draworder,5;y,SCREEN_CENTER_Y-186;horizalign,right);
	OnCommand=function(self)
		self:settextf(Perfect);
		self:diffuse(color("#000000"));
	end;
};
--Great--
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,0.72;draworder,5;y,SCREEN_CENTER_Y-166;horizalign,right);
	OnCommand=function(self)
		self:settextf(Great);
		self:diffuse(color("#000000"));
	end;
};
--Good--
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,0.72;draworder,5;y,SCREEN_CENTER_Y-146;horizalign,right);
	OnCommand=function(self)
		self:settextf(Good);
		self:diffuse(color("#000000"));
	end;
};
--Ok--
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,0.72;draworder,5;y,SCREEN_CENTER_Y-126;horizalign,right);
	OnCommand=function(self)
		self:settextf(Ok);
		self:diffuse(color("#000000"));
	end;
};
--Miss--(Almost+Miss)
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,0.72;draworder,5;y,SCREEN_CENTER_Y-106;horizalign,right);
	OnCommand=function(self)
		self:settextf(Miss);
		self:diffuse(color("#000000"));
	end;
};
--EX Score--
t[#t+1] = LoadFont("Common Normal")..{
	InitCommand=cmd(player,PLAYER_1;zoom,1;draworder,6;y,SCREEN_CENTER_Y-82;horizalign,right);
	OnCommand=function(self)
		self:settextf(EXScore);
	end;
};

return t;
