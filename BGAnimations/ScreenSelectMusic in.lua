local t = Def.ActorFrame{};

--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor("_swoosh") .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};


t[#t+1] = LoadActor(THEME:GetPathB("","_door/backdrop"))..{
	InitCommand=cmd(FullScreen;Center;diffusealpha,1);
	OnCommand=cmd(faderight,0;fadeleft,0;sleep,0.2;linear,0.1;diffusealpha,0;faderight,1;fadeleft,1);
};

t[#t+1] = Def.ActorFrame{
  Def.Quad{
    InitCommand=cmd(halign,1;x,SCREEN_CENTER_X+80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(faderight,0.2;sleep,0.2;linear,0.1;diffusealpha,0.75;linear,0.3;addx,-(SCREEN_CENTER_X-150);diffusealpha,0;);
  };
  Def.Quad{
    InitCommand=cmd(halign,0;x,SCREEN_CENTER_X-80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(fadeleft,0.2;sleep,0.2;linear,0.1;diffusealpha,0.75;linear,0.3;addx,(SCREEN_CENTER_X+150);diffusealpha,0;);
  };
}

--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/bluebg (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66);
    OnCommand=cmd(sleep,0.4;linear,0.2;addy,-66;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/bluebg (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1);
    OnCommand=cmd(sleep,0.4;linear,0.2;addy,66;diffusealpha,0;);
	};
}
--More Of THose Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/bluetopper (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66);
    OnCommand=cmd(sleep,0.4;linear,0.2;addy,-66;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/bluetopper (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1);
    OnCommand=cmd(sleep,0.4;linear,0.2;addy,66;diffusealpha,0;);
	};
}

--Lines
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/lines (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-66;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/lines (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1);
    OnCommand=cmd(sleep,0.4;linear,0.2;addy,66;diffusealpha,0;);
	};
};
--Glow
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,2.5);
	LoadActor(THEME:GetPathB("","_door/glow (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+115);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,-115;diffusealpha,0;);
	};
	LoadActor(THEME:GetPathB("","_door/glow (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-115;zoomy,-1);
		OnCommand=cmd(sleep,0.4;linear,0.2;addy,115;diffusealpha,0;);
	};
};

return t
