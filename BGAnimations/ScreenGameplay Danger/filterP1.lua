local DangerBGColor = color("#320000");
local st = GAMESTATE:GetCurrentStyle():GetStepsType();
local filBGWidth = 256;
local filFix = 0;

--Check game style
if st == "StepsType_Dance_Double" or st == "StepsType_Dance_Solo" then
	filBGWidth = 512;
	filFix = 128;
end;

local t = Def.ActorFrame{
	Def.ActorFrame{
		Name="DangerP1";
		Def.ActorFrame{
			Name="Danger";
			HealthStateChangedMessageCommand=function(self, param)
				if param.PlayerNumber == PLAYER_1 then
					if param.HealthState == "HealthState_Danger" then
						self:RunCommandsOnChildren(cmd(playcommand,"Show"))
					else
						self:RunCommandsOnChildren(cmd(playcommand,"Hide"))
					end
				end
			end;
			--BG
			Def.Quad{
				InitCommand=cmd(y,SCREEN_CENTER_Y;zoomto,filBGWidth,SCREEN_HEIGHT;diffusecolor,DangerBGColor;blend,'BlendMode_WeightedMultiply';diffusealpha,0);
				ShowCommand=cmd(diffusealpha,1);
				HideCommand=cmd(diffusealpha,0);
			};
			--Left lines
			LoadActor("lines")..{
				InitCommand=cmd(x,-141-filFix;y,SCREEN_CENTER_Y;zoomto,28,SCREEN_HEIGHT;customtexturerect,0,0,1,3;diffusealpha,0);
				OnCommand=cmd(texcoordvelocity,0,0.5);
				ShowCommand=cmd(diffusealpha,0.5);
				HideCommand=cmd(diffusealpha,0);
			};
			--Right lines
			LoadActor("lines")..{
				InitCommand=cmd(x,141+filFix;y,SCREEN_CENTER_Y;zoomto,28,SCREEN_HEIGHT;customtexturerect,0,0,1,3;diffusealpha,0);
				OnCommand=cmd(texcoordvelocity,0,0.5);
				ShowCommand=cmd(diffusealpha,0.5);
				HideCommand=cmd(diffusealpha,0);
			};
			--Danger Left
			LoadActor("danger")..{
				InitCommand=cmd(x,-141-filFix;y,SCREEN_CENTER_Y;diffusealpha,0);
				ShowCommand=cmd(diffusealpha,1);
				HideCommand=cmd(diffusealpha,0);
			};

			LoadActor("glow")..{
				InitCommand=cmd(diffusealpha,0);
				OnCommand=cmd();
				ShowCommand=cmd(queuecommand,"Animate";queuecommand,"Later");
				HideCommand=cmd(stoptweening;diffusealpha,0);
				AnimateCommand=cmd(diffusealpha,0;x,-141-filFix;y,SCREEN_CENTER_Y;linear,0.5;diffusealpha,1;zoom,1.5;linear,0.5;zoom,1;diffusealpha,0;queuecommand,"Later");
				LaterCommand=cmd(queuecommand,"Animate");
			};
			--Danger Right
			LoadActor("danger")..{
				InitCommand=cmd(x,141+filFix;y,SCREEN_CENTER_Y;zoomx,-1;zoomy,-1;diffusealpha,0);
				ShowCommand=cmd(diffusealpha,1);
				HideCommand=cmd(diffusealpha,0);
			};

			LoadActor("glow")..{
				InitCommand=cmd(diffusealpha,0);
				OnCommand=cmd();
				ShowCommand=cmd(queuecommand,"Animate";queuecommand,"Later");
				HideCommand=cmd(stoptweening;diffusealpha,0);
				AnimateCommand=cmd(diffusealpha,0;zoomx,-1;zoomy,-1;x,141+filFix;y,SCREEN_CENTER_Y;linear,0.5;diffusealpha,1;zoom,-1.5;linear,0.5;zoom,-1;diffusealpha,0;queuecommand,"Later");
				LaterCommand=cmd(queuecommand,"Animate");
			};
		}
	};
}

return t;