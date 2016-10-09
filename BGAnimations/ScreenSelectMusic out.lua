local t = Def.ActorFrame{
	Def.Quad{
		InitCommand=cmd(FullScreen);
		OnCommand=cmd(diffusealpha,0;sleep,0);
	};
}

CautionToMusic = 0;

return t;
