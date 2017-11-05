local t = Def.ActorFrame{};

if GAMESTATE:GetCoinMode() == 'CoinMode_Pay' then

else
	-- t[#t+1] = Def.ActorFrame{
	-- 	Def.Quad{
	-- 		InitCommand=cmd(FullScreen;zoomto,SCREEN_WIDTH,80;diffuse,color("0,0,0,0"));
	-- 	};
	-- 	LoadFont("Common Normal")..{
	-- 		Text=ScreenString("Saving Profiles");
	-- 		InitCommand=cmd(Center;diffuse,color("1,1,1,1");shadowlength,1);
	-- 		OffCommand=cmd(linear,0.15;diffusealpha,0);
	-- 	};
	-- };
end;

t[#t+1] = Def.Actor {
	BeginCommand=function(self)
		if SCREENMAN:GetTopScreen():HaveProfileToSave() then self:sleep(1); end;
		self:queuecommand("Load");
	end;
	LoadCommand=function() SCREENMAN:GetTopScreen():Continue(); end;
};

return t;