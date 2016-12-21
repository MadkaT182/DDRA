local t = Def.ActorFrame{};

t[#t+1] = Def.ActorFrame {

	LoadActor("es/cr_rinon")..{
		InitCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X-25;y,SCREEN_CENTER_Y-2;sleep,1.767;diffusealpha,0.1;linear,1.5;addx,25;diffusealpha,1;linear,0.267;addx,4;diffusealpha,0.1;sleep,0;diffusealpha,0);
	};
	LoadActor("es/ring")..{
		InitCommand=cmd(Center;zoomx,-1;diffusealpha,0;sleep,2.334;diffusealpha,1;linear,0.566;rotationz,180;sleep,0.6;diffusealpha,0);
	};
	LoadActor("es/ring")..{
		InitCommand=cmd(Center;zoomx,-1;diffusealpha,0;sleep,2.334;diffusealpha,1;linear,0.566;rotationz,180;linear,0.6;rotationz,360;sleep,0;diffusealpha,0);
	};
	LoadActor("es/circles")..{
		InitCommand=cmd(zoom,2.736;Center;diffusealpha,0;sleep,2.2;diffusealpha,1;linear,0.134;zoom,1;sleep,1.266;diffusealpha,0);
	};
	LoadActor("es/searching-bg")..{
		InitCommand=cmd(zoomy,0;Center;sleep,2.367;linear,0.067;zoomy,1;sleep,1.066;linear,0.034;zoomy,0;);
	};
	LoadActor("es/searching-txt")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,2.434;diffusealpha,1;sleep,0.066;diffusealpha,0;sleep,0.167;diffusealpha,1;sleep,0.133;diffusealpha,0;sleep,0.167;diffusealpha,1;sleep,0.133;diffusealpha,0;sleep,0.167;diffusealpha,1;sleep,0.133;diffusealpha,0;sleep,0.067;diffusealpha,1;sleep,0.033;diffusealpha,0);
	};
	LoadActor("es/hs")..{
		InitCommand=cmd(zoom,1.096;Center;diffusealpha,0;sleep,3.734;diffusealpha,1;linear,0.1;zoom,1;linear,1.233;zoom,0.976;linear,0.2;rotationz,30;zoom,1.018;linear,0.267;zoom,1.174;sleep,0.033;zoom,0.945;sleep,0.033;diffusealpha,0;);
	};
	LoadActor("es/seg_circ")..{
		InitCommand=cmd(Center;diffusealpha,0;rotationz,21;sleep,3.667;diffusealpha,1;linear,1.267;rotationz,180;linear,0.566;zoom,2.012;rotationz,235;sleep,0.034;rotationz,205;linear,0.033;rotationz,210;linear,0.133;zoom,0;rotationz,21;);
	};
	--Triangles
	LoadActor("es/triangle")..{
		InitCommand=cmd(diffusealpha,0;Center;addy,128;sleep,3.7;diffusealpha,1;linear,0.217;addy,-114;sleep,0.183;linear,0.8;addy,-39;linear,0.2;addy,26;rotationz,90;sleep,0.3;linear,0.1;addx,111;linear,0.2;addx,-221;sleep,0;diffusealpha,0;);
	};
	LoadActor("es/triangle")..{
		InitCommand=cmd(diffusealpha,0;Center;zoomy,-1;addy,-128;sleep,3.7;diffusealpha,1;linear,0.217;addy,114;sleep,0.183;linear,0.8;addy,39;linear,0.2;addy,-24;rotationz,90;sleep,0.3;linear,0.1;addx,-111;linear,0.2;addx,221;sleep,0;diffusealpha,0;);
	};
	--HBars
	LoadActor("es/hline")..{
		InitCommand=cmd(Center;addx,-590;sleep,3.967;linear,0.1;addx,326;sleep,0.767;linear,0.1;addx,-90;linear,0.766;addx,-236;);
	};
	LoadActor("es/hline")..{
		InitCommand=cmd(Center;addx,590;sleep,3.967;linear,0.1;addx,-326;sleep,0.767;linear,0.1;addx,90;linear,0.766;addx,236;);
	};
	--Brackets
	LoadActor("es/sqbracket")..{
		InitCommand=cmd(diffusealpha,0;Center;zoom,0.345;addx,129;sleep,3.767;diffusealpha,1;linear,0.067;zoomy,1;zoomx,0.523;addx,112;sleep,0.3;linear,0.166;zoom,0.586;addx,-61;linear,0.3;zoom,1.08;addx,83;sleep,0.334;linear,0.2;zoom,1;addx,54;sleep,0.566;linear,0.1;zoom,0.358;zoomx,1.312;addx,-92;sleep,0;diffusealpha,0;);
	};
	LoadActor("es/sqbracket")..{
		InitCommand=cmd(diffusealpha,0;Center;zoom,-0.345;addx,-129;sleep,3.767;diffusealpha,1;linear,0.067;zoomy,1;zoomx,-0.523;addx,-112;sleep,0.3;linear,0.166;zoom,-0.586;addx,61;linear,0.3;zoom,-1.08;addx,-83;sleep,0.334;linear,0.2;zoom,-1;addx,-54;sleep,0.566;linear,0.1;zoom,-0.358;zoomx,-1.312;addx,92;sleep,0;diffusealpha,0;);
	};

	--BracketsPt2
	LoadActor("es/sqbracket")..{
		InitCommand=cmd(diffusealpha,0;Center;zoomx,.40;zoomy,0.086;addx,22;sleep,3.834;diffusealpha,1;linear,0.1;zoom,.506;addx,96;sleep,0.833;linear,0.2;zoom,0.777;zoomx,.55;addx,119;linear,0.166;zoom,0.098;zoomx,1;addx,-144;sleep,0;diffusealpha,0;);
	};
	LoadActor("es/sqbracket")..{
		InitCommand=cmd(diffusealpha,0;Center;zoomx,-.40;zoomy,0.086;addx,-22;sleep,3.834;diffusealpha,1;linear,0.1;zoom,-.506;addx,-96;sleep,0.833;linear,0.2;zoom,-0.777;zoomx,-.55;addx,-119;linear,0.166;zoom,-0.098;zoomx,-1;addx,144;sleep,0;diffusealpha,0;);
	};

	--Extra Savior BG
	LoadActor("es/esbg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoomy,1.05;zoomx,3.139;linear,0.034;zoom,1.5;linear,0.033;zoom,1.573;linear,0.033;zoom,2.174;linear,0.034;zoom,2.404;linear,0.2;zoom,1.5;sleep,0.5;linear,0.1;zoom,1;sleep,1;linear,0.066;zoomy,0;);
	};

	--Left
	LoadActor("es/extra_savior")..{
		OnCommand=cmd(x,SCREEN_LEFT-556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,1.767;linear,0.083;diffusealpha,0;zoomy,0);
	};
	--Right
	LoadActor("es/extra_savior")..{
		OnCommand=cmd(x,SCREEN_RIGHT+556;y,SCREEN_CENTER_Y;sleep,0.116;linear,0.217;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,1.767;linear,0.083;diffusealpha,0;zoomy,0);
	};
	--Glow
	LoadActor("es/extra_savior")..{
		OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.283;diffusealpha,0.5;zoom,1.5;linear,0.017;diffusealpha,1;linear,0.133;diffusealpha,0;zoom,2);
	};
};

return t;