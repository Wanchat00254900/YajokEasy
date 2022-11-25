Bans = {
"za0623247821"
}


for i,v in pairs(game.Players:children()) do
	
	if not table.find(Bans,v.Name) then
		
		v:Kick("You Are Banned")
		
	end
	
end


