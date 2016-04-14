return Def.ActorFrame {

--Sound
LoadActor( "bgm" )..{
	OnCommand=cmd(play);
	OffCommand=cmd(stop);
};

--WhiteBG
LoadActor( "../_white" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomtoheight,SCREEN_HEIGHT;zoomtowidth,SCREEN_WIDTH);
};

--Konami Logo
LoadActor( "konami" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,2.37;decelerate,0.3;diffusealpha,0);
};

--Bemani Logo
LoadActor( "bemani" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,2.7;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
};

--EAmusement Logo
LoadActor( "eamuse" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,5.4;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
};

--RSA Logo
LoadActor( "rsa" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,8.1;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
};

--Credits 1
LoadActor( "credita" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,10.8;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 2
LoadActor( "creditb" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,11.83;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 3
LoadActor( "creditc" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,12.9;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 4
LoadActor( "creditd" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,13.93;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 5
LoadActor( "credite" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,15;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 6
LoadActor( "creditf" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,16.03;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 7
LoadActor( "creditg" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,17.1;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 8
LoadActor( "credith" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,18.13;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 9
LoadActor( "crediti" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,19.2;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

--Credits 10
LoadActor( "creditj" )..{
	InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,20.23;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
};

}