local t = Def.ActorFrame {};

--ScoreBG
t[#t+1] = LoadActor("../../Graphics/ScreenGameplay ScoreFrame")..{
	OnCommand=cmd(y,SCREEN_BOTTOM-46;draworder,1);
	OffCommand=cmd();
};

--JacketBG
t[#t+1] = LoadActor("cdbg")..{
	OnCommand=cmd(x,SCREEN_RIGHT-171;y,SCREEN_CENTER_Y+24;draworder,1);
	OffCommand=cmd();
};

--Jacket
t[#t+1] = Def.ActorFrame {
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

--Song Information
t[#t+1] = LoadFont("_arial_black 18px") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		-- if vSong then
			sText = vSong:GetDisplayFullTitle()
		-- end
		-- if vCourse then
		-- 	sText = vSong:GetDisplayFullTitle()
		-- end
		self:settext( sText );
		self:horizalign(center);
		self:playcommand( "On" );
		self:maxwidth(220);
		self:x(SCREEN_RIGHT-171);
		self:y(SCREEN_CENTER_Y+129);
		self:draworder(1);
	end;
}

--Artist Information
t[#t+1] = LoadFont("_arial_blk12px") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		-- if vSong then
			sText = vSong:GetDisplayArtist()
		-- end
		-- if vCourse then
		-- 	sText = vSong:GetDisplayArtist()
		-- end
		self:settext( sText );
		self:horizalign(center);
		self:playcommand( "On" );
		self:maxwidth(220);
		self:x(SCREEN_RIGHT-171);
		self:y(SCREEN_CENTER_Y+145);
		self:draworder(1);
	end;
}

return t