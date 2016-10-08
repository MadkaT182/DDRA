--Lifted from default, appears to have been written by Kyzentun
local filter_color= color("0,0,0,1")
local this_pn

local args= {
	--the danger display
	Def.Quad{
		InitCommand=function(self) self
			:diffusealpha(0)
			:diffuseshift()
			:effectcolor1(color("1,0,0,0.8"))
			:effectcolor2(color("1,0,0,0"))
			:effectclock("music")
			:fadeleft(1/32)
			:faderight(1/32)
			:hibernate(math.huge)
		end,
		PlayerStateSetCommand= function(self, param)
			local pn= param.PlayerNumber
			this_pn= pn
			local style= GAMESTATE:GetCurrentStyle(pn)
			local width= style:GetWidth(pn) + 32
			self:setsize(width, _screen.h*4096):hibernate(0)
		end,
		HealthStateChangedMessageCommand= function(self, param)
			if this_pn and param.PlayerNumber == this_pn then
				self:linear(0.1)
				:diffusealpha((param.HealthState == 'HealthState_Danger') and 1 or 0)
			end
		end
	},
	--the screen filter
	Def.Quad{
		InitCommand= function(self)
			self:hibernate(math.huge):diffuse(filter_color)
		end,
		PlayerStateSetCommand= function(self, param)
			local pn= param.PlayerNumber
			local style= GAMESTATE:GetCurrentStyle(pn)
			local alf= getenv("ScreenFilter"..ToEnumShortString(pn)) or 0
			local width= style:GetWidth(pn) + 32
			self:setsize(width, _screen.h*4096):diffusealpha(alf/10):hibernate(0):fadeleft(1/32):faderight(1/32)
		end,
	}
}

return Def.ActorFrame(args)
