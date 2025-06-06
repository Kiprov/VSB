leppie = script.Parent
TS = game:GetService("TweenService")
keyboard = script.Parent.Keyboard
screen = script.Parent.Screen
top = script.Parent.Toppart
eyes = leppie.Screen.eyes
face = leppie.Screen.face
mouth = leppie.Screen.mouth
db = false
static = _G.static
attacks = _G.Attacks

wait(2)
leppie.fite2:Play()
wait(2)
for kek2 = 1,10 do
	for i = 1,20 do
		spawn(function()
			attacks.Bomb()
		end)
	end
	wait(6)
end
local weakspot = Instance.new("Part", keyboard)
weakspot.Shape = "Cylinder"
weakspot.BrickColor = BrickColor.new("Crimson")
weakspot.Position = keyboard.Position + Vector3.new(0, 1, 0)
weakspot.Size = Vector3.new(0.85, 8.96, 3.03)
weakspot.Anchored = true
weakspot.CanCollide = true
weakspot.Orientation = Vector3.new(0,0,90)
weakspot.Transparency = 1
wait(1)
game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 0}):Play()

function onTouch2()
	if db then return end
	db = true
	print("weakspot has been attacked!")
	task.spawn(function()
		local waitTween = game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 1})
		waitTween:Play()
		waitTween.Completed:Wait()
		weakspot:Destroy()
	end)
	leppie.fite2:Stop()
	leppie.pain.Pitch = 0.5
	leppie.pain:Play()
	leppie.crash:Play()
	screen.breek2.Transparency = 0
	screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
	wait(7)
	static(2)
	face.Texture = "http://www.roblox.com/asset/?id=301890436"
	wait(2)
	leppie.Phase2.Disabled = true
	local phase3 = NS(_G.Phases[3],leppie)
	phase3.Name = "Phase3"
	db = false
end

weakspot.Touched:connect(onTouch2)
