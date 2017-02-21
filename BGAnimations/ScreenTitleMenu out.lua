local t = Def.ActorFrame{};

--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor("_swoosh") .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};
t[#t+1] = LoadActor(THEME:GetPathB("","_door/backdrop"))..{
	InitCommand=cmd(FullScreen;Center;diffusealpha,0);
	OnCommand=cmd(faderight,1;fadeleft,1;sleep,0.3;linear,0.1;diffusealpha,1;faderight,0;fadeleft,0);
};

t[#t+1] = Def.ActorFrame{
  Def.Quad{
    InitCommand=cmd(diffusealpha,0);
    OnCommand=cmd(sleep,1.5);
  };
}

t[#t+1] = Def.ActorFrame{
  Def.Quad{
    InitCommand=cmd(halign,1;x,SCREEN_CENTER_X+80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(faderight,0.2;sleep,0.3;linear,0.1;diffusealpha,0.75;linear,0.3;addx,-(SCREEN_CENTER_X-150);diffusealpha,0;);
  };
  Def.Quad{
    InitCommand=cmd(halign,0;x,SCREEN_CENTER_X-80;CenterY;FullScreen;diffuse,color("#00f6ff");diffusealpha,0);
    OnCommand=cmd(fadeleft,0.2;sleep,0.3;linear,0.1;diffusealpha,0.75;linear,0.3;addx,(SCREEN_CENTER_X+150);diffusealpha,0;);
  };
}

--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/bluebg (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66;diffusealpha,0);
    OnCommand=cmd(addy,-66;sleep,0.2;linear,0.1;addy,66;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/bluebg (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1;diffusealpha,0);
    OnCommand=cmd(addy,66;sleep,0.2;linear,0.1;addy,-66;diffusealpha,1;);
	};
}
--More Of THose Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/bluetopper (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66;diffusealpha,0);
    OnCommand=cmd(addy,-66;sleep,0.2;linear,0.1;addy,66;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/bluetopper (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1;diffusealpha,0);
    OnCommand=cmd(addy,66;sleep,0.2;linear,0.1;addy,-66;diffusealpha,1;);
	};
}

--Lines
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/lines (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66;diffusealpha,0);
		OnCommand=cmd(addy,-66;sleep,0.2;linear,0.1;addy,66;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/lines (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1;diffusealpha,0);
    OnCommand=cmd(addy,66;sleep,0.2;linear,0.1;addy,-66;diffusealpha,1;);
	};
};
--Lights
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/light"))..{
		InitCommand=cmd(y,SCREEN_TOP+20;diffusealpha,0);
		OnCommand=cmd(addy,-20;sleep,0.2;linear,0.1;addy,20;diffusealpha,1);
	};
	LoadActor(THEME:GetPathB("","_door/light"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-20;zoomy,-1;diffusealpha,0);
		OnCommand=cmd(addy,20;sleep,0.2;linear,0.1;addy,-20;diffusealpha,1);
	};
};
--Glow
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX;diffusealpha,0;queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,2.5);
	LoadActor(THEME:GetPathB("","_door/glow (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+115);
		OnCommand=cmd(addy,-115;sleep,0.2;linear,0.1;addy,115;diffusealpha,1;);
	};
	LoadActor(THEME:GetPathB("","_door/glow (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-115;zoomy,-1;diffusealpha,0);
		OnCommand=cmd(addy,115;sleep,0.2;linear,0.1;addy,-115;diffusealpha,1;);
	};
};

return t
