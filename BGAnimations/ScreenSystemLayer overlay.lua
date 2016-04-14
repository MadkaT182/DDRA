local function CreditsText( pn )
	local text = LoadFont(Var "LoadingScreen","credits") .. {
		InitCommand=function(self)
			self:name("Credits" .. PlayerNumberToString(pn))
			ActorUtil.LoadAllCommandsAndSetXY(self,Var "LoadingScreen");
		end;
		UpdateTextCommand=function(self)
			local str = ScreenSystemLayerHelpers.GetCreditsMessage(pn);
			self:settext(str);
		end;
		UpdateVisibleCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local bShow = true;
			if screen then
				local sClass = screen:GetName();
				bShow = THEME:GetMetric( sClass, "ShowCreditDisplay" );
			end

			self:visible( bShow );
		end
	};
	return text;
end;

local netConnected = IsNetConnected();
local loggedOnSMO = IsNetSMOnline();

local function NetworkText()
	-- body
	local text = LoadFont("ScreenSystemLayer credits") .. {
		InitCommand=function (self)
			self:name("NetworkStatus");
			self:settext("---");
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_BOTTOM-20);
		end;
		UpdateTextCommand=function (self)
			-- body
			if netConnected then
				self:strokecolor(color("#00ffff"));
				self:settext( Screen.String("Network OK") );
				self:horizalign(right);
			else
				self:strokecolor(color("#000000"));
				self:settext( Screen.String("Offline") );
				self:horizalign(right);
			end;
		end;
		UpdateVisibleCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local bShow = true;
			if screen then
				local sClass = screen:GetName();
				bShow = THEME:GetMetric( sClass, "ShowCreditDisplay" );
			end

			self:visible( bShow );
		end;
	};
	return text;
end;

local t = Def.ActorFrame {}

	--Network
t[#t+1] = Def.ActorFrame {
 	NetworkText();
};

	-- Credits
t[#t+1] = Def.ActorFrame {
 	CreditsText( PLAYER_1 );
	CreditsText( PLAYER_2 );
};
	-- Text
t[#t+1] = Def.ActorFrame {
	Def.Quad {
		InitCommand=cmd(zoomtowidth,SCREEN_WIDTH;zoomtoheight,30;horizalign,left;vertalign,top;y,SCREEN_TOP;diffuse,color("0,0,0,0"));
		OnCommand=cmd(finishtweening;diffusealpha,0.85;);
		OffCommand=cmd(sleep,3;linear,0.5;diffusealpha,0;);
	};
	Def.BitmapText{
		Font="ScreenSystemLayer credits";
		Name="Text";
		InitCommand=cmd(maxwidth,750;horizalign,left;vertalign,top;y,SCREEN_TOP+10;x,SCREEN_LEFT+10;diffusealpha,0;);
		OnCommand=cmd(finishtweening;diffusealpha,1;);
		OffCommand=cmd(sleep,3;linear,0.5;diffusealpha,0;);
	};
	SystemMessageMessageCommand = function(self, params)
		self:GetChild("Text"):settext( params.Message );
		self:playcommand( "On" );
		if params.NoAnimate then
			self:finishtweening();
		end
		self:playcommand( "Off" );
	end;
	HideSystemMessageMessageCommand = cmd(finishtweening);
};

return t;
