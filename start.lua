insert = table.insert
ran = math.random

function userinput(text)
	print(text)
	local rtn = io.read()
	return rtn
end

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

function printlist(listname)
	for i = 1, #listname do
		print(i..". "..listname[i])
	end
end

local seed = userinput("Buckshot Lualette (Alpha)")

if (seed ~= "") then
	math.randomseed(seed)
	print("SEED:"..seed)
else
	math.randomseed(os.time())
	print("SEED:"..os.time())
end


username = userinput("> Got a name?")
username = username == "" and "Username"
userinput("Welcome aboard, "..username..".")
userinput("I hope you weren't expecting more formalities. It's too soon for that.")
shotgun = {}
shells = {}

--round 1
print("---------\nROUND 1/4\n---------")
userinput("2 lives, no items.")


--player's turn
loadshotgun(1,2)
userinput("> Your move.")
