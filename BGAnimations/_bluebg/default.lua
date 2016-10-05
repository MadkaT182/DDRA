local t = Def.ActorFrame {};

t[#t+1] = LoadActor(THEME:GetPathB("","_door/backdrop"))..{
	InitCommand=cmd(FullScreen;Center);
};

--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/bluebg (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66);
	};
	LoadActor(THEME:GetPathB("","_door/bluebg (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1);
	};
}
--More Of THose Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/bluetopper (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66);
	};
	LoadActor(THEME:GetPathB("","_door/bluetopper (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1);
	};
}

--Lines
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_door/lines (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+66);
	};
	LoadActor(THEME:GetPathB("","_door/lines (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-66;zoomy,-1);
	};
};
--Glow
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	OnCommand=cmd(queuecommand,"Animate");
	AnimateCommand=cmd(diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,0.9;effectperiod,2.5);
	LoadActor(THEME:GetPathB("","_door/glow (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_TOP+115);
	};
	LoadActor(THEME:GetPathB("","_door/glow (doubleres).png"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-115;zoomy,-1);
	};
};

return t;
