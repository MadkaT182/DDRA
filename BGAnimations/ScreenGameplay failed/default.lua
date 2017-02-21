return Def.ActorFrame {

--Sound
LoadActor("close") .. {
	OnCommand=cmd(sleep,0.283;queuecommand,"Play");
	PlayCommand=cmd(play);
};

--Black BG
Def.Quad{
	OnCommand=cmd(Center;FullScreen;diffusecolor,Color.Black;diffusealpha,0;sleep,0.434;linear,0.033;diffusealpha,1;);
};

--White flash
LoadActor( "../_door/whiteflash" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomx,0;sleep,0.3;linear,0.134;zoomx,1;linear,0.099;zoom,3);
};

--Up side
--BG
LoadActor( "../_door/graybg" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-67;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_TOP+67;);
};
LoadActor( "../_door/grayshdw" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-67;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_TOP+67;);
};
LoadActor( "../_door/lines" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-67;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_TOP+67;);
};
LoadActor( "../_door/light" )..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-20;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_TOP+20;);
};

--Down Side
--BG
LoadActor( "../_door/graybg" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;zoomy,-1;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;);
};
LoadActor( "../_door/grayshdw" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;zoomy,-1;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;);
};
LoadActor( "../_door/lines" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;zoomy,-1;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;);
};
LoadActor( "../_door/light" )..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+20;zoomy,-1;linear,0.283;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-20;);
};

--Left
LoadActor( "failed" )..{
	InitCommand=cmd(x,SCREEN_LEFT-452;y,SCREEN_CENTER_Y;linear,0.234;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,1.466);

};
--Right
LoadActor( "failed" )..{
	InitCommand=cmd(x,SCREEN_RIGHT+452;y,SCREEN_CENTER_Y;linear,0.234;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);

};
--Glow
LoadActor( "failed" )..{
	InitCommand=cmd(diffusealpha,0;sleep,0.201;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1;zoomx,1.14;linear,0.016;zoomy,1.14;zoomx,1;linear,0.017;diffusealpha,0.25;linear,0.167;diffusealpha,0);

};

}