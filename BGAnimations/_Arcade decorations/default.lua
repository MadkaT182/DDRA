local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadActor( "cellphone" )..{
		OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+70);
	};
	LoadActor( "paseli" )..{
		OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+110);
	};
	LoadActor( "ecomode" )..{
		OnCommand=cmd(x,SCREEN_RIGHT-72;y,SCREEN_BOTTOM-54);
	};
	LoadActor( "passtr" )..{
		OnCommand=cmd(x,SCREEN_RIGHT-73;y,SCREEN_BOTTOM-27);
	};
	LoadActor( "bg" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-59);
	};
};

if GAMESTATE:GetCoinMode() == "CoinMode_Free" or GAMESTATE:IsEventMode() then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "free" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+158);
		};
	};
end

if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "jp" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+250);
		};
	};
end

if GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit" or GAMESTATE:GetPremium() == "Premium_DoubleFor1Credit" then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "dp" )..{
			OnCommand=cmd(x,SCREEN_RIGHT-29;y,SCREEN_TOP+204);
		};
	};
end

t[#t+1] = Def.ActorFrame {
	LoadFont("_arial black 20px") .. {
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-59);
	Text="...";
	OnCommand=cmd(playcommand,"Refresh");
	CoinInsertedMessageCommand=cmd(playcommand,"Refresh");
	CoinModeChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local bCanPlay = GAMESTATE:EnoughCreditsToJoin();
		local bReady = GAMESTATE:GetNumSidesJoined() > 0;
		if bCanPlay or bReady then
			self:settext("Push start button");
			self:diffuseshift();
			self:effectcolor1(1,1,1,0);
			self:effectcolor2(1,1,1,1);
			self:effectperiod(0.666);
		else
			self:settext("Insert coins");
		end
	end;
	};
};

return t