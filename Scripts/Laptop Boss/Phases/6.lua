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
laugh = _G.laugh
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
function endFight(puddle)
	leppie.quake:Play()
	leppie.death:Play()
	spawn(function()
		write("NO.. NO!!!",.05,leppie.talk)
		wait(2)
		write("YOU CAN'T DO THIS TO ME!!",.05,leppie.talk)
		wait(1)
		write("I AM YOUR GOD, YOU SHOULD OBEY ME",.05,leppie.talk)
		wait(1)
		write("STOP IT! STOP IT!!",.05,leppie.talk)
		wait(1)
		write("STOOOOOOOOOOOOOOOOOOOOOOP!",.1,leppie.talk)
	end)
	for i = 1,500 do
		leppie:SetPrimaryPartCFrame(leppie:GetPrimaryPartCFrame() * CFrame.new(0,-0.125,0))
		wait()
	end
	game.TweenService:Create(puddle, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 1}):Play()
	leppie.quake:Stop()
	leppie.death:Stop()
	leppie.willreturnsound:Play()
	puddle:Destroy()
	db = false
	wait(1)
	while leppie.willreturnsound.IsPlaying == true do
		game.Workspace.Baseplate.BrickColor = BrickColor.Random()
		wait(0.3)
	end
	local tween = game.TweenService:Create(base, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Color = baseStuff[1], Size = baseStuff[2], Position = baseStuff[6]})
	tween:Play()
	base.TopSurface = baseStuff[5]
	base.BottomSurface = baseStuff[4]
	base.Material = baseStuff[3]
	tween.Completed:Wait()
	wait(1)
	leppie:Destroy()
	Model1:Destroy()
end
_G.endfight = endFight

leppie.fite6:Play()
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
-- Phase Attacks(i cant make other attacks)
-- Phase 1
for kek = 1,10 do
	attacks.Bomb()
end
-- Phase 2
for kek2 = 1,10 do
	for i = 1,20 do
		spawn(function()
			attacks.Bomb()
		end)
	end
	wait(6)
end
-- Phase 3
for oof = 1,20 do
	attacks.Mine()
end
-- Phase 4
for gast = 1,20 do
	local target = getTarget()
	if target then
		spawn(function()
			for i = 1,5 do
				attacks.Gaster(target,100)
				wait(1)
			end
		end)
	end
	wait(5)
end
-- Phase 5
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
-- Phase 6
for gren = 1,20 do
	spawn(function() -- Phase 1
		attacks.Bomb()
	end)
	spawn(function() -- Phase 2
		for i = 1,20 do
			spawn(function()
				attacks.Bomb()
			end)
		end
	end)
	spawn(function() -- Phase 3
		attacks.Mine()
	end)
	-- Phase 4 and 5
	local target = getTarget()
	if target then
		spawn(function()
			for i = 1,5 do
				attacks.Gaster(target,100)
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

function onTouch6()
	if db then return end
	db = true
	print("weakspot has been attacked!")
	task.spawn(function()
		local waitTween = game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 1})
		waitTween:Play()
		waitTween.Completed:Wait()
		weakspot:Destroy()
	end)
	leppie.fite6:Stop()
	leppie.pain.Pitch = 0.5
	leppie.pain:Play()
	leppie.crash:Play()
	screen.breek6.Transparency = 0
	screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
	wait(7)
	explode(10)
	leppie.destroyed:Play()
	local stat = true
	spawn(function()
		while stat do
			static(1)
			screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
			wait(1)
		end
	end)
	write("NO. NO. NO!!!",.1,leppie.talk,false)
	wait(2)
	static(1)
	screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
	write("THIS CAN'T BE HAPPENING..",.1,leppie.talk,false)
	wait(2)
	static(2)
	screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
	write("YOU.. YOU.. YOU!!!",.1,leppie.talk,false)
	wait(7)
	leppie.trold:Play()
	leppie.destroyed:Stop()
	stat = false
	screen.face.Texture = "http://www.roblox.com/asset/?id=337223518"
	wait(2)
	write("YOU REALLY ARE AN IDIOT.",.1,leppie.talk,false)
	wait(2)
	write("PREPARE TO DIE!!",.1,leppie.talk,false)
	wait(2)
	laugh()
	static(1)
	screen.face.Texture = "http://www.roblox.com/asset/?id=90662479"
	write("WAIT. WHAT'S HAPPENING?",.1,leppie.talk)
	wait(2)
	write("WHY CAN'T I KILL YOU?",.1,leppie.talk)
	wait(2)
	local puddle = Instance.new("Part", workspace)
	leppie.portal:Play()
	puddle.Transparency = 1
	game.TweenService:Create(puddle, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 0}):Play()
	puddle.Anchored = true
	puddle.CanCollide = false
	puddle.Locked = true
	puddle.Position = Vector3.new(0, 0.5, 0.475)
	puddle.BrickColor = BrickColor.new("Really red")
	puddle.Shape = "Cylinder"
	puddle.Size = Vector3.new(0.6, 129.53, 132.12)
	puddle.Orientation = Vector3.new(0,0,90)
	puddle.Material = "Neon"
	wait(1)
	endFight(puddle)
end

weakspot.Touched:connect(onTouch6)
