return Def.ActorFrame {
	LoadActor(THEME:GetPathG("ScreenGameplay", "ScoreFrame"))..{
		OnCommand=cmd(y,SCREEN_BOTTOM-38;draworder,1);
	};
	LoadActor("cdbg")..{
		OnCommand=cmd(x,SCREEN_RIGHT-171;y,SCREEN_CENTER_Y+24;draworder,1);
	};
	Def.ActorFrame {
		InitCommand=cmd(x,SCREEN_RIGHT-171;y,SCREEN_CENTER_Y+11;draworder,1);
		Def.Sprite {
			OnCommand=function (self)
				local course = GAMESTATE:GetCurrentCourse();
				if GAMESTATE:IsCourseMode() then
					if course:GetBackgroundPath() then
						self:Load(course:GetBackgroundPath())
						self:setsize(205,205);
					else
						self:Load(THEME:GetPathG("", "Common fallback jacket"));
						self:setsize(205,205);
					end;
				else
				local song = GAMESTATE:GetCurrentSong();
					if song then
						if song:HasJacket() then
							self:diffusealpha(1);
							self:LoadBackground(song:GetJacketPath());
							self:setsize(205,205);
						elseif song:HasBackground() then
							self:diffusealpha(1);
							self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
							self:setsize(205,205);
						else
							self:Load(THEME:GetPathG("","Common fallback jacket"));
							self:setsize(205,205);
						end;
					else
						self:diffusealpha(0);
				end;
			end;
			end;
		OffCommand=cmd(sleep,0.2;bouncebegin,0.175;zoomy,0);
		};
	};
	LoadFont("_arial_black 18px") .. {
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local vSong = GAMESTATE:GetCurrentSong();
			self:settext(vSong:GetDisplayFullTitle());
			self:horizalign(center);
			self:maxwidth(220);
			self:x(SCREEN_RIGHT-171);
			self:y(SCREEN_CENTER_Y+129);
			self:draworder(1);
		end;
	};
	LoadFont("_arial_blk12px") .. {
		CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
		RefreshCommand=function(self)
			local vSong = GAMESTATE:GetCurrentSong();
			self:settext(vSong:GetDisplayArtist());
			self:horizalign(center);
			self:maxwidth(220);
			self:x(SCREEN_RIGHT-171);
			self:y(SCREEN_CENTER_Y+145);
			self:draworder(1);
		end;
	};
};