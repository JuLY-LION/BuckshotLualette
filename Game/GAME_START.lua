require("basic_functions")
require("game_functions")
--require("file1")

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
playerHP, dealerHP

--round 1



--player's turn
loadshotgun(1,2)
userinput("> Your move.")
