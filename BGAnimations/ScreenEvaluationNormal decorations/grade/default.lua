local t = Def.ActorFrame {
--P1--
--FCRingP1--
	LoadActor("GoodFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("GoodFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-400+45+20-5;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

--GRADEP1---

	LoadActor("Grade_AAA (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AAA (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AA1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AA (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AA2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_A1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_A (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_A2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier08") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier09") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier10") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier11") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_C1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier12") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_C (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier13") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_C2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier14") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_D1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier16") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_D (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier15") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_E (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier17") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_E (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};


--P2--
--FCRingP2--
	LoadActor("GoodFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local pssp2 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2")
			if pssp2:FullComboOfScore('TapNoteScore_W4') then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
		LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.65;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("GoodFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local pssp1 = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2")
			if pssp1:FullComboOfScore('TapNoteScore_W4') then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	
	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+400-90-10-10+45;y,SCREEN_CENTER_Y-120-10;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,1;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};


--GradeP2--

	LoadActor("Grade_AAA (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AAA (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AA1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AA (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AA2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_A1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_A (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_A2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier08") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier09") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier10") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier11") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_C1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier12") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_C (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier13") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_C2 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier14") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_D1 (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier16") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_D (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier15") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_E (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier17") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_E (doubleres).png")..{
		InitCommand=cmd(player,PLAYER_2; x,SCREEN_CENTER_X+243;y,SCREEN_CENTER_Y-34;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;zoom,0.675))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
};
return t;
