local t = Def.ActorFrame {};

--Stage BG
t[#t+1] = Def.ActorFrame {
	LoadActor( "stagebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+82;y,SCREEN_TOP+37);
	};
	LoadActor( "titletext" )..{
		InitCommand=cmd(x,SCREEN_LEFT+59;y,SCREEN_TOP+25);
	};
	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+124;y,SCREEN_BOTTOM-215;zoomx,-1);
	};
	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_RIGHT-124;y,SCREEN_BOTTOM-215);
	};
};

--Decorations P1
if GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' then

	--Difficulty List
	t[#t+1] = Def.ActorFrame {
		LoadActor( "diffTitle" )..{
			InitCommand=cmd(x,SCREEN_LEFT+104;y,SCREEN_CENTER_Y-148);
		};
		LoadActor( "diffLabel" )..{
			InitCommand=cmd(x,SCREEN_LEFT+99;y,SCREEN_CENTER_Y-157);
		};
		LoadActor( "tapU" )..{
			InitCommand=cmd(x,SCREEN_LEFT+101;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(linear,.284;addy,4;linear,.284;addy,-4;sleep,1.01;queuecommand,"Animate");
			OffCommand=cmd(stoptweening);
		};
		LoadActor( "tapD" )..{
			InitCommand=cmd(x,SCREEN_LEFT+130;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(sleep,1.01;linear,.284;addy,4;linear,.284;addy,-4;queuecommand,"Animate");
			OffCommand=cmd(stoptweening);
		};
	};
	t[#t+1] = StandardDecorationFromFileOptional("DifficultyDisplayP1","DifficultyDisplayP1");
	--RadarBG
	t[#t+1] = Def.ActorFrame {
		LoadActor("radarbg")..{
			OnCommand=cmd(x,SCREEN_LEFT+81;y,SCREEN_CENTER_Y+36;zoom,0;linear,0.5;zoom,1);
		};
		LoadActor("radarlabels")..{
			OnCommand=cmd(x,SCREEN_LEFT+81;y,SCREEN_CENTER_Y+20);
		};
	};
end

--Decorations P2
if GAMESTATE:IsPlayerEnabled(PLAYER_2) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' then

	--Difficulty List
	t[#t+1] = Def.ActorFrame {
		LoadActor( "diffTitle" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-104;y,SCREEN_CENTER_Y-148);
		};
		LoadActor( "diffLabel" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-99;y,SCREEN_CENTER_Y-157);
		};
		LoadActor( "tapU" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-101;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(linear,.284;addy,4;linear,.284;addy,-4;sleep,1.01;queuecommand,"Animate");
			OffCommand=cmd(stoptweening);
		};
		LoadActor( "tapD" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-72;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(sleep,1.01;linear,.284;addy,4;linear,.284;addy,-4;queuecommand,"Animate");
			OffCommand=cmd(stoptweening);
		};
	};
	t[#t+1] = StandardDecorationFromFileOptional("DifficultyDisplayP2","DifficultyDisplayP2");
	--RadarBG
	t[#t+1] = Def.ActorFrame {
		LoadActor("radarbg")..{
			OnCommand=cmd(x,SCREEN_RIGHT-81;y,SCREEN_CENTER_Y+36;zoom,0;linear,0.5;zoom,1);
		};
		LoadActor("radarlabels")..{
			OnCommand=cmd(x,SCREEN_RIGHT-81;y,SCREEN_CENTER_Y+20);
		};
	};
end

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
	t[#t+1] = LoadActor("radarP1")..{
			InitCommand=cmd(diffusealpha,1;draworder,0;x,SCREEN_LEFT+81;y,SCREEN_CENTER_Y+36);
			CurrentSongChangedMessageCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
				if song then
					self:zoom(0.5);
				else
					self:zoom(0);
				end;
			end;
	};
end;

t[#t+1] = create_ddr_groove_radar("P1_radar", SCREEN_LEFT+81, SCREEN_CENTER_Y+36,
	PLAYER_1, 40, color("1,1,0,1"),
	{ColorGR.Yellow, ColorGR.Yellow, ColorGR.Yellow, ColorGR.Yellow, ColorGR.Yellow},
	"accelerate", .25)

if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
	t[#t+1] = LoadActor("radarP2")..{
			InitCommand=cmd(diffusealpha,1;draworder,0;x,SCREEN_RIGHT-81;y,SCREEN_CENTER_Y+36);
			CurrentSongChangedMessageCommand=function(self)
			local song = GAMESTATE:GetCurrentSong()
				if song then
					self:zoom(0.5);
				else
					self:zoom(0);
				end;
			end;
	};
end;

t[#t+1] = create_ddr_groove_radar("P2_radar", SCREEN_RIGHT-81, SCREEN_CENTER_Y+36,
	PLAYER_2, 40, color("1,1,0,1"),
	{ColorGR.Yellow, ColorGR.Yellow, ColorGR.Yellow, ColorGR.Yellow, ColorGR.Yellow},
	"accelerate", .25)


t[#t+1] = Def.ActorFrame {
	LoadActor( "../_footer" );
	LoadActor( "../_footer/sm" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-26);
	};
};

return t
