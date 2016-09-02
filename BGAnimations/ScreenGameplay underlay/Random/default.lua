local t = Def.ActorFrame{}

local vidcount=1;
local num = math.random(0,vidcount);

t[#t+1] = LoadActor( "Char"..num )..{
InitCommand=cmd(draworder,1;Center;zoomto,SCREEN_WIDTH,SCREEN_HEIGHT;x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,1;decelerate,100;diffusealpha,1);
};

return t;