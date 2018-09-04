local t = Def.ActorFrame{
	LoadActor("../_header");
};

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = Def.ActorFrame {
		LoadActor( "../_common_graphics/result_player" )..{
			InitCommand=function(self)
				self:x(player == PLAYER_1 and SCREEN_LEFT+53 or SCREEN_RIGHT-53);
				self:y(SCREEN_TOP+61)
				self:zoomx(player == PLAYER_1 and 1 or -1);
			end;
		};
		LoadFont("_resPlayer")..{
			InitCommand=function(self)
				self:settext(GAMESTATE:GetPlayerDisplayName(player));
				self:zoomx(1.18);
				self:maxwidth(80);
				self:horizalign(player == PLAYER_1 and right or left);
				self:diffuse(color("#FFFF00"));
				self:x(player == PLAYER_1 and SCREEN_LEFT+95 or SCREEN_RIGHT-95);
				self:y(SCREEN_TOP+62)
			end;
		};
	};
end

return t