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
	printlist(shells)
	for i = 1, #shells do
		r = ran(1, #shells) 
		insert(shotgun, shells[r])
		table.remove(shells, r)
	end
	print("AFTER RANDOMIZING:")
	printlist(shotgun)
end

function printlist(listname)
	for i = 1, #listname do
		print(i..". "..listname[i])
	end
end

local seed = userinput("Buckshot Lualette (Alpha)")
if (seed == "") then
	seed = 65536
end
math.randomseed(seed)

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
