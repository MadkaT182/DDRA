local t = Def.ActorFrame {};

--Common Objects
t[#t+1] = Def.ActorFrame {
	--Header
	LoadActor( "../_header" )..{};
	--Title
    LoadActor("_title") .. {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+19);
		OnCommand=cmd(addy,-32;sleep,0.2;decelerate,0.0833;addy,32);
		OffCommand=cmd(finishtweening;sleep,0.2;decelerate,0.0833;addy,-32);
    };
	--Player BG
    LoadActor("P1Frame") .. {
        InitCommand=cmd(x,SCREEN_LEFT+142;y,SCREEN_BOTTOM-52;);
		OnCommand=cmd();
		OffCommand=cmd(smooth,0.2;diffusealpha,0;);
    };
    LoadActor("P2Frame") .. {
        InitCommand=cmd(x,SCREEN_RIGHT-142;y,SCREEN_BOTTOM-52;);
		OnCommand=cmd();
		OffCommand=cmd(smooth,0.2;diffusealpha,0;);
    };
    --Selection Arrows
	LoadActor("_selectarrow")..{
		InitCommand=cmd(x,SCREEN_CENTER_X-173;y,SCREEN_BOTTOM-111;zoomx,0.5;zoomy,0.5;diffusealpha,0;draworder,1);
		OnCommand=cmd(smooth,0.3;zoom,1;diffusealpha,1;);
		OffCommand=cmd(smooth,0.2;addx,-50;diffusealpha,0;);
		MenuLeftP1MessageCommand=cmd(smooth,0.1;addx,-20;smooth,0.1;addx,20;);
		MenuLeftP2MessageCommand=cmd(smooth,0.1;addx,-20;smooth,0.1;addx,20;);
	};
	LoadActor("_selectarrow")..{
		InitCommand=cmd(x,SCREEN_CENTER_X+173;y,SCREEN_BOTTOM-111;zoomx,-0.5;zoomy,0.5;diffusealpha,0;draworder,1);
		OnCommand=cmd(smooth,0.3;zoomx,-1;zoomy,1;diffusealpha,1;);
		OffCommand=cmd(smooth,0.2;addx,-50;diffusealpha,0;);
		MenuRightP1MessageCommand=cmd(smooth,0.1;addx,20;smooth,0.1;addx,-20;);
		MenuRightP2MessageCommand=cmd(smooth,0.1;addx,20;smooth,0.1;addx,-20;);
	};
};

--Join Messages
--P1
t[#t+1] = Def.ActorFrame {
	LoadActor("StartJoinSSS") .. {
	    Condition=not GAMESTATE:IsHumanPlayer(PLAYER_1);
		InitCommand=cmd(diffusealpha,0;x,SCREEN_LEFT+161;y,SCREEN_CENTER_Y+110);
		OnCommand=cmd(sleep,0.3;zoom,0;rotationz,-720;linear,0.35;rotationz,720;diffusealpha,1;zoom,1;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.25;zoomx,0.95;linear,0.25;zoomx,1;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;linear,0.25;zoomy,0;diffusealpha,0);
		PlayerJoinedMessageCommand=function(self,param)
				if param.Player == PLAYER_1 then
					(cmd(linear,0.15;zoomy,0;))(self);
				end;
			end;
	};
};

--P2
t[#t+1] = Def.ActorFrame {
	LoadActor("StartJoinSSS") .. {
	    Condition=not GAMESTATE:IsHumanPlayer(PLAYER_2);
		InitCommand=cmd(diffusealpha,0;x,SCREEN_RIGHT-161;y,SCREEN_CENTER_Y+110);
		OnCommand=cmd(sleep,0.3;zoom,0;rotationz,-720;linear,0.35;rotationz,720;diffusealpha,1;zoom,1;playcommand,"Animate");
		AnimateCommand=cmd(linear,0.25;zoomx,0.95;linear,0.25;zoomx,1;queuecommand,"Animate");
		OffCommand=cmd(stoptweening;linear,0.25;zoomy,0;diffusealpha,0);
		PlayerJoinedMessageCommand=function(self,param)
				if param.Player == PLAYER_1 then
					(cmd(linear,0.15;zoomy,0;))(self);
				end;
			end;
	};
};

t[#t+1] = LoadActor(THEME:GetPathS("","_swoosh_in"))..{
  OnCommand=cmd(sleep,0.4;queuecommand,"Play");
  PlayCommand=cmd(play);
};

return t;
