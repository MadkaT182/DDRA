local t = Def.ActorFrame{};

--Background
t[#t+1] = LoadActor("SongNamebg")..{
}

--Song Information
t[#t+1] = LoadFont("_arial_black 18px") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		-- if vSong then
			sText = vSong:GetDisplayFullTitle()
		-- end
		-- if vCourse then
		-- 	sText = vSong:GetDisplayFullTitle()
		-- end
		self:settext( sText );
		self:horizalign(center);
		self:playcommand( "On" );
		self:addy(-7);
		self:maxwidth(220);
	end;
}

--Artist Information
t[#t+1] = LoadFont("_arial_blk12px") .. {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Refresh");
	RefreshCommand=function(self)
		local vSong = GAMESTATE:GetCurrentSong();
		local vCourse = GAMESTATE:GetCurrentCourse();
		local sText = ""
		-- if vSong then
			sText = vSong:GetDisplayArtist()
		-- end
		-- if vCourse then
		-- 	sText = vSong:GetDisplayArtist()
		-- end
		self:settext( sText );
		self:horizalign(center);
		self:playcommand( "On" );
		self:addy(11);
		self:maxwidth(220);
	end;
}

return t