local t = Def.ActorFrame{};

t[#t+1] = LoadActor( THEME:GetPathB("ScreenEvaluation","decorations") );

--Jacket
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_TOP+109;draworder,1);
	Def.Sprite {
		OnCommand=function (self)
			local course = GAMESTATE:GetCurrentCourse();
			if GAMESTATE:IsCourseMode() then
				if course:GetBackgroundPath() then
					self:Load(course:GetBackgroundPath())
					self:setsize(144,144);
				else
					self:Load(THEME:GetPathG("", "Common fallback jacket"));
					self:setsize(144,144);
				end;
			else
			local song = GAMESTATE:GetCurrentSong();
				if song then
					if song:HasJacket() then
						self:diffusealpha(1);
						self:LoadBackground(song:GetJacketPath());
						self:setsize(144,144);
					elseif song:HasBackground() then
						self:diffusealpha(1);
						self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
						self:setsize(144,144);
					else
						self:Load(THEME:GetPathG("","Common fallback jacket"));
						self:setsize(144,144);
					end;
				else
					self:diffusealpha(0);
			end;
		end;
		end;
	OffCommand=cmd(sleep,0.2;bouncebegin,0.175;zoomy,0);
	};
};

--Song Info
--Song Title
t[#t+1] = LoadFont("_arial black 20px")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+193);
	OffCommand=cmd();
	OnCommand=function(self)
		local song = GAMESTATE:GetCurrentSong();
		local course = GAMESTATE:GetCurrentCourse();
		if song or course then
			local tit="";
			if GAMESTATE:IsCourseMode() then
				song=GAMESTATE:GetCurrentCourse();
				tit=song:GetDisplayFullTitle();
			else
				song=GAMESTATE:GetCurrentSong();
				tit=song:GetDisplayMainTitle();
			end;
			self:diffusealpha(1);
			self:maxwidth(220);
			self:settext(tit);
		else
			self:diffusealpha(0);
		end;
	end;
};

--Artist Line
if not GAMESTATE:IsCourseMode() then
	t[#t+1] = LoadFont("_arial black 20px")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+206);
		OffCommand=cmd();
		OnCommand=function(self)
		local song = GAMESTATE:GetCurrentSong();
		local course = GAMESTATE:GetCurrentCourse();
			if song or course then
				local tit="";
				if GAMESTATE:IsCourseMode() then
					song=GAMESTATE:GetCurrentCourse();
					tit=song:GetDisplayFullTitle();
				else
					song=GAMESTATE:GetCurrentSong();
					tit=song:GetDisplayArtist();
				end;
				self:diffusealpha(1);
				self:maxwidth(220);
				self:settext(tit);
			else
				self:diffusealpha(0);
			end;
		end;
	};
end;

return t