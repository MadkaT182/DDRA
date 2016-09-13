--[[return Def.ActorFrame {
	LoadActor( "../ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y+1;glow,color("1,1,1,0");zoomy,0;zoomx,1.34;sleep,0.0000;accelerate,0.133;zoomy,0.807;zoomx,1;decelerate,0.066;zoomy,1.192;glow,color("1,1,1,0.5");sleep,0.016;accelerate,0.033;glow,color("1,1,1,0");zoomy,1);
		OnCommand=cmd(sleep,0.907;diffusealpha,0);
	};
}]]--

local t = Def.ActorFrame{}

t[#t+1] = Def.ActorFrame {
	--Left
	LoadActor( "../ready" )..{
		OnCommand=cmd(zoom,1.1;x,SCREEN_LEFT-556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;linear,0.2;zoom,1;sleep,1;linear,0.083;diffusealpha,0;zoomy,0);
	};
	--Right
	LoadActor( "../ready" )..{
		OnCommand=cmd(zoom,1.1;x,SCREEN_RIGHT+556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;linear,0.2;zoom,1;sleep,1;linear,0.083;diffusealpha,0;zoomy,0);
	};
	--Glow
	LoadActor( "../ready" )..{
		OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.283;diffusealpha,0.5;zoom,1.05;linear,0.017;diffusealpha,1;linear,0.133;diffusealpha,0;zoom,1.1);
	};
};

return t
