local t = Def.ActorFrame{}

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("../_swoosh") .. {
		OnCommand=cmd(sleep,0.87;queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

--It'll be much easier to do the zoom effect if everything was on a single ActorFrame Table. -Inorizushi
t[#t+1] = Def.ActorFrame {
--Scanline
	LoadActor("scanlines")..{
		InitCommand=cmd(Center;diffusealpha,0.5);
		OnCommand=cmd(zoom,1.2;sleep,0.833;linear,0.083;zoom,0.75);
	};
--BlackBg
	LoadActor("topbg") .. {
		InitCommand=cmd(CenterX;y,SCREEN_TOP-2);
		OnCommand=cmd(zoom,1.2;diffusealpha,0;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;y,SCREEN_TOP+84;);
	};
	LoadActor("bottombg") .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-7);
		OnCommand=cmd(zoom,1.2;diffusealpha,0;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;y,SCREEN_BOTTOM-71;);
	};
--Bars
	LoadActor("topbar") .. {
		InitCommand=cmd(CenterX;y,SCREEN_TOP+9);
		OnCommand=cmd(zoom,1.2;diffusealpha,0;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;y,SCREEN_TOP+58;);
	};
	LoadActor("bottombar") .. {
		InitCommand=cmd(CenterX;y,SCREEN_BOTTOM-4);
		OnCommand=cmd(zoom,1.2;diffusealpha,0;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;y,SCREEN_BOTTOM-59;);
	};
};

t[#t+1] = Def.ActorFrame{
		LoadActor("sidebar") .. {
		OnCommand=cmd(zoom,1.2;diffusealpha,0;x,SCREEN_RIGHT+39;y,SCREEN_CENTER_Y-12;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_RIGHT-68;y,SCREEN_CENTER_Y-18;);
	};
	LoadActor("sidebar") .. {
		OnCommand=cmd(zoom,1.2;diffusealpha,0;x,SCREEN_LEFT-39;y,SCREEN_CENTER_Y-12;zoomx,-1;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_LEFT+68;y,SCREEN_CENTER_Y-18;zoomx,-0.75;);
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
			self:sleep(2.8);
			self:diffusealpha(1);
			self:sleep(1.584);
		end;
		end;
	};
};

t[#t+1] = Def.ActorFrame{
	LoadActor("jacket-bg")..{
		InitCommand=cmd(Center;diffusealpha,0;zoom,1.05);
		OnCommand=cmd(sleep,1.5;diffusealpha,1;sleep,0.1;diffusealpha,0;sleep,0.401;diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05;diffusealpha,1;sleep,0.05;diffusealpha,0;sleep,0.05;diffusealpha,1;linear,0.1;zoom,1;linear,0.05;zoom,1.4;diffusealpha,0);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "con_label" )..{
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66;zoom,0.8;addy,4);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66;addy,4;zoomx,3;zoomy,.27);
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66;sleep,1.25;linear,0.401;zoom,0.8;addy,4;sleep,0.5;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "prog_bg" )..{
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoom,0.8;);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoomx,3;zoomy,0);
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;sleep,1.25;linear,0.401;zoom,0.8;sleep,0.5;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "progbar" )..{
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoom,0.8;);
		--InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;zoomx,3;zoomy,0);
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;cropright,1;sleep,1.25;linear,0.401;zoom,0.8;linear,0.5;cropright,0;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

--White Flare
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(Center;FullScreen;diffusecolor,Color.White;draworder,1;diffusealpha,0.8;linear,0.7;diffusealpha,0;);
	};
};

return t
