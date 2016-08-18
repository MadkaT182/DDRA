local t = Def.ActorFrame{}

if not GAMESTATE:IsDemonstration() then

--Sound
	t[#t+1] = Def.ActorFrame {
		LoadActor("../_swoosh") .. {
			OnCommand=cmd(play);
		};
	};

--Sidebars
	t[#t+1] = Def.ActorFrame {
		LoadActor("../ScreenStageInformation decorations/sidebar") .. {
			OnCommand=cmd(zoom,0.75;x,SCREEN_RIGHT-68;y,SCREEN_CENTER_Y-18;linear,0.083;zoom,1;x,SCREEN_RIGHT+82;y,SCREEN_CENTER_Y-12;);
		};
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor("../ScreenStageInformation decorations/sidebar") .. {
			OnCommand=cmd(zoom,0.75;x,SCREEN_LEFT+68;y,SCREEN_CENTER_Y-18;zoomx,-0.75;linear,0.083;zoom,1;x,SCREEN_LEFT-82;y,SCREEN_CENTER_Y-12;zoomx,-1);
		};
	};

	--Jacket
	t[#t+1] = Def.ActorFrame {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;draworder,1);
		Def.Sprite {
			OnCommand=function (self)
				local course = GAMESTATE:GetCurrentCourse();
				if GAMESTATE:IsCourseMode() then
					if course:GetBackgroundPath() then
						self:Load(course:GetBackgroundPath())
						self:setsize(300,300);
					else
						self:Load(THEME:GetPathG("", "Common fallback jacket"));
						self:setsize(300,300);
					end;
				else
				local song = GAMESTATE:GetCurrentSong();
					if song then
						if song:HasJacket() then
							self:diffusealpha(1);
							self:LoadBackground(song:GetJacketPath());
							self:setsize(300,300);
						elseif song:HasBackground() then
							self:diffusealpha(1);
							self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
							self:setsize(300,300);
						else
							self:Load(THEME:GetPathG("","Common fallback jacket"));
							self:setsize(300,300);
						end;
					else
						self:diffusealpha(0);
				end;
				self:sleep(3.167);
				self:linear(0.8);
				self:zoom(1.543);
				self:diffusealpha(0);
			end;
			end;
		};
	};

end

return t