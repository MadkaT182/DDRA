
local t = Def.ActorFrame{};

local CustomDifficultyToState = {
	Beginner		= 0,
	Easy			= 1,
	Medium		= 2,
	Hard			= 3,
	Challenge		= 4,
	Edit			= 5,
	Crazy		= 3,
	HalfDouble		= 2,
	Routine		= 1,
	Freestyle		= 2,
	Nightmare		= 3
};

t[#t+1] = Def.ActorFrame{
	LoadActor(THEME:GetPathG("", "_difftable"))..{
		Name="difftable";
		InitCommand=cmd(animate,false);
	};

	LoadFont("_itc machine std 20px")..{
		Name="tmeter";
		InitCommand=cmd(horizalign,center;diffuse,color("#000000");addx,-18;addy,-7);
	};

	LoadFont("_Shared2")..{
		Name="description";
		InitCommand=cmd(horizalign,right;zoom,0.5;maxwidth,160);
	};
	
	SetCommand=function(self, param)
		local difftable = self:GetChild('difftable');
		local tmeter = self:GetChild('tmeter');
		local description = self:GetChild('description');
		local song = "";
		local step;
		local meter;
		local cdiff = param.CustomDifficulty;
		self:stoptweening();
		difftable:visible(false);
		tmeter:visible(false);
		if cdiff then
			step = param.Steps;
			meter = param.Meter;
			difftable:visible(true);
			difftable:setstate(CustomDifficultyToState[cdiff]);
			--if getenv("wheelstop") == 1 and getenv("rnd_song") == 0 then
			if getenv("wheelstop") == 1 then
				song = GAMESTATE:GetCurrentSong();
				if GetAdhocPref("UserMeterType") == "CSStyle" then
					if song then
						if cdiff ~= "Edit" then
							meter = GetConvertDifficulty(song,"Difficulty_"..cdiff);
						else
							meter = GetConvertDifficulty(song,"Difficulty_Edit",step);
						end;
					else
						meter = "";
					end;
				end;

				description:visible(false);
				if cdiff == "Edit" then
					description:visible(true);
					--description:diffuse(CustomDifficultyToColor(cdiff));
					--description:strokecolor(Color("Black"));
					if step:GetDescription() == "" then
						description:settext("Edit");
					elseif #step:GetDescription() >= 10 then
						description:settext( string.format("%-9s",string.sub(step:GetDescription(),1,9)).." ..." )
					else
						description:settext(step:GetDescription())
					end;
				end;
			else
				song = "";
				description:visible(false);
			end;
			if meter then
				tmeter:visible(true);
				tmeter:settextf("%d",meter);
				--tmeter:strokecolor(CustomDifficultyToDarkColor(cdiff));
			end;
		end;
	end;
};

return t;