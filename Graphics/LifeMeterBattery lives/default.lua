local player = Var "Player"
local batw = 293;
local bath = 21;
local bat4p = batw/4;
local bat8p = batw/8;

local t = Def.ActorFrame{

--[[
	Def.Quad{
		BeginCommand=function(self)
			if GAMESTATE:IsCourseMode() then
				local screen = SCREENMAN:GetTopScreen();
				local glifemeter = screen:GetLifeMeter(player);
			--	local test = glifemeter:ChangeLives(10);
				local pm = GAMESTATE:GetPlayMode()
				if pm == "PlayMode_Oni" then
					glifemeter:ChangeLives(7)
				end;
			end;
		end;
	};
--]]

	-- Battery 1 line
	LoadActor("danger")..{
		InitCommand=function(self)
			self:texcoordvelocity(1.5,0)
			self:x(13)
			self:zoomto(batw,bath)
		end;
	};
	-- Battery 2-7 line
	LoadActor("normal")..{
		InitCommand=function(self)
			self:texcoordvelocity(0.8,0)
			self:zoomto(batw,bath)
			self:x(13)
			self:visible(false)
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player == player then
				if params.LivesLeft >= 2 then
					self:visible(true)
				else
					self:visible(false)
				end
			end
		end;
	};
	-- Battery full line
	LoadActor("full")..{
		InitCommand=function(self)
			self:texcoordvelocity(0.8,0)
			self:zoomto(batw,bath)
			self:x(13)
		end;
		BeginCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() == 1 then
				self:visible(false)
			else
				self:visible(true)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if params.Player == player then
				if glifemeter:GetTotalLives() == 1 then
					self:visible(false)
				elseif params.LivesLeft == glifemeter:GetTotalLives() then
					self:visible(true)
				else
					self:visible(false)
				end
			end
		end;
	};
	-- 8 Battery empty red
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,159;diffusetopedge,color("#5d1115");diffusebottomedge,color("#f50d0d"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() >= 5 then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:linear(0);
			self:diffusetopedge(color("#5d1115"));
			self:diffusebottomedge(color("#f50d0d"));
			self:zoomto(batw-(params.LivesLeft*bat8p),bath);
			self:linear(0.33);
			self:diffusetopedge(color("#707171"));
			self:diffusebottomedge(color("#404040"));
		end;
	};
	-- 8 Battery empty over
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,159;diffusetopedge,color("#707171");diffusebottomedge,color("#404040"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() >= 5 then
				self:visible(true)
				if glifemeter:GetTotalLives() >= 8 then
					self:zoomto(0,bath);
				elseif glifemeter:GetTotalLives() == 7 then
					self:zoomto(bat8p,bath);
				elseif glifemeter:GetTotalLives() == 6 then
					self:zoomto(bat8p*2,bath);
				elseif glifemeter:GetTotalLives() == 5 then
					self:zoomto(bat8p*3,bath);
				end
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:sleep(0.33);
			self:zoomto(batw-(params.LivesLeft*bat8p),bath);
		end;
	};
	-- 4 Battery empty red
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,159;diffusetopedge,color("#5d1115");diffusebottomedge,color("#f50d0d"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() <= 4 then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:linear(0);
			self:diffusetopedge(color("#5d1115"));
			self:diffusebottomedge(color("#f50d0d"));
			self:zoomto(batw-(params.LivesLeft*bat4p),bath);
			self:linear(0.33);
			self:diffusetopedge(color("#707171"));
			self:diffusebottomedge(color("#404040"));
		end;
	};
	-- 4 Battery empty over
	Def.Quad{
		InitCommand=cmd(horizalign,right;x,159;diffusetopedge,color("#707171");diffusebottomedge,color("#404040"));
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() <= 4 then
				self:visible(true)
				if glifemeter:GetTotalLives() == 4 then
					self:zoomto(0,bath);
				elseif glifemeter:GetTotalLives() == 3 then
					self:zoomto(bat4p,bath);
				elseif glifemeter:GetTotalLives() == 2 then
					self:zoomto(bat4p*2,bath);
				elseif glifemeter:GetTotalLives() == 1 then
					self:zoomto(bat4p*3,bath);
				end
			else
				self:visible(false)
			end
		end;
		LifeChangedMessageCommand=function(self,params)
			if params.Player ~= player then return end;
			self:finishtweening();
			self:sleep(0.33);
			self:zoomto(batw-(params.LivesLeft*bat4p),bath);
		end;
	};

	--Battery frame
	Def.Sprite {
		BeginCommand=function(self)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);

			local style = GAMESTATE:GetCurrentStyle():GetStyleType()

			self:x(10);
			self:y(-1);
			if GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
				if glifemeter:GetTotalLives() >= 5 then
					self:Load(THEME:GetPathG("LifeMeterBattery","lives/8frame"));
				else
					self:Load(THEME:GetPathG("LifeMeterBattery","lives/4frame"));
				end
			elseif glifemeter:GetTotalLives() >= 5 then
				self:Load(THEME:GetPathG("LifeMeterBattery","lives/8frame"));
			else
				self:Load(THEME:GetPathG("LifeMeterBattery","lives/4frame"));
			end
		end;
	};
	--[[
	-- 8 Battery frame
	LoadActor("8frame")..{
		InitCommand=cmd();
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
				self:visible(false)
			elseif glifemeter:GetTotalLives() >= 5 then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
	};
	-- 4 Battery frame
	LoadActor("4frame")..{
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2() then
				self:visible(false)
			elseif glifemeter:GetTotalLives() <= 4 then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
	};
	-- 8 Extra Battery frame
	LoadActor("Extra_8frame")..{
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() >= 5 and (GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2()) then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
	};
	-- 4 Extra Battery frame
	LoadActor("Extra_4frame")..{
		BeginCommand=function(self,params)
			local screen = SCREENMAN:GetTopScreen();
			local glifemeter = screen:GetLifeMeter(player);
			if glifemeter:GetTotalLives() <= 4 and (GAMESTATE:IsExtraStage() or GAMESTATE:IsExtraStage2()) then
				self:visible(true)
			else
				self:visible(false)
			end
		end;
	};
	--]]
};

return t;