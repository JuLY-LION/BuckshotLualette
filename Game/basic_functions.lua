function userinput(text)
	print(text)
	local rtn = io.read()
	return rtn
end

function printlist(listname)
	for i = 1, #listname do
		print(i..". "..listname[i])
	end
end
