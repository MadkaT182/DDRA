local t = Def.ActorFrame{}

local vidcount=1;
local ext="";
local num = math.random(0,vidcount);

t[#t+1] = LoadActor( "Char"..num..ext )..{
InitCommand=cmd(Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1;decelerate,100;diffusealpha,1);
};

return t;