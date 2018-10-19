local playMode = GAMESTATE:GetPlayMode()
if playMode ~= 'PlayMode_Regular' and playMode ~= 'PlayMode_Rave' and playMode ~= 'PlayMode_Battle' then
	curStage = playMode;
end;
local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};

if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
	sStage = "Stage_Final";
else
	sStage = sStage;
end;

local t = Def.ActorFrame{}
local song = GAMESTATE:GetCurrentSong();

--Sound
t[#t+1] = Def.ActorFrame {
	LoadActor("../_swoosh") .. {
		OnCommand=cmd(sleep,0.87;queuecommand,"Play");
		PlayCommand=cmd(play);
	};
	LoadActor("SoundStage") .. {};
};

t[#t+1] = Def.ActorFrame {
--Scanlines
	LoadActor("scanlines")..{
		InitCommand=cmd(Center;diffusealpha,0.5);
		OnCommand=cmd(zoom,1.2;sleep,0.833;linear,0.083;zoom,0.75);
	};
--BlackBg
	LoadActor("topbg") .. {
		OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_TOP-2;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_CENTER_X;y,SCREEN_TOP+84;);
	};
	LoadActor("bottombg") .. {
		OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+7;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-71;);
	};
	LoadActor("topbar") .. {
		OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_TOP+9;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_CENTER_X;y,SCREEN_TOP+58;);
	};
	LoadActor("bottombar") .. {
		OnCommand=cmd(diffusealpha,0;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-4;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-59;);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor("sidebar") .. {
		OnCommand=cmd(diffusealpha,0;x,SCREEN_RIGHT+39;y,SCREEN_CENTER_Y-12;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_RIGHT-68;y,SCREEN_CENTER_Y-18;);
	};
	LoadActor("sidebar") .. {
		OnCommand=cmd(diffusealpha,0;x,SCREEN_LEFT-39;y,SCREEN_CENTER_Y-12;zoomx,-1;sleep,0.034;diffusealpha,1;sleep,0.833;linear,0.083;zoom,0.75;x,SCREEN_LEFT+68;y,SCREEN_CENTER_Y-18;zoomx,-0.75;);
	};
};

t[#t+1] = Def.ActorFrame {
	LoadActor("jacket-bg")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+166;zoomy,0.0129;zoomx,1.3;diffusealpha,0;sleep,1.267;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.0645;addy,-8;sleep,0.017;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.1741;addy,-17;sleep,0.033;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.2806;addy,-17;zoomx,1.265;sleep,0.017;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.407;zoomx,1.245;addy,-17;sleep,0.017;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.527;addy,-18;zoomx,1.201;sleep,0.017;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.7;zoomx,1.126;addy,-25;sleep,0.034;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.790;zoomx,1.116;addy,-18;sleep,0.017;diffusealpha,1;sleep,0.017;diffusealpha,0;zoomy,0.952;zoomx,1.066;addy,-25;sleep,0.017;diffusealpha,1;sleep,0.017;diffusealpha,0;);
	};
	LoadActor("jacket-bg")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+19;diffusealpha,0;sleep,1.617;zoomy,1.033;zoomx,1.033;addy,-3;sleep,0.034;diffusealpha,1;sleep,0.017;diffusealpha,0;sleep,0.016;diffusealpha,1;sleep,0.018;diffusealpha,0;sleep,0.017;diffusealpha,1;sleep,0.016;diffusealpha,0;sleep,0.018;diffusealpha,1;sleep,0.017;diffusealpha,0;sleep,0.016;diffusealpha,1;sleep,0.018;diffusealpha,0;sleep,0.150;zoomx,1.72;zoomy,0.335;addy,98;diffusealpha,1;sleep,0.017;diffusealpha,0;sleep,0.017;);
	};
};

--Jacket
t[#t+1] = Def.ActorFrame {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;);
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
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-66;sleep,1.25;linear,0.401;zoom,0.8;addy,4;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "prog_bg" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;sleep,1.25;linear,0.401;zoom,0.8;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "progbar" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-44;cropright,1;sleep,1.25;linear,0.401;zoom,0.8;cropright,0;sleep,0.216;linear,0.033;zoomx,3;zoomy,0);
	}
};

--White Flare
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(Center;FullScreen;diffusecolor,Color.White;draworder,1;diffusealpha,0.8;linear,0.7;diffusealpha,0;);
	};
};

if GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
	t[#t+1] = Def.ActorFrame {
		LoadActor(GetExtraType(song:GetDisplayFullTitle()));
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor("StageDisplay");
	};
end

return t
