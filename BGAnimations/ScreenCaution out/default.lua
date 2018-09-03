local t = Def.ActorFrame {
	--Dummy
	LoadActor( "../_white" )..{
		StartTransitioningCommand=cmd(diffusealpha,0;sleep,0.134);
	};
}

CautionToMusic = 1;

return t;