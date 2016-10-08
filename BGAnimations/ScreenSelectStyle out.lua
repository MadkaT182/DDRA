local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(FullScreen);
		OnCommand=cmd(diffusealpha,0;sleep,0.75);
	};
}

t[#t+1] = LoadActor(THEME:GetPathS("","_swoosh_out"))..{
  OnCommand=cmd(queuecommand,"Play");
  PlayCommand=cmd(play);
};

return t
