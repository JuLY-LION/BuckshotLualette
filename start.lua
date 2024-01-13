function userinput(text)
	print(text)
	local rtn = io.read()
	return rtn
end

userinput("Buckshot Lualette (Alpha)")

username = userinput("Got a name?")
userinput("Welcome aboard, "..username..".")

