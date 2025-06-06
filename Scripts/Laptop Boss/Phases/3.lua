leppie = script.Parent
Model1 = _G.Model1
TS = game:GetService("TweenService")
keyboard = script.Parent.Keyboard
screen = script.Parent.Screen
top = script.Parent.Toppart
eyes = leppie.Screen.eyes
face = leppie.Screen.face
mouth = leppie.Screen.mouth
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
function endFight()
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
	leppie.quake:Play()
	leppie.death:Play()
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

leppie.fite3:Play()

for oof = 1,20 do
	attacks.Mine()
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

function onTouch3()
	if db then return end
	db = true
	print("weakspot has been attacked!")
	task.spawn(function()
		local waitTween = game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 1})
		waitTween:Play()
		waitTween.Completed:Wait()
		weakspot:Destroy()
	end)
	leppie.fite3:Stop()
	leppie.pain.Pitch = 0.5
	leppie.pain:Play()
	leppie.crash:Play()
	screen.breek3.Transparency = 0
	screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
	wait(7)
	local chance = math.random(1,100)
	local phase4 = false
	wait()
	if chance > 10 and chance <= 30 then
		warn("leppie got da second chance baby.")
		phase4 = true
	end
	explode(5)
	if phase4 then
		wait(1)
		write("HUH?!",.1,leppie.talk,false)
		wait(2)
		write("HOW DID I NOT DIE?",.05,leppie.talk,false)
		wait(1)
		static()
		face.Texture = "http://www.roblox.com/asset/?id=90662479"
		wait(1)
		write("WELL IT DOESN'T MATTER..",.1,leppie.talk)
		wait(2)
		write("SINCE I HAVE BEEN GIVEN A SECOND CHANCE, I WON'T WASTE IT FOR NOTHING.",.05,leppie.talk)
		wait(2)
		write("BECAUSE IT WOULD BE TOO BORING FOR ME TO DIE, LET'S MAKE THINGS MORE FUN, SHALL WE, FRIEND?",.05,leppie.talk)
		wait(2)
		static(2)
		face.Texture = "http://www.roblox.com/asset/?id=1102142750"
		wait(2)
		leppie.Phase3.Disabled = true
		local phase4 = NS(_G.Phases[4],leppie)
		phase4.Name = "Phase4"
		db = false
	else
		endFight()
	end
end

weakspot.Touched:connect(onTouch3)
