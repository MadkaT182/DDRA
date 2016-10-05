local gc = Var("GameCommand");

return Def.ActorFrame {
	LoadFont("_arial_black 18px") .. {
		Text=gc:GetText();
		InitCommand=cmd(uppercase,true;shadowlength,2;strokecolor,Color("Black");zoom,0.75);
		OnCommand=cmd();
		GainFocusCommand=cmd(stoptweening;diffusealpha,1;diffuseshift;effectcolor1,color("#FFFD86");effectcolor2,Color("White");effectperiod,2;);
		LoseFocusCommand=cmd(stopeffect;diffusealpha,0);
	};

};
