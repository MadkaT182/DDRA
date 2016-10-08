local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame{
  OnCommand=cmd(diffuse,Color("White");zoom,1.5;queuecommand,"Set");
  CurrentSongChangedMessageCommand=cmd(queuecommand,"Set");
  CurrentStepsP2ChangedMessageCommand=cmd(queuecommand,"Set");
  CurrentTrailP2ChangedMessageCommand=cmd(queuecommand,"Set");
  Def.BitmapText{
    Name="Stream";
    Font="_russell square 16px";
    InitCommand=cmd(y,-55;strokecolor,color("#000000"));
    SetCommand=function(self)
      local song = GAMESTATE:GetCurrentSong()
      if song then
        local cSteps = GAMESTATE:GetCurrentSteps(PLAYER_2);
        local SValue = cSteps:GetRadarValues(PLAYER_2):GetValue('RadarCategory_Stream');
        local StreamDDRNum = math.round(SValue*100);
          self:settext(StreamDDRNum);
      end;
    end;
  };
  Def.BitmapText{
    Name="Chaos";
    Font="_russell square 16px";
    InitCommand=cmd(y,-20;x,95;halign,1;strokecolor,color("#000000"));
    SetCommand=function(self)
      local song = GAMESTATE:GetCurrentSong()
      if song then
        local cSteps = GAMESTATE:GetCurrentSteps(PLAYER_2);
        local CValue = cSteps:GetRadarValues(PLAYER_2):GetValue('RadarCategory_Chaos');
        local ChaosDDRNum = math.round(CValue*100);
        self:settext(ChaosDDRNum);
      end;
    end;
  };
  Def.BitmapText{
    Name="Voltage";
    Font="_russell square 16px";
    InitCommand=cmd(y,-20;x,-50;halign,1;strokecolor,color("#000000"));
    SetCommand=function(self)
      local song = GAMESTATE:GetCurrentSong()
      if song then
        local cSteps = GAMESTATE:GetCurrentSteps(PLAYER_2);
        local VValue = cSteps:GetRadarValues(PLAYER_2):GetValue('RadarCategory_Voltage');
        local VoltageDDRNum = math.round(VValue*100);
        self:settext(VoltageDDRNum);
      end;
    end;
  };
  Def.BitmapText{
    Name="Freeze";
    Font="_russell square 16px";
    InitCommand=cmd(y,50;x,85;halign,1;strokecolor,color("#000000"));
    SetCommand=function(self)
      local song = GAMESTATE:GetCurrentSong()
      if song then
        local cSteps = GAMESTATE:GetCurrentSteps(PLAYER_2);
        local FValue = cSteps:GetRadarValues(PLAYER_2):GetValue('RadarCategory_Freeze');
        local FreezeDDRNum = math.round(FValue*100);
        self:settext(FreezeDDRNum);
      end;
    end;
  };
  Def.BitmapText{
    Name="Air";
    Font="_russell square 16px";
    InitCommand=cmd(y,50;x,-40;halign,1;strokecolor,color("#000000"));
    SetCommand=function(self)
      local song = GAMESTATE:GetCurrentSong()
      if song then
        local cSteps = GAMESTATE:GetCurrentSteps(PLAYER_2);
        local AValue = cSteps:GetRadarValues(PLAYER_2):GetValue('RadarCategory_Air');
        local AirDDRNum = math.round(AValue*100);
        self:settext(AirDDRNum);
      end;
    end;
  };
};
return t;
