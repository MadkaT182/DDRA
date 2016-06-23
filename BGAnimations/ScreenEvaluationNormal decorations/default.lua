local t = Def.ActorFrame{};

t[#t+1] = LoadActor( THEME:GetPathB("ScreenEvaluation","decorations") );

--Screen Title
t[#t+1] = LoadActor("_pre_title")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-66;y,SCREEN_TOP+19);
	OffCommand=cmd();
};

t[#t+1] = LoadActor("stagen")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+77;y,SCREEN_TOP+19);
	OffCommand=cmd();
};

--Song Info BG
t[#t+1] = LoadActor("_songinfobg")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-39);
	OffCommand=cmd();
};

--Jacket Frame
t[#t+1] = Def.Quad{
	OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_TOP+109;zoomto,150,150;diffusecolor,color("#000000"));
	OffCommand=cmd();
};

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

--Song Information
t[#t+1] = LoadFont("_arial_black 18px")..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+194);
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
			self:maxwidth(170);
			self:settext(tit);
		else
			self:diffusealpha(0);
		end;
	end;
};

--Artist Information
if not GAMESTATE:IsCourseMode() then
	t[#t+1] = LoadFont("_arial_blk12px")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+209);
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
				self:maxwidth(170);
				self:settext(tit);
			else
				self:diffusealpha(0);
			end;
		end;
	};
end;

--Grade
t[#t+1] = LoadActor("grade")..{
	InitCommand=cmd(diffusealpha,1;draworder,11;addy,-15-10-40-15);
	OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
};

--Style text
t[#t+1] = LoadFont("_itc avant garde std bk 20px")..{
	InitCommand=cmd(x,SCREEN_CENTER_X-126;y,SCREEN_CENTER_Y-198;visible,GAMESTATE:IsHumanPlayer(PLAYER_1)diffusealpha,1;shadowlength,1);
	OffCommand=cmd(linear,0.25;diffusealpha,0);
	OnCommand=function(self)
	local style = GAMESTATE:GetCurrentStyle();
		if style:GetStyleType() == "StyleType_OnePlayerTwoSides" then
			self:settext("DOUBLE");
			self:diffuse(color("#f700d7"));
		elseif style:GetStyleType() == "StyleType_OnePlayerOneSide" then
			self:settext("SINGLE");
			self:diffuse(color("#01b4ff"));
		elseif style:GetStyleType() == "StyleType_TwoPlayersTwoSides" then
			self:settext("VERSUS");
			self:diffuse(color("#f78c03"));
		end;
	end;
};

t[#t+1] = LoadFont("_itc avant garde std bk 20px")..{
	InitCommand=cmd(x,SCREEN_CENTER_X+126;y,SCREEN_CENTER_Y-198;visible,GAMESTATE:IsHumanPlayer(PLAYER_2)diffusealpha,1;shadowlength,1);
	OffCommand=cmd(linear,0.25;diffusealpha,0);
	OnCommand=function(self)
	local style = GAMESTATE:GetCurrentStyle();
		if style:GetStyleType() == "StyleType_OnePlayerTwoSides" then
			self:settext("DOUBLE");
			self:diffuse(color("#f700d7"));
		elseif style:GetStyleType() == "StyleType_OnePlayerOneSide" then
			self:settext("SINGLE");
			self:diffuse(color("#01b4ff"));
		elseif style:GetStyleType() == "StyleType_TwoPlayersTwoSides" then
			self:settext("VERSUS");
			self:diffuse(color("#f78c03"));
		end;
	end;
};

--Player scores
t[#t+1] = Def.RollingNumbers {
	File = THEME:GetPathF("ScreenEvaluation", "ScoreNumber");
	InitCommand=cmd(x,SCREEN_CENTER_X-203;y,SCREEN_CENTER_Y-42;zoomx,1;zoomy,0.95;player,PLAYER_1;playcommand,"Set");
	SetCommand = function(self)
		local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetScore();
		self:diffuse(color("#000000"));
		self:strokecolor(color("#FFFFFF"));
		self:Load("RollingNumbersEvaluation");
		self:targetnumber(score);
	end;
	OffCommand=cmd(sleep,0.067;zoom,0);
};

t[#t+1] = Def.RollingNumbers {
	File = THEME:GetPathF("ScreenEvaluation", "ScoreNumber");
	InitCommand=cmd(x,SCREEN_CENTER_X+203;y,SCREEN_CENTER_Y-42;zoomx,1;zoomy,0.95;player,PLAYER_2;playcommand,"Set");
	SetCommand = function(self)
		local score = STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetScore();
		self:diffuse(color("#000000"));
		self:Load("RollingNumbersEvaluation");
		self:targetnumber(score);
	end;
	OffCommand=cmd(sleep,0.067;zoom,0);
};

--New record definition
if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetPersonalHighScoreIndex() == 0) then
	NewRec1 = 1
end

if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetPersonalHighScoreIndex() == 0) then
	NewRec2 = 1
end

if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetMachineHighScoreIndex() == 0) then
	NewRec1 = 1
end

if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetMachineHighScoreIndex() == 0) then
	NewRec2 = 1
end

--New record Sounds and Graphic
if ((NewRec1 == 1) and (GAMESTATE:IsHumanPlayer(PLAYER_1))) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "_new_record" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y-65;diffusealpha,0;zoom,1;draworder,1;sleep,2.416;linear,0.15;diffusealpha,1;zoom,1.15;sleep,0.5;linear,0.15;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,0.3;zoomy,0);
	};
	LoadActor( "RecSound" )..{
		OnCommand=cmd(play);
	};
}
end

if ((NewRec2 == 1) and (GAMESTATE:IsHumanPlayer(PLAYER_2))) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "_new_record" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+239;y,SCREEN_CENTER_Y-65;diffusealpha,0;zoom,1;draworder,1;sleep,2.416;linear,0.15;diffusealpha,1;zoom,1.15;sleep,0.5;linear,0.15;diffusealpha,1;zoom,1);
		OffCommand=cmd(linear,0.3;zoomy,0);
	};
		LoadActor( "RecSound" )..{
		OnCommand=cmd(play);
	};
}
end

--P1 Decorations

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = LoadActor("_score")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-293;y,SCREEN_CENTER_Y-64);
		OffCommand=cmd();
	};

	t[#t+1] = LoadActor("scoreframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-165;y,SCREEN_CENTER_Y+86);
		OffCommand=cmd();
	};

--Statsp1
t[#t+1] = LoadActor("statsP1")..{
	OnCommand=cmd(x,SCREEN_CENTER_X-100;y,SCREEN_CENTER_Y)
};
end

--P2 Decorations
if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	--Score Label
	t[#t+1] = LoadActor("_score")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+136;y,SCREEN_CENTER_Y-64);
		OffCommand=cmd();
	};

	t[#t+1] = LoadActor("scoreframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+165;y,SCREEN_CENTER_Y+86);
		OffCommand=cmd();
	};

	--Statsp2
	t[#t+1] = LoadActor("statsP2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+250;y,SCREEN_CENTER_Y)
	};
end

if GAMESTATE:HasEarnedExtraStage() then

local timedl = 5;

	--Try extra stage text
	t[#t+1] = Def.ActorFrame {
		LoadActor( "_extra" )..{
			OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-54;sleep,timedl;diffusealpha,1);
		};
	}

	--Extra siren
	t[#t+1] = Def.ActorFrame {
		LoadActor( "extra" )..{
			OnCommand=cmd(sleep,timedl;queuecommand,'Play');
			PlayCommand=cmd(play);
		};
	};

end

--Footer
t[#t+1] = Def.ActorFrame {
	LoadActor( "../_footer" )..{
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_footer/sr" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-28);
	}
};

return t