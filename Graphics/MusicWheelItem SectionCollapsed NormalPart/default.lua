local t = Def.ActorFrame {

	--DefaultBG
 	LoadActor("normal")..{
	};
  LoadFont("_arial black 20px")..{
		InitCommand=cmd(y,8;zoom,0.7;maxwidth,320;diffuse,Color("White");uppercase,true);
		SetCommand=function(self,params)
			self:stoptweening();
			self:settextf("%s",params.Text);
    end;
  };

};
return t;
