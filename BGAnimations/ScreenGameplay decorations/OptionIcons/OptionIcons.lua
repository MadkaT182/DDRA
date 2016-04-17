local player = ...
-- tranform a long-form enum string like "PlayerNumber_P1" into just "P1"
local p = ToEnumShortString(player)

local ps = GAMESTATE:GetPlayerState(player)
local po = ps:GetCurrentPlayerOptions()
---

return Def.ActorFrame {
	InitCommand=function(self) self:playcommand("Show") end,
	PlayerJoinedMessageCommand=function(self, params)
		if params.Player == player then
			self:playcommand("Show")
		end
	end,

	----------------------------------------------------------
	-- Speed
	LoadActor(p.."/non")..{
		ShowCommand=function(self) self:x(-85) end
	},
	Def.BitmapText{
		Font="_arial black",
		ShowCommand=function(self)
			self:x(-85):zoom(0.4):maxwidth(36)

			if po:XMod() then
				self:settext("x" .. po:XMod() )
			elseif po:CMod() then
				self:settext( "C" .. po:CMod() )
			elseif po:MMod() then
				self:settext( "M" .. po:MMod() )
			end
		end,
	},

	----------------------------------------------------------
	-- Boost
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-68)
			if po:Boost() ~= 0  then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons") .."/"..p.."/boost_on (doubleres).png");

			elseif po:Brake() ~= 0 then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/boost_brake (doubleres).png");

			elseif po:Wave() ~= 0 then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/boost_wave (doubleres).png");
			end
		end,
	},

	----------------------------------------------------------
	-- Appearance
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-51)

			if po:Hidden() ~= 0 then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/appearance_hidden (doubleres).png")

			elseif po:Sudden() ~= 0 then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/appearance_sudden (doubleres).png")

			elseif po:Stealth() ~= 0 then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/appearance_stealth (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Turn
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-34)

			if po:Mirror() then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/turn_mirror (doubleres).png")

			elseif po:Left() then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/turn_left (doubleres).png")

			elseif po:Right() then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/turn_right (doubleres).png")

			elseif po:Shuffle() then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/turn_shuffle (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Dark
	Def.Sprite {
		ShowCommand=function(self)
			self:x(-17)

			if po:Dark() ~= 0 then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/dark_on (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Scroll
	Def.Sprite {
		ShowCommand=function(self)
			self:x(0)

			if po:Reverse() ~= 0 then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/scroll_reverse (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Arrow
	Def.Sprite {
		ShowCommand=function(self)
			self:x(17)

			if po:NoteSkin():lower():match("flat") then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/arrow_flat (doubleres).png")

			elseif po:NoteSkin():lower():match("note") then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/arrow_note (doubleres).png")

			elseif po:NoteSkin():lower():match("rainbow") then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/arrow_rainbow (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Cut
	Def.Sprite {
		ShowCommand=function(self)
			self:x(34)
			if po:Little() then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/cut_on (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Freeze arrow
	Def.Sprite {
		ShowCommand=function(self)
			self:x(51)
			if po:NoHolds() then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/freeze_arrow_off (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Jump
	Def.Sprite {
		ShowCommand=function(self)
			self:x(68)
			if po:NoJumps() then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/jump_off (doubleres).png")
			end
		end
	},

	----------------------------------------------------------
	-- Risky
	Def.Sprite {
		ShowCommand=function(self)
			self:x(85)

			if GAMESTATE:PlayerIsUsingModifier(player, 'battery') then
				self:Load(THEME:GetPathB("ScreenGameplay","decorations/OptionIcons").."/"..p.."/Risky (doubleres).png")
			end
		end
	}
}