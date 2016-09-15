local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};
if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
	sStage = "Stage_Final";
else
	sStage = sStage;
end;

if GAMESTATE:IsEventMode() or (GAMESTATE:GetPlayMode()=='PlayMode_Oni') or (GAMESTATE:GetPlayMode()=='PlayMode_Nonstop') then
	SOUND:PlayAnnouncer("stage event")
elseif GAMESTATE:GetCurrentStage() == 'Stage_1st' then
	SOUND:PlayAnnouncer("stage 1")
elseif GAMESTATE:GetCurrentStage() == 'Stage_2nd' then
	SOUND:PlayAnnouncer("stage 2")
elseif GAMESTATE:GetCurrentStage() == 'Stage_3rd' and (PREFSMAN:GetPreference("SongsPerPlay") == 5 or PREFSMAN:GetPreference("SongsPerPlay") == 4) then
	SOUND:PlayAnnouncer("stage 3")
elseif GAMESTATE:GetCurrentStage() == 'Stage_4th' then
	SOUND:PlayAnnouncer("stage 4")
elseif GAMESTATE:GetCurrentStage() == 'Stage_5th' then
	SOUND:PlayAnnouncer("stage 5")
elseif GAMESTATE:GetCurrentStage() == 'Stage_6th' then
	SOUND:PlayAnnouncer("stage 6")
elseif GAMESTATE:GetCurrentStage() == 'Stage_Final' then
	SOUND:PlayAnnouncer("stage final")
elseif GAMESTATE:IsExtraStage() then
	SOUND:PlayAnnouncer("stage extra1")
elseif GAMESTATE:IsExtraStage2() then
	SOUND:PlayAnnouncer("stage extra2")
end;

local t = Def.ActorFrame{};

return t;