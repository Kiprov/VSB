leppie = script.Parent
	TS = game:GetService("TweenService")
	keyboard = script.Parent.Keyboard
	screen = script.Parent.Screen
	top = script.Parent.Toppart
	eyes = leppie.Screen.eyes
	face = leppie.Screen.face
	mouth = leppie.Screen.mouth
	db = false

	leppie.fite3:Play()

	for oof = 1,50 do
		local mine = Instance.new("Part", leppie)
		mine.Shape = "Cylinder"
		mine.BrickColor = BrickColor.new("Crimson")
		mine.Position = Vector3.new(math.random(-100,100),1, math.random(-100, 100))
		mine.Size = Vector3.new(0.85, 8.96, 3.03)
		mine.Anchored = true
		mine.CanCollide = false
		mine.Orientation = Vector3.new(0,0,90)
		wait(1)
		local boom = Instance.new("Explosion", mine)
		boom.Position = mine.Position
		boom.BlastRadius = 30
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
		for explo = 1,20 do
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
		if workspace:FindFirstChild("Baseplate") then
			while leppie.willreturnsound.IsPlaying == true do
				game.Workspace.Baseplate.BrickColor = BrickColor.Random()
				wait(0.3)
			end
			local tween = game.TweenService:Create(base, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Color = originColor, Size = originSize, Position = originPos})
			tween:Play()
			base.TopSurface = originTopSurface
			base.BottomSurface = originBottomSurface
			base.Material = originMaterial
			tween.Completed:Wait()
			wait(1)
			leppie:Destroy()
			Model1:Destroy()
		elseif workspace:FindFirstChild("Base") then
			while leppie.willreturnsound.IsPlaying == true do
				game.Workspace.Base.BrickColor = BrickColor.Random()
				wait(0.3)
			end
			local tween = game.TweenService:Create(base, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Color = originColor, Size = originSize, Position = originPos})
			tween:Play()
			base.TopSurface = originTopSurface
			base.BottomSurface = originBottomSurface
			base.Material = originMaterial
			tween.Completed:Wait()
			wait(1)
			leppie:Destroy()
			Model1:Destroy()
		else
			--return
		end
	end

	weakspot.Touched:connect(onTouch3)