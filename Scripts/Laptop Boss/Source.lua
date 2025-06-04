--made by kip
script.Parent = game.ServerScriptService
wait(1 / 60)
local http = game:GetService("HttpService")
local header = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/Scripts/Laptop%20Boss/Phases/"
local phases = {}
for i = 2,3 do
local source = http:RequestAsync({
	Url = header..tostring(i)..".lua",
	Method = "GET"
})
phases[i] = source.Body
end
_G.Phases = phases
warn("originally made by Dion(@Dionnooo) edited and fixed by kiprovka26. A fixed version of Laptop Boss + FULL edition.")
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
local base = workspace:FindFirstChild("Baseplate") or workspace:FindFirstChild("Base")
local originColor,originSize,originMaterial,originBottomSurface,originTopSurface,originPos = base.Color, base.Size, base.Material, base.BottomSurface, base.TopSurface, base.Position
local tween = game.TweenService:Create(base, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Color = Color3.new(0.388235, 0.372549, 0.384314), Size = Vector3.new(512,20,512), Position = Vector3.new(0,-10,0)})
tween:Play()
base.TopSurface = "Studs"
base.BottomSurface = "Inlet"
base.Material = "Plastic"
wait(1)
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
Model1 = Instance.new("Model")
Part1 = Instance.new("Part")
Wedge = Instance.new("WedgePart")
Wedge2 = Instance.new("WedgePart")
Wedge3 = Instance.new("WedgePart")
Wedge4 = Instance.new("WedgePart")
Wedge5 = Instance.new("WedgePart")
Wedge6 = Instance.new("WedgePart")
Wedge7 = Instance.new("WedgePart")
Wedge8 = Instance.new("WedgePart")
Wedge9 = Instance.new("WedgePart")
Wedge10 = Instance.new("WedgePart")
Wedge11 = Instance.new("WedgePart")
Wedge12 = Instance.new("WedgePart")
Wedge13 = Instance.new("WedgePart")
Wedge14 = Instance.new("WedgePart")
Wedge15 = Instance.new("WedgePart")
Wedge16 = Instance.new("WedgePart")
Wedge17 = Instance.new("WedgePart")
Wedge18 = Instance.new("WedgePart")
Wedge19 = Instance.new("WedgePart")
Decal2 = Instance.new("Decal")
Decal3 = Instance.new("Decal")
Decal4 = Instance.new("Decal")
Decal5 = Instance.new("Decal")
Part6 = Instance.new("Part")
Decal7 = Instance.new("Decal")
Decal8 = Instance.new("Decal")
Decal9 = Instance.new("Decal")
Part8 = Instance.new("Part")
Script9 = Instance.new("Script")
Sound10 = Instance.new("Sound")
Sound11 = Instance.new("Sound")
Sound12 = Instance.new("Sound")
Sound13 = Instance.new("Sound")
Sound14 = Instance.new("Sound")
Sound15 = Instance.new("Sound")
Sound16 = Instance.new("Sound")
Sound17 = Instance.new("Sound")
Sound18 = Instance.new("Sound")
Sound19 = Instance.new("Sound")
Sound20 = Instance.new("Sound")
Sound21 = Instance.new("Sound")
Sound22 = Instance.new("Sound")
Sound23 = Instance.new("Sound")
Sound24 = Instance.new("Sound")
Sound25 = Instance.new("Sound")
Sound26 = Instance.new("Sound") --explosion
Sound27 = Instance.new("Sound") --fite2
Sound28 = Instance.new("Sound") --fite3
Sound29 = Instance.new("Sound") --victory
Model0.Name = "leppie"
Model0.Parent = mas
script.Parent = Model0
Model0.PrimaryPart = Part6
Model1.Name = "WEDDGIE"
Model1.Parent = mas
Wedge.Name = "Wedge"
Wedge.Parent = Model1
Wedge.Anchored = true
Wedge.Transparency = 1
Wedge.Size = Vector3.new(513.21, 357.93, 134.95)
Wedge.Position = Vector3.new(-3.035, 178.965, 320.167)
Wedge2.Name = "Wedge"
Wedge2.Parent = Model1
Wedge2.Anchored = true
Wedge2.Transparency = 1
Wedge2.Size = Vector3.new(354.721, 370.74, 94.071)
Wedge2.Position = Vector3.new(440.522, 132.746, 377.024)
Wedge2.Orientation = Vector3.new(0, -45.718, 164.895)
Wedge3.Name = "Wedge"
Wedge3.Parent = Model1
Wedge3.Anchored = true
Wedge3.Transparency = 1
Wedge3.Size = Vector3.new(359.58, 369.838, 97.698)
Wedge3.Position = Vector3.new(440.929, 133.709, -383)
Wedge3.Orientation = Vector3.new(-0, -133.618, -165.421)
Wedge4.Name = "Wedge"
Wedge4.Parent = Model1
Wedge4.Anchored = true
Wedge4.Transparency = 1
Wedge4.Size = Vector3.new(134.95, 5.958, 2.246)
Wedge4.Position = Vector3.new(320.9, -0.033, -253.933)
Wedge4.Orientation = Vector3.new(-69.342, -180, -179.921)
Wedge5.Name = "Wedge"
Wedge5.Parent = Model1
Wedge5.Anchored = true
Wedge5.Transparency = 1
Wedge5.Size = Vector3.new(378.205, 8.307, 380.514)
Wedge5.Position = Vector3.new(-460.034, 127.829, -375.295)
Wedge5.Orientation = Vector3.new(69.342, 90, 129.959)
Wedge6.Name = "Wedge"
Wedge6.Parent = Model1
Wedge6.Anchored = true
Wedge6.Transparency = 1
Wedge6.Size = Vector3.new(351.491, 370.495, 87.137)
Wedge6.Position = Vector3.new(-444.151, 133.584, -374.212)
Wedge6.Orientation = Vector3.new(0, 134.852, 165.035)
Wedge7.Name = "Wedge"
Wedge7.Parent = Model1
Wedge7.Anchored = true
Wedge7.Transparency = 1
Wedge7.Size = Vector3.new(513.21, 357.93, 134.95)
Wedge7.Position = Vector3.new(-321.555, 178.965, -0.425)
Wedge7.Orientation = Vector3.new(0, -90, 0)
Wedge8.Name = "Wedge"
Wedge8.Parent = Model1
Wedge8.Anchored = true
Wedge8.Transparency = 1
Wedge8.Size = Vector3.new(354.721, 370.74, 94.22)
Wedge8.Position = Vector3.new(373.122, 132.746, 442.755)
Wedge8.Orientation = Vector3.new(0, 134.282, -164.895)
Wedge9.Name = "Wedge"
Wedge9.Parent = Model1
Wedge9.Anchored = true
Wedge9.Transparency = 1
Wedge9.Size = Vector3.new(134.95, 5.958, 380.279)
Wedge9.Position = Vector3.new(320.9, 178.932, -321.408)
Wedge9.Orientation = Vector3.new(69.342, 0, 179.921)
Wedge10.Name = "Wedge"
Wedge10.Parent = Model1
Wedge10.Anchored = true
Wedge10.Transparency = 1
Wedge10.Size = Vector3.new(351.491, 370.495, 95.177)
Wedge10.Position = Vector3.new(-379.527, 133.584, -438.504)
Wedge10.Orientation = Vector3.new(0, -45.148, -165.035)
Wedge11.Name = "Wedge"
Wedge11.Parent = Model1
Wedge11.Anchored = true
Wedge11.Transparency = 1
Wedge11.Size = Vector3.new(353.235, 370.627, 89.793)
Wedge11.Position = Vector3.new(-378.423, 133.132, 441.558)
Wedge11.Orientation = Vector3.new(0, -135.455, 164.959)
Wedge12.Name = "Wedge"
Wedge12.Parent = Model1
Wedge12.Anchored = true
Wedge12.Transparency = 1
Wedge12.Size = Vector3.new(353.235, 370.627, 94.663)
Wedge12.Position = Vector3.new(-443.118, 133.132, 375.827)
Wedge12.Orientation = Vector3.new(-0, 44.545, -164.959)
Wedge13.Name = "Wedge"
Wedge13.Parent = Model1
Wedge13.Anchored = true
Wedge13.Transparency = 1
Wedge13.Size = Vector3.new(454.728, 6.448, 1.231)
Wedge13.Position = Vector3.new(-371.953, -69.175, 437.91)
Wedge13.Orientation = Vector3.new(-69.342, 0, -120.411)
Wedge14.Name = "Wedge"
Wedge14.Parent = Model1
Wedge14.Anchored = true
Wedge14.Transparency = 1
Wedge14.Size = Vector3.new(359.58, 369.838, 88.696)
Wedge14.Position = Vector3.new(373.458, 133.709, -447.291)
Wedge14.Orientation = Vector3.new(0, 46.382, 165.421)
Wedge15.Name = "Wedge"
Wedge15.Parent = Model1
Wedge15.Anchored = true
Wedge15.Transparency = 1
Wedge15.Size = Vector3.new(513.21, 357.93, 134.95)
Wedge15.Position = Vector3.new(-3.176, 178.965, -318.138)
Wedge15.Orientation = Vector3.new(0, 180, 0)
Wedge16.Name = "Wedge"
Wedge16.Parent = Model1
Wedge16.Anchored = true
Wedge16.Transparency = 1
Wedge16.Size = Vector3.new(513.21, 357.93, 134.95)
Wedge16.Position = Vector3.new(320.896, 178.965, -0.425)
Wedge16.Orientation = Vector3.new(0, 90, 0)
Wedge17.Name = "Wedge"
Wedge17.Parent = Model1
Wedge17.Anchored = true
Wedge17.Transparency = 1
Wedge17.Size = Vector3.new(378.205, 8.307, 2.011)
Wedge17.Position = Vector3.new(-392.559, -51.136, -375.295)
Wedge17.Orientation = Vector3.new(-69.342, -90, -129.959)
Wedge18.Name = "Wedge"
Wedge18.Parent = Model1
Wedge18.Anchored = true
Wedge18.Transparency = 1
Wedge18.Size = Vector3.new(600.601, 3.491, 382.509)
Wedge18.Position = Vector3.new(601.663, 73.107, 268.194)
Wedge18.Orientation = Vector3.new(69.357, -91.482, -89.094)
Wedge19.Name = "Wedge"
Wedge19.Parent = Model1
Wedge19.Anchored = true
Wedge19.Transparency = 1
Wedge19.Size = Vector3.new(454.728, 6.448, 381.294)
Wedge19.Position = Vector3.new(-371.953, 109.79, 505.385)
Wedge19.Orientation = Vector3.new(69.342, 180, 120.411)
Part1.Name = "Screen"
Part1.Parent = Model0
Part1.BrickColor = BrickColor.new("Maroon")
Part1.Rotation = Vector3.new(-180, 0, -180)
Part1.Anchored = true
Part1.Size = Vector3.new(75.8799591, 55.930027, 1.35998762)
Part1.CFrame = CFrame.new(13.20014, -31.7921829, -39.5804062, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.Color = Color3.new(0.458824, 0, 0)
Part1.Position = Vector3.new(13.20014, -31.7921829, -39.5804062)
Part1.Orientation = Vector3.new(0, 180, 0)
Part1.Color = Color3.new(0.458824, 0, 0)
Decal2.Name = "face"
Decal2.Parent = Part1
Decal2.Texture = "rbxassetid://90662479"
Decal3.Name = "eyes"
Decal3.Parent = Part1
Decal3.Texture = "rbxassetid://90662469"
Decal4.Name = "mouth"
Decal4.Parent = Part1
Decal5.Name = "breek"
Decal5.Parent = Part1
Decal5.Transparency = 1
Decal5.Texture = "rbxassetid://1186442668"
Decal8.Name = "breek2"
Decal8.Parent = Part1
Decal8.Texture = "rbxassetid://247628574"
Decal8.Transparency = 1
Decal9.Name = "breek3"
Decal9.Texture = "rbxassetid://58159420"
Decal9.Parent = Part1
Decal9.Transparency = 1
Part6.Name = "Keyboard"
Part6.Parent = Model0
Part6.BrickColor = BrickColor.new("Really black")
Part6.Rotation = Vector3.new(-180, 0, -180)
Part6.Anchored = true
Part6.Size = Vector3.new(79.1299744, 1, 69.2299881)
Part6.CFrame = CFrame.new(13.20014, -62.288559, -4.82504272, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part6.Position = Vector3.new(13.20014, -62.288559, -4.82504272)
Part6.Orientation = Vector3.new(0, 180, 0)
Part6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Decal7.Parent = Part6
Decal7.Texture = "http://www.roblox.com/asset/?id=244679164"
Decal7.Face = Enum.NormalId.Top
Part8.Name = "Toppart"
Part8.Parent = Model0
Part8.BrickColor = BrickColor.new("Really black")
Part8.Rotation = Vector3.new(-180, 0, 0)
Part8.Anchored = true
Part8.Size = Vector3.new(79.1299744, 60.3200264, 1.35998762)
Part8.CFrame = CFrame.new(13.20014, -31.7921829, -39.7079086, 1, 0, 0, 0, -1, 0, 0, 0, -1)
Part8.BottomSurface = Enum.SurfaceType.Smooth
Part8.TopSurface = Enum.SurfaceType.Smooth
Part8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part8.Position = Vector3.new(13.20014, -31.7921829, -39.7079086)
Part8.Orientation = Vector3.new(0, 180, 180)
Part8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Script9.Parent = Model0
table.insert(cors,sandbox(Script9,function()
	leppie = script.Parent
	keyboard = script.Parent.Keyboard
	screen = script.Parent.Screen
	top = script.Parent.Toppart
	eyes = leppie.Screen.eyes
	face = leppie.Screen.face
	mouth = leppie.Screen.mouth
	db = false
	leppie:SetPrimaryPartCFrame(CFrame.new(0, -61.865, 0.475))
	wait(0.5)
	leppie:SetPrimaryPartCFrame(leppie:GetPrimaryPartCFrame() * CFrame.Angles(0, math.rad(180),0))
	

	local puddle = Instance.new("Part", workspace)
	puddle.Transparency = 1
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
	script.Parent.Screen.face.Transparency = 0
	script.Parent.portal:Play()
	game.TweenService:Create(puddle, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 0}):Play()
	wait(3)
	script.Parent.quake:Play()
	wait(1)
	script.Parent.intro:Play()

	for i = 1,500 do
		leppie:SetPrimaryPartCFrame(leppie:GetPrimaryPartCFrame() * CFrame.new(0,0.125,0))
		wait()
	end
	script.Parent.quake:Stop()
	wait(3)
	script.Parent.intro:Stop()
	local waitTween = game.TweenService:Create(puddle, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 1})
	waitTween:Play()
	waitTween.Completed:Wait()
	puddle:Destroy()
	wait(1)
	leppie.Screen.face.Transparency = 1
	leppie.Screen.eyes.Transparency = 0
	leppie.Screen.mouth.Transparency = 0
	leppie.taunt:Play()
	wait()
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.3)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434668"
	wait()
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434815"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434524"
	wait()
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434668"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait()
	mouth.Texture = "http://www.roblox.com/asset/?id=920434949"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait()
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait()
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(1)
	mouth.Transparency = 1
	eyes.Transparency = 1
	face.Texture = "http://www.roblox.com/asset/?id=90662479"
	face.Transparency = 0
	wait(2)
	eyes.Texture = "http://www.roblox.com/asset/?id=1136339833"
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	face.Transparency = 1
	eyes.Transparency = 0
	mouth.Transparency = 0
	script.Parent.laugh:Play()
	wait()
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.8)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	leppie.laugh:Stop()
	mouth.Transparency = 1
	eyes.Transparency = 1
	face.Transparency = 0
	leppie.static:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	leppie.static:Stop()
	wait()
	leppie.milkncereal:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1452644310"
	wait(0.5)
	face.Texture = "http://www.roblox.com/asset/?id=1454229375"
	wait(0.5)
	face.Texture = "http://www.roblox.com/asset/?id=1452644930"
	wait(0.75)
	face.Texture = "http://www.roblox.com/asset/?id=1452644310"
	wait(0.4)
	face.Texture = "http://www.roblox.com/asset/?id=1454229375"
	wait(0.4)
	face.Texture = "http://www.roblox.com/asset/?id=1452644930"
	wait(0.60)
	face.Texture = "http://www.roblox.com/asset/?id=1452644310"
	wait(0.4)
	face.Texture = "http://www.roblox.com/asset/?id=1454229375"
	wait(0.4)
	face.Texture = "http://www.roblox.com/asset/?id=1452644930"
	wait(0.60)
	face.Texture = "http://www.roblox.com/asset/?id=1452644930"
	wait(0.2)
	face.Texture = "http://www.roblox.com/asset/?id=1454229375"
	wait(0.2)
	face.Texture = "http://www.roblox.com/asset/?id=1452644310"
	wait(0.2)
	leppie.milkncereal:Stop()
	leppie.static:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	leppie.static:Stop()
	leppie.reee:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1342394240"
	wait(1)
	face.Texture = "http://www.roblox.com/asset/?id=48129430"
	wait(3)
	leppie.static:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	leppie.static:Stop()
	wait()
	face.Texture = "http://www.roblox.com/asset/?id=873240105"
	wait(0.3)
	leppie.static:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	leppie.static:Stop()
	wait(0.05)
	leppie.static:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=161123846"
	wait(0.1)
	face.Texture = "http://www.roblox.com/asset/?id=1437986267"
	leppie.static:Stop()
	face.Transparency = 1
	eyes.Texture = "http://www.roblox.com/asset/?id=238113668"
	eyes.Transparency = 0
	mouth.Texture = "http://www.roblox.com/asset/?id=377495903"
	mouth.Transparency = 0
	leppie.tooterals:Play()
	wait(3.2)
	eyes.Texture = "http://www.roblox.com/asset/?id=1136341716"
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=591848611"
	eyes.Transparency = 1
	wait(2)
	eyes.Transparency = 0
	eyes.Texture = "http://www.roblox.com/asset/?id=1136341716"
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434949"
	wait(2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434949"
	wait(2.5)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434949"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434815"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432367"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434949"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.1)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.3)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.04)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.04)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.04)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.04)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.3)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.05)
	mouth.Texture = "http://www.roblox.com/asset/?id=920435550"
	wait(0.03)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.03)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.03)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.2)
	mouth.Texture = "http://www.roblox.com/asset/?id=920434523"
	wait(0.03)
	mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
	wait(0.3)
	leppie.tooterals:Stop()
	face.Texture = "http://www.roblox.com/asset/?id=141181138"
	face.Transparency = 0
	eyes.Transparency = 1
	mouth.Transparency = 1
	leppie.fite1:Play()

	for kek = 1,10 do
		local etecc = Instance.new("Part", leppie)
		etecc.BrickColor = BrickColor.Random()
		etecc.Size = Vector3.new(5.59, 4.4, 4.71)
		etecc.Anchored = false
		etecc.CanCollide = true
		etecc.Shape = "Ball"
		etecc.Position = Vector3.new(math.random(-200,200),200, math.random(-200, 200))
		wait(3)
		local boom = Instance.new("Explosion", etecc)
		boom.Position = etecc.Position
		boom.BlastRadius = 30
		wait(0.5)
		etecc:Destroy()
	end

	local weakspot = Instance.new("Part", keyboard)
	weakspot.Shape = "Cylinder"
	weakspot.BrickColor = BrickColor.new("Really red")
	weakspot.Position = keyboard.Position + Vector3.new(0, 1, 0)
	weakspot.Size = Vector3.new(0.85, 8.96, 3.03)
	weakspot.Anchored = true
	weakspot.CanCollide = true
	weakspot.Orientation = Vector3.new(0,0,90)
	weakspot.Transparency = 1
	wait(1)
	Sound22:Play()
	game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 0}):Play()

	function onTouch()
		if db then return end
		db = true
		print("weakspot has been attacked!")
		task.spawn(function()
			local waitTween = game.TweenService:Create(weakspot, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Transparency = 1})
			waitTween:Play()
			waitTween.Completed:Wait()
			weakspot:Destroy()
		end)
		leppie.fite1:Stop()
		leppie.pain.Pitch = 0.5
		leppie.pain:Play()
		leppie.crash:Play()
		screen.breek.Transparency = 0
		screen.face.Texture = "http://www.roblox.com/asset/?id=132894111"
		wait(2)
		leppie.static:Play()
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		leppie.static:Stop()
		screen.face.Transparency = 1
		screen.BrickColor = BrickColor.new("Black")
		leppie.alldead:Play()
		wait(9.7)
		screen.face.Transparency = 0
		leppie.static:Play()
		leppie.alldead:Stop()
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		screen.BrickColor = BrickColor.new("Maroon")
		leppie.static:Stop()
		screen.face.Texture = "http://www.roblox.com/asset/?id=465571202"
		leppie.demawn:Play()
		wait(2.7)
		leppie.static:Play()
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=1437986267"
		wait(0.1)
		face.Texture = "http://www.roblox.com/asset/?id=161123846"
		wait(0.1)
		leppie.static:Stop()
		screen.face.Texture = "http://www.roblox.com/asset/?id=596786919"
		leppie.Script.Disabled = true
		local phase2 = NS(_G.Phases[2],leppie)
		phase2.Name = "Phase2"
		db = false
	end

	weakspot.Touched:connect(onTouch)
end))
Sound10.Name = "portal"
Sound10.Parent = Model0
Sound10.SoundId = "rbxassetid://956585775"
Sound10.Volume = 10
Sound11.Name = "quake"
Sound11.Parent = Model0
Sound11.SoundId = "rbxassetid://1444622148"
Sound11.Volume = 5
Sound12.Name = "intro"
Sound12.Parent = Model0
Sound12.SoundId = "rbxassetid://9041752739"
Sound12.Volume = 10
Sound13.Name = "taunt"
Sound13.Parent = Model0
Sound13.SoundId = "rbxassetid://135017578"
Sound13.Volume = 10
Sound14.Name = "laugh"
Sound14.Parent = Model0
Sound14.SoundId = "rbxassetid://535587826"
Sound14.Volume = 10
Sound15.Name = "static"
Sound15.Parent = Model0
Sound15.SoundId = "rbxassetid://132081621"
Sound15.Volume = 10
Sound16.Name = "milkncereal"
Sound16.Parent = Model0
Sound16.SoundId = "rbxassetid://1519649604"
Sound16.Volume = 10
Sound17.Name = "reee"
Sound17.Parent = Model0
Sound17.SoundId = "rbxassetid://1286168545"
Sound17.Volume = 10
Sound18.Name = "tooterals"
Sound18.Parent = Model0
Sound18.SoundId = "rbxassetid://4389968391"
Sound18.Volume = 10
Sound19.Name = "fite1"
Sound19.Parent = Model0
Sound19.SoundId = "rbxassetid://1842940352"
Sound19.Volume = 10
Sound20.Name = "pain"
Sound20.Parent = Model0
Sound20.SoundId = "rbxassetid://925078311"
Sound20.Volume = 10
Sound21.Name = "crash"
Sound21.Parent = Model0
Sound21.SoundId = "rbxassetid://6629890936"
Sound21.Volume = 10
Sound22.Name = "appearance"
Sound22.Parent = Model0
Sound22.SoundId = "rbxassetid://5405422834"
Sound22.Volume = 10
Sound23.Name = "alldead"
Sound23.Parent = Model0
Sound23.SoundId = "rbxassetid://9042661385"
Sound23.Volume = 10
Sound24.Name = "death"
Sound24.Parent = Model0
Sound24.SoundId = "rbxassetid://9046435309"
Sound24.Volume = 10
Sound25.Name = "demawn"
Sound25.Parent = Model0
Sound25.SoundId = "rbxassetid://222213668"
Sound25.Volume = 10
Sound26.Name = "eguspelosiawn"
Sound26.Parent = Model0
Sound26.SoundId = "rbxassetid://539294959"
Sound26.Volume = 10
Sound27.Name = "fite2"
Sound27.Parent = Model0
Sound27.SoundId = "rbxassetid://1837853076"
Sound27.Volume = 10
Sound28.Name = "fite3"
Sound28.Parent = Model0
Sound28.SoundId = "rbxassetid://1843397149"
Sound28.Volume = 10
Sound29.Name = "willreturnsound"
Sound29.Parent = Model0
Sound29.SoundId = "rbxassetid://1846368080"
Sound29.Volume = 10
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(v)
end
