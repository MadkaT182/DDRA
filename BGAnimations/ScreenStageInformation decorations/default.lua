local t = Def.ActorFrame{}

--Sound
	t[#t+1] = Def.ActorFrame {
		LoadActor("../_swoosh") .. {
			OnCommand=cmd(sleep,0.87;queuecommand,"Play");
			PlayCommand=cmd(play);
		};
	};

t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(Center;FullScreen;diffusecolor,Color.White;draworder,1;diffusealpha,0.8;linear,0.7;diffusealpha,0;);
	};
};

--Sidebars
	t[#t+1] = Def.ActorFrame {
		LoadActor("sidebar") .. {
			--OnCommand=cmd(diffusealpha,0;x,SCREEN_RIGHT+39;y,SCREEN_CENTER_Y-12;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_RIGHT-68;y,SCREEN_CENTER_Y-18;sleep,2.617;zoom,1;x,SCREEN_RIGHT+82;y,SCREEN_CENTER_Y-12;);
			OnCommand=cmd(diffusealpha,0;x,SCREEN_RIGHT+39;y,SCREEN_CENTER_Y-12;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_RIGHT-68;y,SCREEN_CENTER_Y-18;);
		};
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor("sidebar") .. {
			--OnCommand=cmd(diffusealpha,0;x,SCREEN_LEFT-39;y,SCREEN_CENTER_Y-12;zoomx,-1;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_LEFT+68;y,SCREEN_CENTER_Y-18;zoomx,-0.75;sleep,2.617;zoom,1;x,SCREEN_LEFT-82;y,SCREEN_CENTER_Y-12;zoomx,-1);
			OnCommand=cmd(diffusealpha,0;x,SCREEN_LEFT-39;y,SCREEN_CENTER_Y-12;zoomx,-1;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_LEFT+68;y,SCREEN_CENTER_Y-18;zoomx,-0.75;);
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
			self:diffusealpha(0);
			self:sleep(1.983);
			self:diffusealpha(1);
			self:sleep(1.584);
		end;
		end;
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "con_label" )..{
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66;zoom,0.8;addy,4);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66;addy,4;zoomx,3;zoomy,.27);
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66;sleep,1.25;linear,0.401;zoom,0.8;addy,4;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "prog_bg" )..{
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoom,0.8;);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoomx,3;zoomy,0);
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;sleep,1.25;linear,0.401;zoom,0.8;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "progbar" )..{
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoom,0.8;);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoomx,3;zoomy,0);
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;cropright,1;sleep,1.25;linear,0.401;zoom,0.8;cropright,0;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

return t