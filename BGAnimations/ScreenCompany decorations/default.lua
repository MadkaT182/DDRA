return Def.ActorFrame {
	LoadActor( "bgm" )..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	LoadActor( "../_white" )..{
		InitCommand=cmd(FullScreen);
	};
	LoadActor( "konami" )..{
		InitCommand=cmd(Center;sleep,2.37;decelerate,0.3;diffusealpha,0);
	};
	LoadActor( "bemani" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,2.7;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
	};
	LoadActor( "eamuse" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,5.4;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
	};
	LoadActor( "rsa" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,8.1;decelerate,0.3;diffusealpha,1;sleep,2;decelerate,0.3;diffusealpha,0);
	};
	LoadActor( "credita" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,10.8;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "creditb" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,11.83;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "creditc" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,12.9;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "creditd" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,13.93;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "credite" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,15;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "creditf" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,16.03;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "creditg" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,17.1;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "credith" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,18.13;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "crediti" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,19.2;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
	LoadActor( "creditj" )..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,20.23;decelerate,0.166;diffusealpha,1;sleep,0.66;decelerate,0.166;diffusealpha,0);
	};
}