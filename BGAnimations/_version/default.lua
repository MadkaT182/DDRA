return Def.ActorFrame {
	LoadFont("Common normal")..{
		Text="Ver: 0.0.1";
		InitCommand=cmd(x,SCREEN_LEFT+24;y,SCREEN_TOP+24;horizalign,left;zoom,.75;rainbowscroll,true;shadowlength,2);
	};
}
