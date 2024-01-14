function userinput(text)
	print(text)
	local rtn = io.read()
	return rtn
end

userinput("Buckshot Lualette (Alpha)")

username = userinput("> Got a name?")
username = username == "" and "Username"
userinput("Welcome aboard, "..username..".")
userinput("I hope you weren't expecting more formalities. It's too soon for that.")
shotgun = {}
shells = {}

--round 1
print("---------\nROUND 1/4\n---------")
userinput("2 lives, no items.")


