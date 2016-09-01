local t = Def.ActorFrame{}

t[#t+1] = StandardDecorationFromFileOptional("StageFrame","StageFrame");

t[#t+1] = LoadActor("../ScreenGameplay Danger");

t[#t+1] = StandardDecorationFromFile("SongInformation","SongInformation");

for player in ivalues(GAMESTATE:GetHumanPlayers()) do

	t[#t+1] = LoadActor( "OptionIcons/OptionIcons.lua", player )..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and SCREEN_LEFT+108 or SCREEN_RIGHT-84)
				:y(_screen.cy+165)
				:draworder(1)
		end
	}
end

t[#t+1] = StandardDecorationFromFile("StageDisplay","StageDisplay");
t[#t+1] = StandardDecorationFromFile("ScoreFrame","ScoreFrame")

--Scoring
-- local customscore=GetCustomScoreMode();
--  local cscore="SuperNOVA2";
--  if not GAMESTATE:IsCourseMode() then
--  local stepcnt={0,0}
--  t[#t+1] = Def.Actor{
--      JudgmentMessageCommand = function(self, params)
--          if params.TapNoteScore and
--           params.TapNoteScore ~= 'TapNoteScore_AvoidMine' and
--           params.TapNoteScore ~= 'TapNoteScore_HitMine' and
--           params.TapNoteScore ~= 'TapNoteScore_CheckpointMiss' and
--           params.TapNoteScore ~= 'TapNoteScore_CheckpointHit' and
--           params.TapNoteScore ~= 'TapNoteScore_None'
--          then
--              if customscore=="old" then
--                  Scoring[scoreType](params, 
--                      STATSMAN:GetCurStageStats():GetPlayerStageStats(params.Player))
--              elseif customscore=="5b2" then
--                  local pn=((params.Player==PLAYER_1) and 1 or 2);
--                  stepcnt[pn]=stepcnt[pn]+1;
--                  CustomScore_SM5b2(params,cscore,GAMESTATE:GetCurrentSteps(params.Player),stepcnt[pn]);
--              elseif customscore=="5b1" then
--                  local pn=((params.Player==PLAYER_1) and 1 or 2);
--                  stepcnt[pn]=stepcnt[pn]+1;
--                  CustomScore_SM5b1(params,cscore,GAMESTATE:GetCurrentSteps(params.Player),stepcnt[pn]);
--              else
--                  local pn=((params.Player==PLAYER_1) and 1 or 2);
--                  stepcnt[pn]=stepcnt[pn]+1;
--                  CustomScore_SM5a2(params,cscore,GAMESTATE:GetCurrentSteps(params.Player),stepcnt[pn]);
--              end;
--          end
--      end;
--      InitCommand=function(self)
--          if customscore=="non" then
--              CustomScore_SM5a2_Init();
--          end;
--      end;
--      OffCommand=function(self)
--          if customscore=="non" then
--              CustomScore_SM5a2_Out();
--          end;
--      end;
--  };
--  end;

return t