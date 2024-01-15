insert = table.insert
ran = math.random

--[[
# loadshotgun
(Load Shotgun)
l: Live rounds
d: Dud rounds

Clears the shotgun of any ammo and loads the all live and dud rounds in a random order.
]]--
function loadshotgun(l, d)
	shotgun = {}
	shells = {}
	--shells = {"A", "B", "C", "D", "E", "F", "G", "H"}
	if (l > 1) then
		print(l+d.." total shells, "..l.." are live.")
	else
		print(l+d.." total shells, only 1 is live.")
	end
	for i = 1, l do
		insert(shells, "live")
	end
	for i = 1, d do
		insert(shells, "dud")
	end
	--printlist(shells)
	local r = ran(1, #shells)
	--^This line has to exist to not break the randomizer. Not sure why.
	for i = 1, #shells do
		r = ran(1, #shells)
		--print(r)
		insert(shotgun, shells[r])
		table.remove(shells, r)
	end
	print("AFTER RANDOMIZING:")
	printlist(shotgun)
	--print(ran())
end

