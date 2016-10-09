local t = Def.ActorFrame{};


if CautionToMusic == 1 then
	t[#t+1] = LoadActor(THEME:GetPathB("","_doors open.lua"));
end

return t
