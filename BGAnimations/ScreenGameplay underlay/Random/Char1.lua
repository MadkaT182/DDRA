local t = Def.ActorFrame{}

t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(diffusealpha,0);
	};
};

return t;