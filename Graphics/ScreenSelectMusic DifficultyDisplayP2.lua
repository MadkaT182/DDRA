local bIsCourseMode = GAMESTATE:IsCourseMode();

local t = Def.ActorFrame {
	Def.StepsDisplayList {
		Name="StepsDisplayListRow";
		CurrentSongChangedMessageCommand=function(self)
			self:stoptweening();
			self:visible(true);
			-- if CurSOSet() then self:visible(true);
			-- end;
		end;
		CurrentCourseChangedMessageCommand=cmd(playcommand,"CurrentSongChangedMessage";);
		CursorP2 = Def.ActorFrame {
			InitCommand=cmd(x,0;player,PLAYER_2);
			PlayerJoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_2 then
					self:visible(true);
				end;
			end;
			PlayerUnjoinedMessageCommand=function(self, params)
				if params.Player == PLAYER_2 then
					self:visible(false);
				end;
			end;
			LoadActor(THEME:GetPathG("_StepsDisplayListRow cursor", "p2"))..{
				CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"PositionCheck");
				CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"PositionCheck");
				PositionCheckCommand=function(self)
					self:stoptweening();
					if getenv("wheelstop") == 1 then
						if #GAMESTATE:GetHumanPlayers() > 1 then
							local p1Steps = "";
							local p2Steps = "";
							if GAMESTATE:GetCurrentSong() then
								p1Steps = GAMESTATE:GetCurrentSteps(PLAYER_1);
								p2Steps = GAMESTATE:GetCurrentSteps(PLAYER_2);
							elseif GAMESTATE:GetCurrentCourse() then
								p1Steps = GAMESTATE:GetCurrentTrail(PLAYER_1);
								p2Steps = GAMESTATE:GetCurrentTrail(PLAYER_2);
							end;
							if p1Steps and p2Steps then
								if p1Steps:GetDifficulty() == 'Difficulty_Edit' and p2Steps:GetDifficulty() == 'Difficulty_Edit' then
									if p1Steps:GetDescription() == p2Steps:GetDescription() then
										self:y(11);
									else self:y(0);
									end;
								else
									if p1Steps:GetDifficulty() == p2Steps:GetDifficulty() then
										self:y(11);
									else self:y(0);
									end;
								end;
							end;
						end;
					else self:y(0);
					end;
				end;
			};
		};
		CursorP1 = Def.ActorFrame {};
		CursorP1Frame = Def.Actor{};
		CursorP2Frame = Def.Actor{
			ChangeCommand=cmd(stoptweening;decelerate,0.05);
		};
	};
};

return t;

