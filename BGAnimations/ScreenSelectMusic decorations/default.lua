local t = Def.ActorFrame {};

--Stage BG
t[#t+1] = Def.ActorFrame {
	LoadActor( "stagebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+82;y,SCREEN_TOP+37);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "titletext" )..{
		InitCommand=cmd(x,SCREEN_LEFT+59;y,SCREEN_TOP+25);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_LEFT+124;y,SCREEN_BOTTOM-215;rotationy,180);
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "sidebg" )..{
		InitCommand=cmd(x,SCREEN_RIGHT-124;y,SCREEN_BOTTOM-215);
	}
};

--Decorations P1
if GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' then

	--Difficulty List
	t[#t+1] = Def.ActorFrame {
		LoadActor( "diffTitle" )..{
			InitCommand=cmd(x,SCREEN_LEFT+104;y,SCREEN_CENTER_Y-148);
		}
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "diffLabel" )..{
			InitCommand=cmd(x,SCREEN_LEFT+99;y,SCREEN_CENTER_Y-157);
		}
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "tapU" )..{
			InitCommand=cmd(x,SCREEN_LEFT+101;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(linear,.284;addy,4;linear,.284;addy,-4;sleep,1.01;queuecommand,"Animate");
		}
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "tapD" )..{
			InitCommand=cmd(x,SCREEN_LEFT+130;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(sleep,1.01;linear,.284;addy,4;linear,.284;addy,-4;queuecommand,"Animate");
		}
	};

	t[#t+1] = StandardDecorationFromFileOptional("DifficultyDisplayP1","DifficultyDisplayP1");

	--RadarBG
	t[#t+1] = Def.ActorFrame {
		LoadActor("radarbg")..{
			OnCommand=cmd(x,SCREEN_LEFT+81;y,SCREEN_CENTER_Y+36);
			OffCommand=cmd(diffusealpha,1);
		}
	};
end

--Decorations P2
if GAMESTATE:IsPlayerEnabled(PLAYER_2) and GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' then

	--Difficulty List
	t[#t+1] = Def.ActorFrame {
		LoadActor( "diffTitle" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-104;y,SCREEN_CENTER_Y-148);
		}
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "diffLabel" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-99;y,SCREEN_CENTER_Y-157);
		}
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "tapU" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-101;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(linear,.284;addy,4;linear,.284;addy,-4;sleep,1.01;queuecommand,"Animate");
		}
	};

	t[#t+1] = Def.ActorFrame {
		LoadActor( "tapD" )..{
			InitCommand=cmd(x,SCREEN_RIGHT-72;y,SCREEN_CENTER_Y-158;queuecommand,"Animate");
			AnimateCommand=cmd(sleep,1.01;linear,.284;addy,4;linear,.284;addy,-4;queuecommand,"Animate");
		}
	};

	t[#t+1] = StandardDecorationFromFileOptional("DifficultyDisplayP2","DifficultyDisplayP2");

	--RadarBG
	t[#t+1] = Def.ActorFrame {
		LoadActor("radarbg")..{
			OnCommand=cmd(x,SCREEN_RIGHT-81;y,SCREEN_CENTER_Y+36);
			OffCommand=cmd(diffusealpha,1);
		}
	};
end

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_footer" )..{
	}
};

t[#t+1] = Def.ActorFrame {
	LoadActor( "../_footer/sm" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-26);
	}
};

return t