local t = Def.ActorFrame{
  LoadActor("Info")..{
    InitCommand=cmd(xy,SCREEN_CENTER_X+240,SCREEN_CENTER_Y+4);
    OnCommand=function(self)
      self:zoomy(0)
    end;
    GainFocusCommand=cmd(stoptweening;sleep,0.1;linear,0.2;zoomy,1;diffusealpha,1;sleep,1;queuecommand,"Play");
    LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomy,0;diffusealpha,0);
    OffCommand=cmd(linear,0.3;zoom,0;diffusealpha,0;);
    PlayCommand=function(self)
      if self:GetVisible() then
      SOUND:PlayAnnouncer( "select style comment double" )
      end;
    end;
  };
}

return t
