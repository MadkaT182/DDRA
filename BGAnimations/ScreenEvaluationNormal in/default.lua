local t = Def.ActorFrame{};

--Black BG
t[#t+1] = Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(Center;FullScreen;diffusecolor,Color.Black;diffusealpha,1;sleep,0.434;linear,0.033;diffusealpha,0;);
	};

	-- --Score sound
	-- LoadActor("Score")..{
	-- 	StartTransitioningCommand=cmd(stop;sleep,5;play);
	-- };
};

if STATSMAN:GetCurStageStats():AllFailed() then
	--Failed
	t[#t+1] = Def.ActorFrame {

		--Up side
		--BG
		LoadActor( "../_door/graybg" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+67;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_TOP-67;diffusealpha,0);
		};
		LoadActor( "../_door/grayshdw" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+67;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_TOP-67;diffusealpha,0);
		};
		LoadActor( "../_door/lines" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+67;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_TOP-67;diffusealpha,0);
		};

		--Down Side
		--BG
		LoadActor( "../_door/graybg" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;zoomy,-1;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;diffusealpha,0);
		};
		LoadActor( "../_door/grayshdw" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;zoomy,-1;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;diffusealpha,0);
		};
		LoadActor( "../_door/lines" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;zoomy,-1;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;diffusealpha,0);
		};

	};
else
	--Cleared
	t[#t+1] = Def.ActorFrame {

		--Up side
		--BG
		LoadActor( "../_door/bluebg" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+67;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_TOP-67;diffusealpha,0);
		};
		-- LoadActor( "../_door/blueshdw" )..{
		-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+67;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_TOP-67;diffusealpha,0);
		-- };
		LoadActor( "../_door/lines" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+67;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_TOP-67;diffusealpha,0);
		};

		--Down Side
		--BG
		LoadActor( "../_door/bluebg" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;zoomy,-1;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;diffusealpha,0);
		};
		-- LoadActor( "../_door/blueshdw" )..{
		-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;zoomy,-1;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;diffusealpha,0);
		-- };
		LoadActor( "../_door/lines" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-67;zoomy,-1;linear,0.35;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+67;diffusealpha,0);
		};

	};
end

return t