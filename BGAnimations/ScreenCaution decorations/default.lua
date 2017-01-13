local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

--BGMiddle
t[#t+1] = LoadActor("bgmid")..{
	OnCommand=cmd(diffusealpha,0;Center;zoomy,0;sleep,0.8;diffusealpha,1;linear,0.066;zoom,1;linear,0.067;diffusealpha,0);
};

--Middle
t[#t+1] = LoadActor("middle")..{
	OnCommand=cmd(diffusealpha,0;Center;zoomy,0;sleep,0.8;diffusealpha,0.5;linear,0.066;zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-3);
	OffCommand=cmd(linear,0.134;zoomy,0);
};

--Text
t[#t+1] = LoadActor("text_"..lang)..{
	OnCommand=cmd(diffusealpha,0;Center;zoomy,0;sleep,0.8;diffusealpha,1;linear,0.066;zoom,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	OffCommand=cmd(linear,0.134;zoomy,0);
};

--Top
t[#t+1] = LoadActor("top")..{
	OnCommand=cmd(diffusealpha,0;zoomx,1.75;zoomy,0.75;sleep,0.734;diffusealpha,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-10;linear,0.066;zoom,1;addy,-4;linear,0.084;y,SCREEN_CENTER_Y-145);
	OffCommand=cmd(linear,0.084;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-10;sleep,0.05;zoomx,1.75;zoomy,0.75;diffusealpha,0;);
};

--Top glow
t[#t+1] = LoadActor("top")..{
	OnCommand=cmd(diffusealpha,0;sleep,0.884;diffusealpha,1;playcommand,"Animate");--queuecommand,"Animate";queuecommand,"Later");
	AnimateCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-145;zoomy,1;diffusealpha,.5;linear,1;zoomy,1.53;linear,.5;diffusealpha,0;queuecommand,"Later");
	LaterCommand=cmd(queuecommand, "Animate");
	OffCommand=cmd(stoptweening;diffusealpha,0);
};

--Bottom
t[#t+1] = LoadActor("bottom")..{
	OnCommand=cmd(diffusealpha,0;zoomx,1.75;zoomy,0.75;sleep,0.734;diffusealpha,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10;linear,0.066;zoom,1;addy,4;linear,0.084;y,SCREEN_CENTER_Y+139);
	OffCommand=cmd(linear,0.084;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+10;sleep,0.05;zoomx,1.75;zoomy,0.75;diffusealpha,0);
};

--Bottom glow
t[#t+1] = LoadActor("bottom")..{
	OnCommand=cmd(diffusealpha,0;sleep,0.884;diffusealpha,1;playcommand,"Animate");--queuecommand,"Animate";queuecommand,"Later");
	AnimateCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+139;zoomy,1;diffusealpha,.5;linear,1;zoomy,1.53;linear,.5;diffusealpha,0;queuecommand,"Later");
	LaterCommand=cmd(queuecommand, "Animate");
	OffCommand=cmd(stoptweening;diffusealpha,0);
};

--Caution
t[#t+1] = LoadActor("caution")..{
	OnCommand=cmd(diffusealpha,0;zoomx,1.75;zoomy,0.75;sleep,0.734;diffusealpha,1;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-8;linear,0.066;zoom,1;addy,-4;linear,0.084;y,SCREEN_CENTER_Y-143);
	OffCommand=cmd(linear,0.084;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-8;sleep,0.5;zoomx,1.75;zoomy,0.75;diffusealpha,0;);
};

return t
