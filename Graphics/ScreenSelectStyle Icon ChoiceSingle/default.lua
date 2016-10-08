local t = Def.ActorFrame{
  LoadActor("Info")..{
    InitCommand=cmd(xy,SCREEN_CENTER_X+240,SCREEN_CENTER_Y+4);
    OnCommand=function(self)
      if GAMESTATE:GetNumPlayersEnabled() == 2 then
        self:zoomy(0)
      else
        self:zoomy(0):sleep(0.1):linear(0.2):
        diffusealpha(1):zoomy(1)
      end;
    end;
    GainFocusCommand=cmd(stoptweening;sleep,0.1;linear,0.2;zoomy,1;diffusealpha,1);
    LoseFocusCommand=cmd(stoptweening;linear,0.2;zoomy,0);
    OffCommand=cmd(linear,0.3;zoom,0;diffusealpha,0;);
  };
}

return t
