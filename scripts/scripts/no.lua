local n = io.read("*n")

for i = n, 1, -1 do
	if i % n == 0 then
		print(i)
	end
end
