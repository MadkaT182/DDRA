return Def.ActorFrame {
	LoadActor( "../go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X+3;y,SCREEN_CENTER_Y-1;glow,color("1,1,1,0");zoomy,0;zoomx,1.34;accelerate,0.133;zoomy,0.807;zoomx,1;decelerate,0.066;zoomy,1.192;glow,color("1,1,1,0.5");sleep,0.016;accelerate,0.033;glow,color("1,1,1,0");zoomy,1;sleep,2.078;decelerate,0.132;zoomy,0;zoomx,1.14,diffusealpha,0);
		OnCommand=cmd(sleep, 1.5; diffusealpha,0);
	};
}