return Def.ActorFrame {
	LoadActor( "bg" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+18;);
		OnCommand=cmd(addy,-32;sleep,0.2;decelerate,0.0833;addy,32);
		OffCommand=cmd(finishtweening;sleep,0.2;decelerate,0.0833;addy,-32)
	};
}
