leppie = script.Parent
Model1 = _G.Model1
TS = game:GetService("TweenService")
keyboard = script.Parent.Keyboard
screen = script.Parent.Screen
top = script.Parent.Toppart
eyes = leppie.Screen.eyes
face = leppie.Screen.face
mouth = leppie.Screen.mouth
RNG = Random.new()
db = false
base = _G.base
baseStuff = _G.baseStuff
write = _G.write
static = _G.static
attacks = _G.Attacks
function explode(amount)
	for i = 1,amount do
		local explosiontrigger = Instance.new("Part", keyboard)
		explosiontrigger.Position = Vector3.new(math.random(-79.13,79.13),math.random(-1,1), math.random(-69.23, 69.23))
		explosiontrigger.Anchored = true
		explosiontrigger.Transparency = 1
		explosiontrigger.CanCollide = false
		local boom = Instance.new("Explosion", explosiontrigger)
		boom.Position = explosiontrigger.Position
		boom.BlastRadius = 10
		leppie.eguspelosiawn:Play()
		wait(1)
		explosiontrigger:Destroy()
		wait()
		local explosiontrigger2 = Instance.new("Part", keyboard)
		explosiontrigger2.Position = Vector3.new(math.random(-79.13,79.13),math.random(-1,1), math.random(-69.23, 69.23))
		explosiontrigger2.Anchored = true
		explosiontrigger2.Transparency = 1
		explosiontrigger2.CanCollide = false
		local boom = Instance.new("Explosion", explosiontrigger2)
		boom.Position = explosiontrigger2.Position
		boom.BlastRadius = 10
		leppie.eguspelosiawn:Play()
		wait(0.5)	
		explosiontrigger2:Destroy()	
		wait()
	end
end
_G.explode = explode

leppie.fite5:Play()
function getTarget()
	players = game:GetService("Players"):GetPlayers()
	rngPlayer = players[RNG:NextInteger(1,#players)]
	if rngPlayer then
		local char = rngPlayer.Character
		if char then
			return char
		end
	end
end
for gren = 1,20 do
	local target = getTarget()
	if target then
		spawn(function()
			for i = 1,5 do
				attacks.Grenade(target)
				wait(1)
			end
		end)
	end
	wait(5)
end

local weakspot = Instance.new("Part", keyboard)
weakspot.Shape = "Cylinder"
weakspot.BrickColor = BrickColor.new("Maroon")
weakspot.Position = keyboard.Position + Vector3.new(0, 1, 0)
weakspot.Size = Vector3.new(0.85, 8.96, 3.03)
weakspot.Anchored = true
weakspot.CanCollide = true
weakspot.Orientation = Vector3.new(0,0,90)
weakspot.Transparency = 1
wait(1)
game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 0}):Play()

function onTouch5()
	if db then return end
	db = true
	print("weakspot has been attacked!")
	task.spawn(function()
		local waitTween = game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 1})
		waitTween:Play()
		waitTween.Completed:Wait()
		weakspot:Destroy()
	end)
	leppie.fite5:Stop()
	leppie.pain.Pitch = 0.5
	leppie.pain:Play()
	leppie.crash:Play()
	screen.breek5.Transparency = 0
	screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
	wait(7)
	static(2)
	face.Texture = "http://www.roblox.com/asset/?id=90662479"
	write("NICE MOVES, FRIEND.",.1,leppie.talk)
	wait(2)
	write("ALTHOUGH I SHOULDN'T BE ON YOUR SIDE, YOUR MOVES ARE ASTONISHING.",.05,leppie.talk)
	wait(1)
	write("BUT THIS ISN'T WHERE IT ENDS..",.1,leppie.talk)
	wait(2)
	write("SINCE I CAN STILL WITHSTAND ANOTHER BLOW, OUR FUN CONTINUES.",.05,leppie.talk)
	wait(2)
	write("GOOD LUCK, MY DEAR FRIEND..",.1,leppie.talk)
	wait(2)
	static(2)
	face.Texture = "http://www.roblox.com/asset/?id=16332986504"
	wait(2)
	leppie.Phase5.Disabled = true
  local phase6 = NS(_G.Phases[6],leppie)
	phase6.Name = "Phase6"
	db = false
end

weakspot.Touched:connect(onTouch5)
