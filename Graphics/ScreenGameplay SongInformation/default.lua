local t = Def.ActorFrame{};

--Background
t[#t+1] = LoadActor("SongNamebg")..{
}

--Song Information
t[#t+1] = LoadFont("_arial black 20px") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		if vSong then
			sText = vSong:GetDisplayFullTitle() .. "\n" .. vSong:GetDisplayArtist()
		end
		if vCourse then
			sText = vSong:GetDisplayFullTitle() .. "\n" .. vSong:GetDisplayArtist()
		end
		self:settext( sText );
		self:horizalign(center);
		self:playcommand( "On" );
		self:maxwidth(220);
	end;
}

return t