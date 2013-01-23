--First Miner Program
shell.run('clear')
--Get input from user
print("Please enter length of desired tunnel.")
local tunnelLength = io.read()
print("Please enter width of desired tunnel.")
local tunnelWidth = io.read()
print("Please enter height of desired tunnel.")
local tunnelHeight = io.read()

--Begin digging tunnel
for i = 0, tunnelLength do
  turtle.dig()
	DigHeight()
	DigWidth()
	turtle.forward()
end

for i = 0, tunnelLength do
	turtle.back()
end

--Dig tunnel to specified height
function DigHeight()
	for i = 1, tunnelHeight do
		turtle.digUp()
		turtle.up()
	end
	for i = 1, tunnelHeight do
		turtle.down()
	end
end

--Dig tunnel to specified width
function DigWidth()
	turtle.turnRight()
	for i = 1, tunnelWidth do
		turtle.dig()
		turtle.forward()
		DigHeight()
	end
	turtle.turnRight()
	turtle.turnRight()
	for i = 1, tunnelWidth do
		turtle.forward()
	end
	turtle.turnRight()
end
