local t = Def.ActorFrame{};

if GAMESTATE:IsEventMode() then

elseif GAMESTATE:GetCurrentStage() == "Stage_Final" then
	t[#t+1] = LoadActor("stg_fin")..{
		OnCommand=cmd();
		OffCommand=cmd();
	};
elseif GAMESTATE:IsExtraStage() then
	t[#t+1] = LoadActor("stg_extr")..{
		OnCommand=cmd();
		OffCommand=cmd();
	};
elseif GAMESTATE:IsExtraStage2() then
	t[#t+1] = LoadActor("stg_ext2")..{
		OnCommand=cmd();
		OffCommand=cmd();
	};
else

	local ordinal = "th";

	if GAMESTATE:GetCurrentStageIndex() == 1 then
		ordinal ="st";
	elseif GAMESTATE:GetCurrentStageIndex() == 2 then
		ordinal ="nd";
	elseif GAMESTATE:GetCurrentStageIndex() == 3 then
		ordinal ="rd";
	end

	--Suffix
	t[#t+1] = LoadActor("_"..ordinal)..{
		InitCommand=cmd(addx,-50);
		OnCommand=cmd();
		OffCommand=cmd();
	};

	--Number
	t[#t+1] = LoadFont("_impact 18px")..{
		InitCommand=cmd(diffusecolor,color('#FFFF00');addx,-65;addy,-8);
		OffCommand=cmd();
		OnCommand=function(self)
		self:settext(math.min( 6, GAMESTATE:GetCurrentStageIndex() ));
		end;
	};

	--Stage
	t[#t+1] = LoadActor("_post_title")..{
		OnCommand=cmd();
		OffCommand=cmd();
	};

end

return t