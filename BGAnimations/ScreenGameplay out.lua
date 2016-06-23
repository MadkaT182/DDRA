local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor("_white") .. {
		OnCommand=cmd(diffusealpha,0;sleep,4);
	};
 };

return t;