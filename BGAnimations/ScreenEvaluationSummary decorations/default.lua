local lang = "us";
local t = Def.ActorFrame {};

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = LoadActor( THEME:GetPathB("ScreenEvaluation","decorations") );

--Title
t[#t+1] = LoadActor("_title") .. {
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+19);
	OffCommand=cmd();
};

--Footer
t[#t+1] = Def.ActorFrame {
	LoadActor( "../_footer" )..{
	}
};

if lang == "us" then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_footer/tr" )..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-27);
		}
	};
else
	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_footer/tr" )..{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-29);
		}
	};
end

return t;