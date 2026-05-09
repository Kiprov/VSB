--[[
-----Nuclear Hulk-------
MOVES:
Q - Roar
Z - Grab
C - Ground Punch
H - Ground Barrage
B - Sprint Toggle
N - Theme Toggle
M - HULLLLK SMAAASH!
]]--
local http = game:GetService("HttpService")
local controlsURL = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/FE/Controls.lua"
local controlsSource = http:RequestAsync({
	Url = controlsURL,
	Method = "GET"
})
local deploy = NS(controlsSource.Body,game:GetService("ServerScriptService"))
deploy.Name = "Controls_"..script.Name.."_"..owner.UserId
warn("loading controls")
repeat wait() until _G.controls ~= nil
local controls = _G.controls
controls(script.Name, [[
Q - Roar
Z - Grab
C - Ground Punch
H - Ground Barrage
B - Sprint Toggle
N - Theme Toggle
M - HULLLLK SMAAASH!
]])
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local p = Players.LocalPlayer
local char = p.Character
local hum = char.Humanoid
local mouse = p:GetMouse()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local hed = char.Head
local torso = char.Torso
local cam = game.Workspace.CurrentCamera
local root = char.HumanoidRootPart
local deb = false
local shot = 0
local l = game:GetService("Lighting")
local rs = game:GetService("RunService").RenderStepped
local stanceToggle = "Normal"
local rad = math.rad
local GroundShake = false
local GroundShake2 = false
local themeState = "Playing"
hum.WalkSpeed = 5
hum.MaxHealth = math.huge
hum.Health = math.huge
----------------------------------------------------
Debounces = {
	on = false;
	ks = false;
	CanAttack = true;
	CanJoke = true;
	NoIdl = false;
	Slashing = false;
	Slashed = false;
	Grabbing = false;
	Grabbed = false;
}
debrisSFX = {9114221559,9114221264,9114221862,9114221131,9114221327,9114222038,9114220912,9114221035,9114220841,9114221443}
local Touche = {char.Name, }
----------------------------------------------------
function lerp(a, b, t) -- Linear interpolation
	return a + (b - a)*t
end
function so(id,parent,pitch,volume,play)
	pitch = pitch or 1
	volume = volume or 1
	if play == nil then
		play = true
	end
	local sound = Instance.new("Sound", parent)
	sound.SoundId = "rbxassetid://"..id
	sound.PlaybackSpeed = pitch
	sound.Volume = volume
	sound.PlaybackRegionsEnabled = true
	sound.Ended:Connect(function()
		sound:Destroy()
	end)
	if play == true then sound:Play() end
	return sound
end
function Intro()
	wait(0.25)
	theme:Play()
	hum.WalkSpeed = 0
	Debounces.CanAttack = false
	Debounces.on = true
	Debounces.NoIdl = true
	root.Anchored = true
	for i = 1, 20 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.2, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -1.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.6, -2, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
		if Debounces.on == false then break end
		wait()
	end
	repeat wait() until theme.TimePosition >= 5.32
	root.Anchored = false
	for i = 1, 30 do
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-34)), 0.2)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(34)), 0.2)
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.2)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.2)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		if Debounces.on == false then break end
		wait()
	end
	repeat wait() until theme.TimePosition >= 12.05
	so(862467390, char, 0.94, 10)
	local Shockwave = function()
		local rng1 = Instance.new("Part", char)
		rng1.Anchored = true
		rng1.BrickColor = BrickColor.new("Lime green")
		rng1.CanCollide = false
		rng1.FormFactor = 3
		rng1.Name = "Ring"
		rng1.Size = Vector3.new(1, 1, 1)
		rng1.Transparency = 0.35
		rng1.TopSurface = 0
		rng1.BottomSurface = 0
		local rngm1 = Instance.new("SpecialMesh", rng1)
		rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
		rngm1.Scale = Vector3.new(10, 10, 1)
		rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
		local Wave = Instance.new("Part", game.Workspace--[[?]])
		Wave.Name = "Shockwave"
		Wave.BrickColor = BrickColor.new("Lime green")
		Wave.Size = Vector3.new(1, 1, 1)
		Wave.Shape = "Ball"
		Wave.CanCollide = false
		Wave.Anchored = true
		Wave.TopSurface = 0
		Wave.BottomSurface = 0
		Wave.Touched:connect(function(hit)
			if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
				local Occlude = true
				local NotOccludes = {
					char.Name;
					"Wings";
					"Scythe";
					"Thingy";
					"Thingy2"; -- put all of the names in a table pls
				}
				for i,v in pairs(NotOccludes) do
					if hit.Parent.Name == v then
						Occlude = false
					end
				end
				--if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
				if Occlude then
					hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
					hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
				end
			end
		end)

		Instance.new("SpecialMesh", Wave).MeshType = "Sphere"

		coroutine.wrap(function()
			for i = 1, 20, 0.2 do
				rngm1.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
				rng1.Transparency = i/20
				rng1.CFrame = Wave.CFrame
				wait()
			end
			wait()
			rng1:Destroy()
		end)()

		Delay(0, function()


			for i = 1, 50, 1 do
				Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
				Wave.CFrame = char.Torso.CFrame
				local t = i / 50
				Wave.Transparency = t
				wait()
			end

			Wave:Destroy()
		end)
		Delay(0, function()
			while wait() do
				if Wave ~= nil then
					Wave.CFrame = char.Torso.CFrame
				else
					break
				end
			end
		end)
	end


	new = Instance.new

	v3 = Vector3.new


	a21e = new("Part",char)
	a21e.Name = "Beam"
	a21e.Locked = true
	a21e.Size = v3(1,1,1)
	a21e.CanCollide = false
	a21e.Position = v3(999,999,999)
	a21e.BrickColor = BrickColor.new("Lime green")
	a21e.Material = "Neon"
	a21e.Transparency = 0
	aa21e = new("SpecialMesh",a21e)
	a21e.Anchored = true
	a21e.Position = root.Position
	aa21e.MeshType = "Sphere"
	aa21e.Scale = v3(1,1,1)


	coroutine.resume(coroutine.create(function()
		BurningEff(FindNearestTorso(root.CFrame.p,35))
		BurningEff(FindNearestHead(root.CFrame.p,35))
		BurningEff(FindNearestRightArm(root.CFrame.p,35))
		BurningEff(FindNearestLeftArm(root.CFrame.p,35))
		BurningEff(FindNearestRightLeg(root.CFrame.p,35))
		BurningEff(FindNearestLeftLeg(root.CFrame.p,35))

	end))

	for i,v in pairs(FindNearestTorso(root.CFrame.p,25))do
		if v:FindFirstChild('Humanoid') then
			v.Humanoid.Health = v.Humanoid.Health - math.random(20,30)
			v.Humanoid.PlatformStand = true
			v:FindFirstChild("Torso").Velocity = torso.CFrame.lookVector * 200
			BurningEff(v:FindFirstChild('Torso'))
			delay(0.5, function()
				v.Humanoid.PlatformStand = false
			end)
		end
	end


	coroutine.resume(coroutine.create(function()             

		for i,v in pairs(Players:GetPlayers()) do
			charr = v.Character
			camerashake(charr)
		end
	end))

	coroutine.resume(coroutine.create(function()             
		par,loc=workspace:FindPartOnRay(Ray.new(char.Torso.Position,(char.Torso.Position-(char.Torso.Position-Vector3.new(0,2,0))).unit*-500),char)
		if par then
			local cfremz = CFrame.new(loc)
			debris(cfremz, par, 50)
		end
	end))


	Crater(root,155)
	GroundWave5()
	GroundWave6()
	GroundWave7()
	GroundWave8()
	GroundWave9()
	GroundWave10()  

	coroutine.resume(coroutine.create(function()
		for i = 1,25 do
			wait()
			aa21e.Scale = aa21e.Scale + v3(5,5,5)
			a21e.Transparency = a21e.Transparency + 0.04
		end 
	end))




	for i = 1, 30 do
		hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0), math.rad(0)),0.3)
		torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
		rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.3)
		larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.3)
		lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
		rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.2, .3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
		if Debounces.on == false then break end
		wait()
	end
	wait(4.4)
	hum.MaxHealth = 10000
	hum.Health = 10000
	Debounces.NoIdl = false
	hum.WalkSpeed = 5
	Debounces.on = false
	wait()
	if Debounces.CanAttack == false then
		Debounces.CanAttack = true
		v:Destroy()
	end
end

function slerp(a, b, t) --Spherical interpolation
	dot = a:Dot(b)
	if dot > 0.99999 or dot < -0.99999 then
		return t <= 0.5 and a or b
	else
		r = math.acos(dot)
		return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
	end
end

function matrixInterpolate(a, b, t)
	local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
	local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
	local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
	local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector  right
	local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector  up
	local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector  back
	local t = v1:Dot(v2)
	if not (t < 0 or t == 0 or t > 0) then     -- Failsafe
		return CFrame.new()
	end
	return CFrame.new(
		v0.x, v0.y, v0.z,
		v1.x, v1.y, v1.z,
		v2.x, v2.y, v2.z,
		v3.x, v3.y, v3.z)
end
----------------------------------------------------
function genWeld(a,b)
	local w = Instance.new("Weld",a)
	w.Part0 = a
	w.Part1 = b
	return w
end
function weld(a, b)
	local weld = Instance.new("Weld")
	weld.Name = "W"
	weld.Part0 = a
	weld.Part1 = b
	weld.C0 = a.CFrame:inverse() * b.CFrame
	weld.Parent = a
	return weld;
end
----------------------------------------------------
function Lerp(c1,c2,al)
	local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
	local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
	for i,v in pairs(com1) do 
		com1[i] = v+(com2[i]-v)*al
	end
	return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
----------------------------------------------------
newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
	local wld = Instance.new("Weld", wp1)
	wld.Part0 = wp0
	wld.Part1 = wp1
	wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
----------------------------------------------------
for i,v in pairs(char:children()) do
	if v:IsA("Hat") then
		v:Destroy()
	end
end
for i,v in pairs(hed:children()) do
	if v:IsA("Sound") then
		v:Destroy()
	end
end
----------------------------------------------------
function HasntTouched(plrname)
	local ret = true
	for _, v in pairs(Touche) do
		if v == plrname then
			ret = false
		end
	end
	return ret
end
----------------------------------------------------
larm.Size = larm.Size * 2
rarm.Size = rarm.Size * 2
lleg.Size = lleg.Size * 2
rleg.Size = rleg.Size * 2
torso.Size = torso.Size * 2
hed.Size = hed.Size * 2
root.Size = root.Size * 2
----------------------------------------------------
newWeld(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
newWeld(torso, hed, 0, 1.5, 0)
newWeld(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
newWeld(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
----------------------------------------------------
foot = so(187922823, char, 1, 10, false)
foot.Looped = true
foot.Name = "Footsteps"
local footsteps = false
theme = so(78744747224727, char, 1, 1, false)--209113706, 449048980
theme.Looped = true
theme.Name = "Theme"
----------------------------------------------------


p:ClearCharacterAppearance()
wait(0.1)
p.Character.Head.BrickColor = BrickColor.new("Really black")
p.Character.Torso.BrickColor = BrickColor.new("Really black")
p.Character["Right Arm"].BrickColor = BrickColor.new("Really black")
p.Character["Right Leg"].BrickColor = BrickColor.new("Really black")
p.Character["Left Leg"].BrickColor = BrickColor.new("Really black")
p.Character["Left Arm"].BrickColor = BrickColor.new("Really black")


p.Character.Head.Material = "Granite"
p.Character.Torso.Material = "Granite"
p.Character["Right Arm"].Material = "Granite"
p.Character["Right Leg"].Material = "Granite"
p.Character["Left Leg"].Material = "Granite"
p.Character["Left Arm"].Material = "Granite"







larm1 = Instance.new("Part",char)
larm1.Transparency = 0.5
larm1.BrickColor = BrickColor.new("Lime green")
larm1.Size = Vector3.new(2.1,4.1,2.1)
larm1.Position = Vector3.new(999,999,999)
larm1.Material = "SmoothPlastic"
larmhold = Instance.new("Weld",char)
larmhold.Part0 = larm
larmhold.Part1 = larm1
larmhold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rarm1 = Instance.new("Part",char)
rarm1.Transparency = 0.5
rarm1.BrickColor = BrickColor.new("Lime green")
rarm1.Size = Vector3.new(2.1,4.1,2.1)
rarm1.Position = Vector3.new(999,999,999)
rarm1.Material = "SmoothPlastic"
rarmhold = Instance.new("Weld",char)
rarmhold.Part0 = rarm
rarmhold.Part1 = rarm1
rarmhold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
torso1 = Instance.new("Part",char)
torso1.Transparency = 0.5
torso1.BrickColor = BrickColor.new("Lime green")
torso1.Size = Vector3.new(4.1,4.1,2.1)
torso1.Position = Vector3.new(999,999,999)
torso1.Material = "SmoothPlastic"
torsohold = Instance.new("Weld",char)
torsohold.Part0 = torso
torsohold.Part1 = torso1
torsohold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
lleg1 = Instance.new("Part",char)
lleg1.Transparency = 0.5
lleg1.BrickColor = BrickColor.new("Lime green")
lleg1.Size = Vector3.new(2.1,4.1,2.1)
lleg1.Position = Vector3.new(999,999,999)
lleg1.Material = "SmoothPlastic"
lleghold = Instance.new("Weld",char)
lleghold.Part0 = lleg
lleghold.Part1 = lleg1
lleghold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rleg1 = Instance.new("Part",char)
rleg1.Transparency = 0.5
rleg1.BrickColor = BrickColor.new("Lime green")
rleg1.Size = Vector3.new(2.1,4.1,2.1)
rleg1.Position = Vector3.new(999,999,999)
rleg1.Material = "SmoothPlastic"
rleghold = Instance.new("Weld",char)
rleghold.Part0 = rleg
rleghold.Part1 = rleg1
rleghold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rhed1 = Instance.new("Part",char)
rhed1.Transparency = 0.5
rhed1.BrickColor = BrickColor.new("Lime green")
rhed1.Size = Vector3.new(4.3,2.6,2.6)
rhed1.Position = Vector3.new(999,999,999)
rhed1.Material = "SmoothPlastic"
rhedhold = Instance.new("Weld",char)
rhedhold.Part0 = hed
rhedhold.Part1 = rhed1
rhedhold.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
rhedmesh1 = Instance.new("SpecialMesh",rhed1)
rhedmesh1.MeshType = "Head"
rhedmesh1.Scale = Vector3.new(1,1,1)




function BurningEff(part)
	local eff1 = Instance.new("ParticleEmitter",part)
	eff1.Size = NumberSequence.new(.1)
	eff1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
	eff1.LightEmission = 1
	eff1.Lifetime = NumberRange.new(1)
	eff1.Speed = NumberRange.new(0)
	eff1.Rate = 100
	eff1.Texture = "rbxassetid://284205403"
	eff1.Acceleration = Vector3.new(0,10,0)
	eff1.Color = ColorSequence.new(Color3.new(0,255,0))
	local eff2 = Instance.new("ParticleEmitter",part)
	eff2.Size = NumberSequence.new(.1)
	eff2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.2,0),NumberSequenceKeypoint.new(1,1)})
	eff2.LightEmission = 1
	eff2.Lifetime = NumberRange.new(1)
	eff2.Speed = NumberRange.new(0)
	eff2.Rate = 100
	eff2.Texture = "rbxassetid://347504259"
	eff2.Acceleration = Vector3.new(0,10,0)
	eff2.Color = ColorSequence.new(Color3.new(0,255,0))
	local eff3 = Instance.new("ParticleEmitter",part)
	eff3.Size = NumberSequence.new(1)
	eff3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)})
	eff3.LightEmission = 1
	eff3.Lifetime = NumberRange.new(1)
	eff3.Speed = NumberRange.new(0)
	eff3.Rate = 100
	eff3.Texture = "rbxassetid://284205403"
	eff3.Acceleration = Vector3.new(0,10,0)
	eff3.Color = ColorSequence.new(Color3.new(0,255,0))
end

Face = 'rbxassetid://513836869'
local face=hed:FindFirstChild'face'
face.Texture = Face

face=Instance.new("Decal",hed)
face.Face="Front"
face.Texture="rbxassetid://513836869"

BurningEff(hed)
BurningEff(rarm)
BurningEff(larm)
BurningEff(torso)

LightOnBody = Instance.new("PointLight", hed)
LightOnBody.Brightness = 0.8
LightOnBody.Range = 20
LightOnBody.Color = Color3.new(0, 255, 0)


CV="Pastel blue"

local txt = Instance.new("BillboardGui", char)
txt.Adornee = hed
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Antique"
text.TextStrokeColor3 = Color3.new(0,255,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(0,0,0)
v.Shape="Block"
text.Text = "Critical Mass"




if GroundShake == true then
	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(math.random(-1,1)),rad(math.random(-1,1)),rad(math.random(-1,1)))
			end
		end
	end




end
if GroundShake2 == true then

	for i,v in pairs(workspace:GetChildren()) do
		if v:IsA("Part") then
			if v.Size.x > 150 then
				v.CFrame = CFrame.new(v.Position) * CFrame.Angles(rad(math.random(-2,2)),rad(math.random(-2,2)),rad(math.random(-2,2)))
			end
		end
	end

end



local num = 0



GroundWave2 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
	local wave3 = Instance.new("Part", char)
	wave3.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave3.Anchored = true
	wave3.Name = "Wave"
	wave3.CanCollide = false
	wave3.Locked = true
	wave3.Size = Vector3.new(1, 1, 1)
	wave3.TopSurface = "Smooth"
	wave3.BottomSurface = "Smooth"
	wave3.Transparency = 0.35
	wave3.CFrame = HandCF
	wm1 = Instance.new("SpecialMesh", wave3)
	wm1.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm1.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave3.Size = wm1.Scale
			wave3.CFrame = HandCF
			wave3.Transparency = i/30
			wait()
		end
		wait()
		wave3:Destroy()
	end)()
end
GroundWave3 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	Colors = {"White", "White"}
	local wave2 = Instance.new("Part", char)
	wave2.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave2.Anchored = true
	wave2.Name = "Wave"
	wave2.CanCollide = false
	wave2.Locked = true
	wave2.Size = Vector3.new(1, 1, 1)
	wave2.TopSurface = "Smooth"
	wave2.BottomSurface = "Smooth"
	wave2.Transparency = 0.35
	wave2.CFrame = HandCF
	wm2 = Instance.new("SpecialMesh", wave2)
	wm2.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm2.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave2.Size = wm2.Scale
			wave2.CFrame = HandCF
			wave2.Transparency = i/30
			wait()
		end
		wait()
		wave2:Destroy()
	end)()
end
GroundWave4 = function()
	local HandCF = char["Beam"..num].CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))
	Colors = {"White", "White"}
	local wave1 = Instance.new("Part", char)
	wave1.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave1.Anchored = true
	wave1.Name = "Wave"
	wave1.CanCollide = false
	wave1.Locked = true
	wave1.Size = Vector3.new(1, 1, 1)
	wave1.TopSurface = "Smooth"
	wave1.BottomSurface = "Smooth"
	wave1.Transparency = 0.35
	wave1.CFrame = HandCF
	wm3 = Instance.new("SpecialMesh", wave1)
	wm3.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm3.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave1.Size = wm3.Scale
			wave1.CFrame = HandCF
			wave1.Transparency = i/30
			wait()
		end
		wait()
		wave1:Destroy()
	end)()
end
--------------------------------------------------------------------------
--transform
GroundWave5 = function()
	local HandCF = root.CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))

	Colors = {"Lime green", "Lime green"}


	local wave11 = Instance.new("Part", char)
	wave11.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave11.Anchored = true
	wave11.Name = "Wave"
	wave11.CanCollide = false
	wave11.Locked = true
	wave11.Size = Vector3.new(1, 1, 1)
	wave11.TopSurface = "Smooth"
	wave11.BottomSurface = "Smooth"
	wave11.Transparency = 0.35
	wave11.CFrame = HandCF
	wm31 = Instance.new("SpecialMesh", wave11)
	wm31.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm31.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave11.Size = wm31.Scale
			wave11.CFrame = HandCF
			wave11.Transparency = i/30
			wait()
		end
		wait()
		wave11:Destroy()
	end)()
end
GroundWave6 = function()
	local HandCF = root.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

	Colors = {"Lime green", "Lime green"}

	local wave111 = Instance.new("Part", char)
	wave111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave111.Anchored = true
	wave111.Name = "Wave"
	wave111.CanCollide = false
	wave111.Locked = true
	wave111.Size = Vector3.new(1, 1, 1)
	wave111.TopSurface = "Smooth"
	wave111.BottomSurface = "Smooth"
	wave111.Transparency = 0.35
	wave111.CFrame = HandCF
	wm311 = Instance.new("SpecialMesh", wave111)
	wm311.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm311.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave111.Size = wm311.Scale
			wave111.CFrame = HandCF
			wave111.Transparency = i/30
			wait()
		end
		wait()
		wave111:Destroy()
	end)()
end
GroundWave7 = function()
	local HandCF = root.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

	Colors = {"Lime green", "Lime green"}
	local wave1111 = Instance.new("Part", char)
	wave1111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave1111.Anchored = true
	wave1111.Name = "Wave"
	wave1111.CanCollide = false
	wave1111.Locked = true
	wave1111.Size = Vector3.new(1, 1, 1)
	wave1111.TopSurface = "Smooth"
	wave1111.BottomSurface = "Smooth"
	wave1111.Transparency = 0.35
	wave1111.CFrame = HandCF
	wm3111 = Instance.new("SpecialMesh", wave1111)
	wm3111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm3111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave1111.Size = wm3111.Scale
			wave1111.CFrame = HandCF
			wave1111.Transparency = i/30
			wait()
		end
		wait()
		wave1111:Destroy()
	end)()
end
GroundWave8 = function()
	local HandCF = root.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

	Colors = {"Lime green", "Lime green"}
	local wave11111 = Instance.new("Part", char)
	wave11111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave11111.Anchored = true
	wave11111.Name = "Wave"
	wave11111.CanCollide = false
	wave11111.Locked = true
	wave11111.Size = Vector3.new(1, 1, 1)
	wave11111.TopSurface = "Smooth"
	wave11111.BottomSurface = "Smooth"
	wave11111.Transparency = 0.35
	wave11111.CFrame = HandCF
	wm31111 = Instance.new("SpecialMesh", wave11111)
	wm31111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm31111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave11111.Size = wm31111.Scale
			wave11111.CFrame = HandCF
			wave11111.Transparency = i/30
			wait()
		end
		wait()
		wave11111:Destroy()
	end)()
end
GroundWave9 = function()
	local HandCF = root.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

	Colors = {"Lime green", "Lime green"}
	local wave111111 = Instance.new("Part", char)
	wave111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave111111.Anchored = true
	wave111111.Name = "Wave"
	wave111111.CanCollide = false
	wave111111.Locked = true
	wave111111.Size = Vector3.new(1, 1, 1)
	wave111111.TopSurface = "Smooth"
	wave111111.BottomSurface = "Smooth"
	wave111111.Transparency = 0.35
	wave111111.CFrame = HandCF
	wm311111 = Instance.new("SpecialMesh", wave111111)
	wm311111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm311111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave111111.Size = wm311111.Scale
			wave111111.CFrame = HandCF
			wave111111.Transparency = i/30
			wait()
		end
		wait()
		wave111111:Destroy()
	end)()
end
GroundWave10 = function()
	local HandCF = root.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

	Colors = {"Lime green", "Lime green"}
	local wave1111111 = Instance.new("Part", char)
	wave1111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
	wave1111111.Anchored = true
	wave1111111.Name = "Wave"
	wave1111111.CanCollide = false
	wave1111111.Locked = true
	wave1111111.Size = Vector3.new(1, 1, 1)
	wave1111111.TopSurface = "Smooth"
	wave1111111.BottomSurface = "Smooth"
	wave1111111.Transparency = 0.35
	wave1111111.CFrame = HandCF
	wm3111111 = Instance.new("SpecialMesh", wave1111111)
	wm3111111.MeshId = "rbxassetid://3270017"
	coroutine.wrap(function()
		for i = 1, 30, 1 do
			wm3111111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
			wave1111111.Size = wm3111111.Scale
			wave1111111.CFrame = HandCF
			wave1111111.Transparency = i/30
			wait()
		end
		wait()
		wave1111111:Destroy()
	end)()
end


local HandCF = CFrame.new(root.Position - Vector3.new(0,3,0)) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

function nooutline(part)
	part.TopSurface, part.BottomSurface, part.RightSurface, part.LeftSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end

function debris(cfremz, thepart, amt)
	for j = 1, amt do
		do
			local pr = Instance.new("Part")
			so(debrisSFX[math.random(1, #debrisSFX)], pr, ptez[math.random(1, #ptez)], 10)
			nooutline(pr)
			pr.Name = "debrisobeb"
			pr.Anchored = true
			pr.BrickColor = thepart.BrickColor
			pr.CanCollide = true
			pr.Material = thepart.Material
			pr.Transparency = thepart.Transparency
			pr.Size = Vector3.new(math.random(16, 24), math.random(12, 16), math.random(16, 24))
			pr.CFrame = cfremz * CFrame.Angles(0, math.rad(amt * j), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
			pr.Parent = workspace
			game.Debris:AddItem(pr, 25)
			delay(15, function()
				if pr then
					pr.CanCollide = false
					pr.Anchored = false
				end
			end)
		end
	end
	for c = 1, amt do
		do
			local pr2 = Instance.new("Part")
			so(debrisSFX[math.random(1, #debrisSFX)], pr2, ptez[math.random(1, #ptez)], 10)
			nooutline(pr2)
			pr2.Name = "moredebr"
			pr2.Anchored = false
			pr2.BrickColor = thepart.BrickColor
			pr2.CanCollide = false
			pr2.Material = thepart.Material
			pr2.Transparency = thepart.Transparency
			pr2.Size = Vector3.new(math.random(8, 18), math.random(6, 18), math.random(8, 18))
			pr2.CFrame = cfremz * CFrame.Angles(0, math.rad(30 * c), 0) * CFrame.new(0, -5, math.random(18, 22)) * CFrame.Angles(math.rad(math.random(-30, -15)), math.rad(math.random(0, 1)), math.rad(math.random(0, 1)))
			pr2.Parent = workspace
			pr2.Velocity = Vector3.new(math.random(-75, 75), math.random(120, 240), math.random(-75, 75))
			pr2.RotVelocity = Vector3.new(math.random(-35, 35), math.random(-35, 35), math.random(-35, 35))
			game.Debris:AddItem(pr2, 45)
			delay(2, function()
				pr2.CanCollide = true
				wait(10)
				if pr2 then
					pr2.CanCollide = false
				end
			end)
		end
	end
end


function weld5(part0, part1, c0, c1)
	weeld=Instance.new("Weld", part0)
	weeld.Part0=part0
	weeld.Part1=part1
	weeld.C0=c0
	weeld.C1=c1
	return weeld
end


par,loc=workspace:FindPartOnRay(Ray.new(root.Position,(root.Position-(root.Position-Vector3.new(0,2,0))).unit*-500),root)    


local acos = math.acos
local sqrt = math.sqrt
local Vec3 = Vector3.new
local fromAxisAngle = CFrame.fromAxisAngle

local function toAxisAngle(CFr)
	local X,Y,Z,R00,R01,R02,R10,R11,R12,R20,R21,R22 = CFr:components()
	local Angle = math.acos((R00+R11+R22-1)/2)
	local A = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
	A = A == 0 and 0.00001 or A
	local B = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
	B = B == 0 and 0.00001 or B
	local C = (R21-R12)^2+(R02-R20)^2+(R10-R01)^2
	C = C == 0 and 0.00001 or C
	local x = (R21-R12)/sqrt(A)
	local y = (R02-R20)/sqrt(B)
	local z = (R10-R01)/sqrt(C)
	return Vec3(x,y,z),Angle
end

function ApplyTrig(Num,Func)
	local Min,Max = Func(0),Func(1)
	local i = Func(Num)
	return (i-Min)/(Max-Min)
end

function LerpCFrame(CFrame1,CFrame2,Num)
	local Vec,Ang = toAxisAngle(CFrame1:inverse()*CFrame2)
	return CFrame1*fromAxisAngle(Vec,Ang*Num) + (CFrame2.p-CFrame1.p)*Num
end

function Crater(Torso,Radius)
	Spawn(function()
		local Ray = Ray.new(Torso.Position,Vector3.new(0,-1,0)*10)
		local Ignore = {}
		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Character ~= nil then
				Ignore[#Ignore+1] = v.Character
			end
		end
		local Hit,Pos,SurfaceNorm = Workspace:FindPartOnRayWithIgnoreList(Ray,Ignore)
		if Hit == nil then return end
		local Parts = {}
		for i = 1,360,10 do
			local P = Instance.new("Part",Torso.Parent)
			P.Anchored = true
			P.FormFactor = "Custom"
			P.BrickColor = Hit.BrickColor
			P.Material = Hit.Material
			P.TopSurface = "Smooth"
			P.BottomSurface = "Smooth"
			P.CanCollide = false
			P.Size = Vector3.new(10,20,20)*(math.random(80,100)/100)
			P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,7,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
			Parts[#Parts+1] = {P,P.CFrame,((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,1,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius)*CFrame.Angles(math.rad(math.random(-50,-20)),math.rad(math.random(-15,15)),math.rad(math.random(-15,15))),P.Size}
			if math.random(0,5) == 0 then -- rubble
				local P = Instance.new("Part",Torso.Parent)
				P.Anchored = true
				P.FormFactor = "Custom"
				P.BrickColor = Hit.BrickColor
				P.Material = Hit.Material
				P.TopSurface = "Smooth"
				P.CanCollide = false
				P.BottomSurface = "Smooth"
				P.Size = Vector3.new(4,4,4)*(math.random(80,100)/100)
				P.CFrame = ((CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))-Vector3.new(0,2.5,0))*CFrame.Angles(math.rad(math.random(-50,50)),math.rad(math.random(-50,50)),math.rad(math.random(-50,50)))
				Parts[#Parts+1] = {P,P.CFrame,(CFrame.new(Pos,Pos+SurfaceNorm)*CFrame.Angles(math.rad(90),0,0))*CFrame.Angles(0,math.rad(i),0)*CFrame.new(0,0,-Radius-8)*CFrame.Angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90))),P.Size}
			end
		end
		for i = 0,1,0.05 do
			for i2,v in pairs(Parts) do
				v[1].CFrame = LerpCFrame(v[2],v[3],ApplyTrig(i,math.cos))
			end
			wait(0.02)
		end
		for i,v in pairs(Parts) do
			if v[1].Size.X > 2.1 then
				v[1].CFrame = v[1].CFrame+Vector3.new(0,2,0)
			end
			v[1].Anchored = false
		end
		for i = 0,1,0.05 do
			for i2,v in pairs(Parts) do
				v[1].Transparency = i
				if i == 1 then
					v[1]:Destroy()
				elseif i >= 0.25 then
					v[1].CanCollide = false
				end
			end
			wait(0.02)
		end
		Parts = nil
	end)
end





function FindNearestTorso(Position,Distance,SinglePlayer)
	if SinglePlayer then return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance end
	local List = {}
	for i,v in pairs(workspace:GetChildren())do
		if v:IsA("Model")then
			if v:findFirstChild("Torso")then
				if v ~= char then
					if(v.Torso.Position -Position).magnitude <= Distance then
						table.insert(List,v)
					end 
				end 
			end 
		end 
	end
	return List
end



function FindNearestHead(Position,Distance,SinglePlayer)
	if SinglePlayer then return(SinglePlayer.Head.CFrame.p -Position).magnitude < Distance end
	local List = {}
	for i,v in pairs(workspace:GetChildren())do
		if v:IsA("Model")then
			if v:findFirstChild("Head")then
				if v ~= char then
					if(v.Head.Position -Position).magnitude <= Distance then
						table.insert(List,v)
					end 
				end 
			end 
		end 
	end
	return List
end



function FindNearestRightArm(Position,Distance,SinglePlayer)
	if SinglePlayer then return(SinglePlayer.RightArm.CFrame.p -Position).magnitude < Distance end
	local List = {}
	for i,v in pairs(workspace:GetChildren())do
		if v:IsA("Model")then
			if v:findFirstChild("Right Arm")then
				if v ~= char then
					if(v.RightArm.Position -Position).magnitude <= Distance then
						table.insert(List,v)
					end 
				end 
			end 
		end 
	end
	return List
end


function FindNearestLeftArm(Position,Distance,SinglePlayer)
	if SinglePlayer then return(SinglePlayer.LeftArm.CFrame.p -Position).magnitude < Distance end
	local List = {}
	for i,v in pairs(workspace:GetChildren())do
		if v:IsA("Model")then
			if v:findFirstChild("Left Arm")then
				if v ~= char then
					if(v.LeftArm.Position -Position).magnitude <= Distance then
						table.insert(List,v)
					end 
				end 
			end 
		end 
	end
	return List
end



function FindNearestRightLeg(Position,Distance,SinglePlayer)
	if SinglePlayer then return(SinglePlayer.RightLeg.CFrame.p -Position).magnitude < Distance end
	local List = {}
	for i,v in pairs(workspace:GetChildren())do
		if v:IsA("Model")then
			if v:findFirstChild("Right Leg")then
				if v ~= char then
					if(v.RightLeg.Position -Position).magnitude <= Distance then
						table.insert(List,v)
					end 
				end 
			end 
		end 
	end
	return List
end


function FindNearestLeftLeg(Position,Distance,SinglePlayer)
	if SinglePlayer then return(SinglePlayer.LeftLeg.CFrame.p -Position).magnitude < Distance end
	local List = {}
	for i,v in pairs(workspace:GetChildren())do
		if v:IsA("Model")then
			if v:findFirstChild("Left Leg")then
				if v ~= char then
					if(v.LeftLeg.Position -Position).magnitude <= Distance then
						table.insert(List,v)
					end 
				end 
			end 
		end 
	end
	return List
end


function camerashake(character, times, intensity)
	times = times or 40
	intensity = intensity or 7
	local cameraShakeInstance = NLS([[
	    local character = script.Parent
	    local humanoid = character:FindFirstChildOfClass("Humanoid")
        local times = script:WaitForChild("Times")
        local intensity = script:WaitForChild("Intensity")
        times = times.Value
        intensity = intensity.Value

        for i = 1, times do
	        humanoid.CameraOffset = Vector3.new(math.random(-intensity, intensity), math.random(-intensity, intensity), math.random(-intensity, intensity))
	        wait()
        end
        humanoid.CameraOffset = Vector3.zero
        script:FindFirstChild("RemoteEvent", true):FireServer()
    ]], character)
    local tim = Instance.new("NumberValue")
    local int = Instance.new("NumberValue")
    tim.Name = "Times"
    int.Name = "Intensity"
    tim.Value = times
    int.Value = intensity
    tim.Parent = cameraShakeInstance
    int.Parent = cameraShakeInstance
    NS([[
        local remote = Instance.new("RemoteEvent", script)
        remote.OnServerEvent:Once(function()
            script.Parent:Destroy()
        end)
    ]], cameraShakeInstance)
end


----------------------------------------------------
function weld5(part0, part1, c0, c1)
	weeld=Instance.new("Weld", part0)
	weeld.Part0=part0
	weeld.Part1=part1
	weeld.C0=c0
	weeld.C1=c1
	return weeld
end

Grab = false

function newRay(start,face,range,wat)
	local rey=Ray.new(start.p,(face.p-start.p).Unit*range)
	hit,pos=Workspace:FindPartOnRayWithIgnoreList(rey,wat)
	return rey,hit,pos
end

fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe=tick()
		else
			--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
			for i=1, math.floor(tf/frame) do
				script.Heartbeat:Fire()
			end
			lastframe=tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf/frame)
		end
	end
end)

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		fat.Event:wait()
	else
		for i = 1, NUMBER do
			fat.Event:wait()
		end
	end
end

function Landing2()
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = BrickColor.new("Lime green")
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.Position = root.Position
	rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	local rng2 = rng:Clone()
	rng2.Parent = char
	local rng2m = rng2.Mesh
	local rng3 = rng:Clone()
	rng3.Parent = char
	local rng3m = rng3.Mesh
	local rng4 = rng:Clone()
	rng4.Parent = char
	local rng4m = rng4.Mesh
	local rng5 = rng:Clone()
	rng5.Parent = char
	local rng5m = rng5.Mesh
	for i,v in pairs(FindNearestTorso(torso.CFrame.p,905))do
		if v:FindFirstChild('Humanoid') then
			v.Humanoid.Health = v.Humanoid.Health - math.random(20,30)
			v.Humanoid.PlatformStand = true
			v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
			delay(0.5, function()
				v.Humanoid.PlatformStand = false
			end)
		end
	end
	--MagicBlock(BrickColor.new("Lime green"),root.CFrame,15,15,15,5,5,5,0.015)
	-- CFuncs["Sound"].Create("rbxassetid://187137517", rng, 10, 1)
	--CFuncs["Sound"].Create("rbxassetid://597291504", rng, 5, 0.85)
	---CFuncs["Sound"].Create("rbxassetid://144699494", rng, 10, 1)
	wait()
	local scaler = 10
	local scaler2 = 10
	for i = 0,10,0.1 do
		Swait()
		rng.Transparency = rng.Transparency + 0.01
		rng2.Transparency = rng2.Transparency + 0.01
		rng3.Transparency = rng3.Transparency + 0.01
		rng4.Transparency = rng4.Transparency + 0.01
		rng5.Transparency = rng5.Transparency + 0.01
		scaler = scaler - 0.125
		scaler2 = scaler2 - 0.1
		rng2m.Scale = rng2m.Scale + Vector3.new(scaler2/1.75, scaler2/1.75, 4)
		rng3m.Scale = rng3m.Scale + Vector3.new(scaler2/1.5, scaler2/1.5, 3)
		rng4m.Scale = rng4m.Scale + Vector3.new(scaler2/1.25, scaler2/1.25, 2)
		rng5m.Scale = rng5m.Scale + Vector3.new(scaler2, scaler2, 1)
		rng5.Size = rng5m.Scale
		rng5.CFrame = rng.CFrame
		rngm.Scale = rngm.Scale + Vector3.new(scaler2/2, scaler2/2, 5)
	end
end
function Landing()
	Grabee = torso
	par,loc=workspace:FindPartOnRay(Ray.new(char.Torso.Position,(char.Torso.Position-(char.Torso.Position-Vector3.new(0,2,0))).unit*-500),char)
	if par then
		local cfremz = CFrame.new(loc)
		debris(cfremz, par, 50)
	end
end



ptez = {0.7, 0.8, 0.9, 1}

function GroundPound()
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = BrickColor.new("Lime green")
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0.35
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.Position = larm.Position - Vector3.new(0,4,0)
	rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rngm.Scale = Vector3.new(1, 1, 2)
	so(142070127, char, ptez[math.random(1,#ptez)])
	coroutine.wrap(function()
		for i = 1, 60, 2 do
			rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
			rng.Transparency = i/60
			wait()
		end
		wait()
		rng:Destroy()
	end)()

end


function GroundPound2()
	local rng = Instance.new("Part", char)
	rng.Anchored = true
	rng.BrickColor = BrickColor.new("Lime green")
	rng.CanCollide = false
	rng.FormFactor = 3
	rng.Name = "Ring"
	rng.Size = Vector3.new(1, 1, 1)
	rng.Transparency = 0.35
	rng.TopSurface = 0
	rng.BottomSurface = 0
	rng.Position = rarm.Position - Vector3.new(0,4,0)
	rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
	local rngm = Instance.new("SpecialMesh", rng)
	rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
	rngm.Scale = Vector3.new(1, 1, 2)
	so(142070127, char, ptez[math.random(1,#ptez)])
	coroutine.wrap(function()
		for i = 1, 60, 2 do
			rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
			rng.Transparency = i/60
			wait()
		end
		wait()
		rng:Destroy()
	end)()
end

-- Keybinds
mouse.KeyDown:connect(function(key)
	if key == "q" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			local ogSpeed = hum.WalkSpeed
			hum.WalkSpeed = 0
			for i = 1, 30 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-34)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(34)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
				if Debounces.on == false then break end
				wait()
			end
			so(862467390, char, 0.94, 10)
			local Shockwave = function()
				local rng1 = Instance.new("Part", char)
				rng1.Anchored = true
				rng1.BrickColor = BrickColor.new("Lime green")
				rng1.CanCollide = false
				rng1.FormFactor = 3
				rng1.Name = "Ring"
				rng1.Size = Vector3.new(1, 1, 1)
				rng1.Transparency = 0.35
				rng1.TopSurface = 0
				rng1.BottomSurface = 0
				local rngm1 = Instance.new("SpecialMesh", rng1)
				rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
				rngm1.Scale = Vector3.new(10, 10, 1)
				rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
				local Wave = Instance.new("Part", game.Workspace--[[?]])
				Wave.Name = "Shockwave"
				Wave.BrickColor = BrickColor.new("Lime green")
				Wave.Size = Vector3.new(1, 1, 1)
				Wave.Shape = "Ball"
				Wave.CanCollide = false
				Wave.Anchored = true
				Wave.TopSurface = 0
				Wave.BottomSurface = 0
				Wave.Touched:connect(function(hit)
					if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
						local Occlude = true
						local NotOccludes = {
							char.Name;
							"Wings";
							"Scythe";
							"Thingy";
							"Thingy2"; -- put all of the names in a table pls
						}
						for i,v in pairs(NotOccludes) do
							if hit.Parent.Name == v then
								Occlude = false
							end
						end
						--if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
						if Occlude then
							hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 1
							hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
						end
					end
				end)

				Instance.new("SpecialMesh", Wave).MeshType = "Sphere"

				coroutine.wrap(function()
					for i = 1, 20, 0.2 do
						rngm1.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
						rng1.Transparency = i/20
						rng1.CFrame = Wave.CFrame
						wait()
					end
					wait()
					rng1:Destroy()
				end)()

				Delay(0, function()


					for i = 1, 50, 1 do
						Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
						Wave.CFrame = char.Torso.CFrame
						local t = i / 50
						Wave.Transparency = t
						wait()
					end

					Wave:Destroy()
				end)
				Delay(0, function()
					while wait() do
						if Wave ~= nil then
							Wave.CFrame = char.Torso.CFrame
						else
							break
						end
					end
				end)
			end


			new = Instance.new

			v3 = Vector3.new


			a21e = new("Part",char)
			a21e.Name = "Beam"..num
			a21e.Locked = true
			a21e.Size = v3(1,1,1)
			a21e.CanCollide = false
			a21e.Position = v3(999,999,999)
			a21e.BrickColor = BrickColor.new("Lime green")
			a21e.Material = "Neon"
			a21e.Transparency = 0
			aa21e = new("SpecialMesh",a21e)
			a21e.Anchored = true
			a21e.Position = root.Position
			aa21e.MeshType = "Sphere"
			aa21e.Scale = v3(1,1,1)


			coroutine.resume(coroutine.create(function()
				BurningEff(FindNearestTorso(root.CFrame.p,35))
				BurningEff(FindNearestHead(root.CFrame.p,35))
				BurningEff(FindNearestRightArm(root.CFrame.p,35))
				BurningEff(FindNearestLeftArm(root.CFrame.p,35))
				BurningEff(FindNearestRightLeg(root.CFrame.p,35))
				BurningEff(FindNearestLeftLeg(root.CFrame.p,35))

			end))

			for i,v in pairs(FindNearestTorso(root.CFrame.p,25))do
				if v:FindFirstChild('Humanoid') then
					v.Humanoid.Health = v.Humanoid.Health - math.random(20,30)
					v.Humanoid.PlatformStand = true
					v:FindFirstChild("Torso").Velocity = torso.CFrame.lookVector * 200
					BurningEff(v:FindFirstChild('Torso'))
					delay(0.5, function()
						v.Humanoid.PlatformStand = false
					end)
				end
			end


			coroutine.resume(coroutine.create(function()             

				for i,v in pairs(Players:GetPlayers()) do
					charr = v.Character
					camerashake(charr)
				end
			end))

			coroutine.resume(coroutine.create(function()             
				par,loc=workspace:FindPartOnRay(Ray.new(char.Torso.Position,(char.Torso.Position-(char.Torso.Position-Vector3.new(0,2,0))).unit*-500),char)
				if par then
					local cfremz = CFrame.new(loc)
					debris(cfremz, par, 50)
				end
			end))


			Crater(root,155)
			GroundWave5()
			GroundWave6()
			GroundWave7()
			GroundWave8()
			GroundWave9()
			GroundWave10()  

			coroutine.resume(coroutine.create(function()
				for i = 1,25 do
					wait()
					aa21e.Scale = aa21e.Scale + v3(5,5,5)
					a21e.Transparency = a21e.Transparency + 0.04
				end 
			end))




			for i = 1, 30 do
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0), math.rad(0)),0.3)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.3)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(28)), 0.3)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .4)*CFrame.Angles(math.rad(-50),math.rad(0),math.rad(-28)), 0.3)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3.2, .3) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.2)
				if Debounces.on == false then break end
				wait()
			end
			wait(4.4)
			Debounces.NoIdl = false
			hum.WalkSpeed = ogSpeed
			Debounces.on = false
			wait()
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				v:Destroy()
			end
		end
	elseif key == "z" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			local ogSpeed = hum.WalkSpeed
			hum.WalkSpeed = 5
			if Grab == false then
				gp = nil
				con1=larm.Touched:connect(function(hit) -- this is grab
					ht = hit.Parent
					hum1=ht:FindFirstChild('Humanoid')
					if hum1 ~= nil and hum1 ~= hum then
						hum1.PlatformStand=true
						gp = ht
						Grab = true
						asd=weld5(larm,ht:FindFirstChild("Torso"),CFrame.new(0,-3.3,0),CFrame.new(0,0,0))
						asd.Parent = larm
						asd.Name = "asd"
						asd.C0=asd.C0*CFrame.Angles(math.rad(-90),0,0)
					elseif hum1 == nil then
						con1:disconnect()
						wait() return
					end
				end)


				for i = 1, 18 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(36)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.65,.9,-.5)*CFrame.Angles(math.rad(70),math.rad(0),math.rad(20)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.8, 0) * CFrame.Angles(math.rad(-60), math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.6) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)), 0.2)
					if Debounces.on == false then break end
					wait()
				end
				con1:disconnect()
				hum.WalkSpeed = ogSpeed
				Debounces.CanAttack = true
				Debounces.on = false
				Debounces.NoIdl = false
			elseif Grab == true then
				Grab = false
				for i = 1, 20 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.4)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-20)), 0.1)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
					if Debounces.on == false then end
					wait()
				end
				if gp ~= nil then
					for i,v in pairs(larm:GetChildren()) do
						if v.Name == "asd" and v:IsA("Weld") then
							v:Remove()
						end
					end
					bv = Instance.new("BodyVelocity",gp:FindFirstChild("Torso"))
					bv.maxForce = Vector3.new(400000, 400000, 400000)
					bv.P = 125000000000000
					bv.velocity = char.Head.CFrame.lookVector * 1000
					for i = 1, 12 do
						larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.6, .9, -.75)*CFrame.Angles(math.rad(30),math.rad(0),math.rad(20)), 0.5)
						if Debounces.on == false then end
						wait()
					end
					ht=nil
					Spawn(function()
						wait(0.5)
						bv:Destroy()
					end)
					hum.WalkSpeed = ogSpeed
					Debounces.CanAttack = true
					Debounces.on = false
					Debounces.NoIdl = false
				elseif ht == nil then wait()
					Grab = false
					hum.WalkSpeed = ogSpeed
					Debounces.CanAttack = true
					Debounces.on = false
					Debounces.NoIdl = false
				end
			end
		end
	elseif key == "c" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			local ogSpeed = hum.WalkSpeed
			hum.WalkSpeed = 5
			GroundWaves5 = function()
				local HandCF = ht:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))

				Colors = {"Lime green", "Lime green"}


				local wave11 = Instance.new("Part", char)
				wave11.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
				wave11.Anchored = true
				wave11.Name = "Wave"
				wave11.CanCollide = false
				wave11.Locked = true
				wave11.Size = Vector3.new(1, 1, 1)
				wave11.TopSurface = "Smooth"
				wave11.BottomSurface = "Smooth"
				wave11.Transparency = 0.35
				wave11.CFrame = HandCF
				wm31 = Instance.new("SpecialMesh", wave11)
				wm31.MeshId = "rbxassetid://3270017"
				coroutine.wrap(function()
					for i = 1, 30, 1 do
						wm31.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
						wave11.Size = wm31.Scale
						wave11.CFrame = HandCF
						wave11.Transparency = i/30
						wait()
					end
					wait()
					wave11:Destroy()
				end)()
			end
			GroundWaves6 = function()
				local HandCF = ht:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

				Colors = {"Lime green", "Lime green"}

				local wave111 = Instance.new("Part", char)
				wave111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
				wave111.Anchored = true
				wave111.Name = "Wave"
				wave111.CanCollide = false
				wave111.Locked = true
				wave111.Size = Vector3.new(1, 1, 1)
				wave111.TopSurface = "Smooth"
				wave111.BottomSurface = "Smooth"
				wave111.Transparency = 0.35
				wave111.CFrame = HandCF
				wm311 = Instance.new("SpecialMesh", wave111)
				wm311.MeshId = "rbxassetid://3270017"
				coroutine.wrap(function()
					for i = 1, 30, 1 do
						wm311.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
						wave111.Size = wm311.Scale
						wave111.CFrame = HandCF
						wave111.Transparency = i/30
						wait()
					end
					wait()
					wave111:Destroy()
				end)()
			end
			GroundWaves7 = function()
				local HandCF = ht:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

				Colors = {"Lime green", "Lime green"}
				local wave1111 = Instance.new("Part", char)
				wave1111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
				wave1111.Anchored = true
				wave1111.Name = "Wave"
				wave1111.CanCollide = false
				wave1111.Locked = true
				wave1111.Size = Vector3.new(1, 1, 1)
				wave1111.TopSurface = "Smooth"
				wave1111.BottomSurface = "Smooth"
				wave1111.Transparency = 0.35
				wave1111.CFrame = HandCF
				wm3111 = Instance.new("SpecialMesh", wave1111)
				wm3111.MeshId = "rbxassetid://3270017"
				coroutine.wrap(function()
					for i = 1, 30, 1 do
						wm3111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
						wave1111.Size = wm3111.Scale
						wave1111.CFrame = HandCF
						wave1111.Transparency = i/30
						wait()
					end
					wait()
					wave1111:Destroy()
				end)()
			end
			GroundWaves8 = function()
				local HandCF = ht:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

				Colors = {"Lime green", "Lime green"}
				local wave11111 = Instance.new("Part", char)
				wave11111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
				wave11111.Anchored = true
				wave11111.Name = "Wave"
				wave11111.CanCollide = false
				wave11111.Locked = true
				wave11111.Size = Vector3.new(1, 1, 1)
				wave11111.TopSurface = "Smooth"
				wave11111.BottomSurface = "Smooth"
				wave11111.Transparency = 0.35
				wave11111.CFrame = HandCF
				wm31111 = Instance.new("SpecialMesh", wave11111)
				wm31111.MeshId = "rbxassetid://3270017"
				coroutine.wrap(function()
					for i = 1, 30, 1 do
						wm31111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
						wave11111.Size = wm31111.Scale
						wave11111.CFrame = HandCF
						wave11111.Transparency = i/30
						wait()
					end
					wait()
					wave11111:Destroy()
				end)()
			end
			GroundWaves9 = function()
				local HandCF = ht:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

				Colors = {"Lime green", "Lime green"}
				local wave111111 = Instance.new("Part", char)
				wave111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
				wave111111.Anchored = true
				wave111111.Name = "Wave"
				wave111111.CanCollide = false
				wave111111.Locked = true
				wave111111.Size = Vector3.new(1, 1, 1)
				wave111111.TopSurface = "Smooth"
				wave111111.BottomSurface = "Smooth"
				wave111111.Transparency = 0.35
				wave111111.CFrame = HandCF
				wm311111 = Instance.new("SpecialMesh", wave111111)
				wm311111.MeshId = "rbxassetid://3270017"
				coroutine.wrap(function()
					for i = 1, 30, 1 do
						wm311111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
						wave111111.Size = wm311111.Scale
						wave111111.CFrame = HandCF
						wave111111.Transparency = i/30
						wait()
					end
					wait()
					wave111111:Destroy()
				end)()
			end
			GroundWaves10 = function()
				local HandCF = ht:FindFirstChild("Torso").CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))

				Colors = {"Lime green", "Lime green"}
				local wave1111111 = Instance.new("Part", char)
				wave1111111.BrickColor = BrickColor.new(Colors[math.random(1,#Colors)])
				wave1111111.Anchored = true
				wave1111111.Name = "Wave"
				wave1111111.CanCollide = false
				wave1111111.Locked = true
				wave1111111.Size = Vector3.new(1, 1, 1)
				wave1111111.TopSurface = "Smooth"
				wave1111111.BottomSurface = "Smooth"
				wave1111111.Transparency = 0.35
				wave1111111.CFrame = HandCF
				wm3111111 = Instance.new("SpecialMesh", wave1111111)
				wm3111111.MeshId = "rbxassetid://3270017"
				coroutine.wrap(function()
					for i = 1, 30, 1 do
						wm3111111.Scale = Vector3.new(5 + i*5.2, 3 + i*5.2, 5)
						wave1111111.Size = wm3111111.Scale
						wave1111111.CFrame = HandCF
						wave1111111.Transparency = i/30
						wait()
					end
					wait()
					wave1111111:Destroy()
				end)()
			end



			for i = 1, 40 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end




			coroutine.resume(coroutine.create(function()
				debris(CFrame.new(loc), ht, 5)
			end))




			coroutine.resume(coroutine.create(function()
				wait(0.2)
				for i,v in pairs(FindNearestTorso(torso.CFrame.p,25))do
					if v:FindFirstChild('Humanoid') then
						v.Humanoid.Health = v.Humanoid.Health - math.random(20,30)
						v.Humanoid.PlatformStand = true
						v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
						delay(0.5, function()
							v.Humanoid.PlatformStand = false
						end)
					end
				end
				so(142070127, char, ptez[math.random(1,#ptez)])
				GroundWaves5()
				GroundWaves6()
				GroundWaves7()
				GroundWaves8()
				GroundWaves9()
				GroundWaves10() 
			end)) 
			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.6)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.6)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end




			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.on = false
				Debounces.NoIdl = false
				hum.WalkSpeed = ogSpeed
			end
		end
	elseif key == "m" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.on = true
			Debounces.NoIdl = true
			local ogSpeed = hum.WalkSpeed
			hum.WalkSpeed = 0
			root.Anchored = true

			for i = 1, 20 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,0.6,-.2) *CFrame.Angles (math.rad    (45),math.rad(0),math.rad(32)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,1,0)*CFrame.Angles(math.rad     (0),math.rad(0),math.rad(-20)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.4)*CFrame.Angles(math.rad (-    8),math.rad(-40), math.rad(-8)),0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3.2, 0) * CFrame.Angles  (math.rad    (-50), math.rad(40), math.rad(0)), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.8, .4, -1.6) * CFrame.Angles  (math.rad    (30), 0, math.rad(20)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.6, -2, 0) * CFrame.Angles  (math.rad(-    10), math.rad(-40), math.rad(0)), 0.2)
				if Debounces.on == false then break end
				wait()
			end
			wait(1)
			local rng = Instance.new("Part", char)
			rng.Anchored = true
			rng.BrickColor = BrickColor.new("Lime green")
			rng.CanCollide = false
			rng.FormFactor = 3
			rng.Name = "Ring"
			rng.Size = Vector3.new(1, 1, 1)
			rng.Transparency = 0.35
			rng.TopSurface = 0
			rng.BottomSurface = 0
			rng.Position = torso.Position - Vector3.new(0,2,0)
			rng.CFrame = rng.CFrame * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
			local rngm = Instance.new("SpecialMesh", rng)
			rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
			rngm.Scale = Vector3.new(1, 1, 2)
			so(169445602, char, 0.7)
			local tweenTime = 2.136/0.7
			local sound = char.Theme
			local tween = game.TweenService:Create(sound, TweenInfo.new(tweenTime), {Volume = 0})
			tween.Completed:Once(function()
				sound:Pause()
			end)
			if themeState == "Playing" then
				tween:Play()
			end
			coroutine.wrap(function()
				for i = 1, 60, 2 do
					rngm.Scale = Vector3.new(2 + i*2, 2 + i*2, 1)
					rng.Transparency = i/60
					wait()
				end
				wait()
				rng:Destroy()
			end)()
			root.Anchored = false
			hum.WalkSpeed = 50
			hum.Jump = true
			BV = Instance.new("BodyVelocity", torso)
			BV.maxForce = Vector3.new(0,100000,0)
			BV.P = math.huge
			BV.velocity = Vector3.new(0,999999,0)
			for i = 1, 145 do
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, 0)*CFrame.Angles(math.rad(20),math.rad(0),     math.rad(0)),0.7)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-16),     math.rad(0), math.rad(0)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1, 0) * CFrame.Angles(math.rad(40), 0,     math.rad(-20)), 0.7)
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 1, 0) * CFrame.Angles(math.rad(-40),     math.rad(0), math.rad(20)), 0.7)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -2, 0) * CFrame.Angles(math.rad(-10), 0, 0), 0.7)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, 0, -2) * CFrame.Angles(math.rad(0), 0, 0), 0.7)
				if Debounces.on == false then break end
				wait()
			end
			BV:Destroy()
			local voice = so(100840061198163, char, 1.05, 10)
			spawn(function()
				for i = 1, 60 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(-10)), 0.4)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 2.4, 0)*CFrame.Angles(math.rad(170),math.rad(0),math.rad(10)), 0.4)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.4)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), 0), 0.4)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, -1.4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.4)
					if Debounces.on == false then break end
					wait()
				end
			end)
			if (torso.Velocity*Vector3.new(1, 1, 1)).magnitude > 1 then
				repeat wait() until voice.TimePosition >= 2.7
				for i = 1, 30 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(-10)), 0.6)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.4, 3.2, -.5)*CFrame.Angles(math.rad(160),math.rad(0),math.rad(10)), 0.6)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, .2)*CFrame.Angles(math.rad(16),math.rad(0),0), 0.6)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -5, 0) * CFrame.Angles(math.rad(-90), math.rad(0), 0), 0.6)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -2, .4) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
					if Debounces.on == false then break end
					wait()
				end
			end
			Debounces.on = false
			Debounces.NoIdl = false
			local ry,ht,ps=nil,nil,nil
			while ht==nil do
				ry,ht,ps=newRay(root.CFrame*CFrame.new(0,-2,0),root.CFrame*CFrame.new(0,-10,0),5.1,{char}) -- 4.1
				wait()
			end

			local tween = TweenService:Create(sound, TweenInfo.new(tweenTime), {Volume = 1})
			if themeState == "Playing" then
				sound:Resume()
				tween:Play()
			end 

			coroutine.resume(coroutine.create(function()             

				for i,v in pairs(Players:GetPlayers()) do
					charr = v.Character
					camerashake(charr, 15)
				end
			end))

			so(142070127, char, ptez[math.random(1,#ptez)])
			coroutine.resume(coroutine.create(function()
				Landing2()
			end))
			Landing()
			game:GetService("Debris"):AddItem(rng, 1)
			hum.WalkSpeed = ogSpeed
			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
			end
		end
	elseif key == "h" then
		if Debounces.CanAttack == true then
			Debounces.CanAttack = false
			Debounces.NoIdl = true
			Debounces.on = true
			local ogSpeed = hum.WalkSpeed
			hum.WalkSpeed = 5
			coroutine.resume(coroutine.create(function()             

				for i,v in pairs(Players:GetPlayers()) do
					charr = v.Character
					camerashake(charr, 78)
				end
			end))


			coroutine.resume(coroutine.create(function()
				for i = 1,78 do
					for i,v in pairs(FindNearestTorso(torso.CFrame.p,25))do
						if v:FindFirstChild('Humanoid') then
							v.Humanoid.Health = v.Humanoid.Health - (math.random() == 1 and 0.3 or 0.2)
							v.Humanoid.PlatformStand = true
							v:FindFirstChild("Torso").Velocity = hed.CFrame.lookVector * 100
							delay(0.5, function()
								v.Humanoid.PlatformStand = false
							end)
						end
					end
					wait()
				end
			end)) 

			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(50)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(20)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(-20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(-30)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				if Debounces.on == false then break end
				wait()
			end
			GroundPound2()
			for i = 1, 5 do
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(2.2,.9,-2.2)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-20)), 0.7)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(-50)), 0.7)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(-20),0), 0.6)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -2.2, 0) * CFrame.Angles(math.rad(-80), math.rad(20), 0), 0.6)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -2, -1) * CFrame.Angles(math.rad(80), 0, math.rad(10)), 0.6)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -2, -.4) * CFrame.Angles(math.rad(80), 0, math.rad(30)), 0.6)
				if Debounces.on == false then break end
				wait()
			end



			if Debounces.CanAttack == false then
				Debounces.CanAttack = true
				Debounces.on = false
				Debounces.NoIdl = false  
				hum.WalkSpeed = ogSpeed
			end
		end
	elseif key == "n" then
		if Debounces.on == false and root.Anchored == false then
			if themeState == "Playing" then
				themeState = "Stopped"
				theme:Pause()
			elseif themeState == "Stopped" then
				themeState = "Playing"
				theme:Resume()
			end
		end
	elseif key == "b" then
		if Debounces.on == false and root.Anchored == false then
			if hum.WalkSpeed <= 5 then
				hum.WalkSpeed = 50
			else
				hum.WalkSpeed = 5
			end
		end
	end
end)

-- Intro
Intro()



local animpose = "Idle"
local lastanimpose = "Idle"
local sine = 0
local change = 1
local val = 0
local ffing = false
-------------------------------
game:GetService("RunService").RenderStepped:connect(function()
	if char.Humanoid.Jump == true then
		jump = true
	else
		jump = false
	end
	char.Humanoid.FreeFalling:connect(function(f)
		if f then
			ffing = true
		else
			ffing = false
		end
	end)
	sine = sine + change
	if jumpn == true then
		animpose = "Jumping"
	elseif ffing == true then
		animpose = "Freefalling"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
		animpose = "Idle"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
		animpose = "Walking"
	elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
		animpose = "Running"
	end
	if animpose ~= lastanimpose then
		sine = 0
		if Debounces.NoIdl == false then
			if animpose == "Idle" then
				for i = 1, 2 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14),math.rad(0),0), 0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(0), 0), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(-10)), 0.2)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.2, -3, 0) * CFrame.Angles(0, 0, math.rad(10)), 0.2)
				end
			elseif animpose == "Walking" then
				for i = 1, 2 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(0), math.rad(-10), math.rad(0)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9, 0)*CFrame.Angles(0, math.rad(1), math.rad(-10)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(math.rad(-4), 0, math.rad(0)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, -.05) * CFrame.Angles(math.rad(-18), 0, 0), .4)
				end
			elseif animpose == "Running" then
				for i = 1, 2 do
					rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-0), math.rad(-40), math.rad(0)), 0.2)
					larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 1.2, 0-1*math.cos(sine/4)/2)*CFrame.Angles(math.rad(50-80*math.cos(sine/8)/2), math.rad(0), math.rad(0-70*math.cos(sine/8)/2)), 0.2)
					hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+8*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
					torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+4*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
					lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
					rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
				end
				wait()
			end
		else
		end
	end
	lastanimpose = animpose
	if Debounces.NoIdl == false then
		if animpose == "Idle" then
			if stanceToggle == "Normal" then
				change = 0.5
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3,.9,0)*CFrame.Angles(math.rad(88+2*math.cos(sine/14)),math.rad(50),math.rad(0)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3,.9+0.1*math.cos(sine/14),0)*CFrame.Angles(math.rad(50),math.rad(-30),math.rad(-40-2*math.cos(sine/14))), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,-.2)*CFrame.Angles(math.rad(-14+1*math.cos(sine/14)),math.rad(40),0), 0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2, 0) * CFrame.Angles(0, math.rad(-40), 0), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1.15, -3, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
			elseif stanceToggle == "Sitting" then
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9, 0) * CFrame.Angles(math.rad(100-1*math.cos(sine/14)), math.rad(0), math.rad(20)), 0.2)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-2, .9, -1)*CFrame.Angles(math.rad(78+1*math.cos(sine/14)), math.rad(0), math.rad(50)), 0.2)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 3, -.3) * CFrame.Angles(math.rad(-14+1*math.cos(sine/14)), math.rad(0), math.rad(0)),0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(-10+1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -1, -2) * CFrame.Angles(math.rad(-10-1*math.cos(sine/14)), 0, 0), 0.2)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3, .6) * CFrame.Angles(math.rad(-50-1*math.cos(sine/14)), 0, 0), 0.2)
			end
		elseif animpose == "Walking" then
			if stanceToggle == "Normal" then
				change = 1
				rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, .9+.1*math.cos(sine/7), -math.sin(sine/14)/2)*CFrame.Angles(math.sin(sine/14)/-4, math.rad(1) + -math.sin(sine/14)/2, math.rad(30)), 0.1)
				larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, .9+.1*math.cos(sine/7), -math.sin(sine/14)/2)*CFrame.Angles(math.sin(sine/14)/4, math.rad(1) + -math.sin(sine/14)/2, math.rad(-30)), 0.1)
				hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(-8+2*math.cos(sine/7)), math.rad(0), math.rad(0)),0.2)
				torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.1*math.cos(sine/7), 0) * CFrame.Angles(math.rad(-4+2*math.cos(sine/7)), 0, math.rad(0)), 0.2)
				lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.3*math.cos(sine/14)/2, -.05 + math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + -math.sin(sine/14)/2.3, 0, 0), .1)
				rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.3*math.cos(sine/14)/2, -.05 + -math.sin(sine/14)/2) * CFrame.Angles(math.rad(-18) + math.sin(sine/14)/2.3, 0, 0), .1)
			end
		elseif animpose == "Running" then
			change = 1
			rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(3, 0.9, .5) * CFrame.Angles(math.rad(-10-20*math.cos(sine/4)/2), math.rad(-40+10*math.cos(sine/4)/2), math.rad(50-10*math.cos(sine/4)/2)), 0.2)
			larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-3, 0.9, .5)*CFrame.Angles(math.rad(10+20*math.cos(sine/4)/2), math.rad(40-10*math.cos(sine/4)/2), math.rad(-50+10*math.cos(sine/4)/2)), 0.2)
			hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0,3,0)*CFrame.Angles(math.rad(6+6*math.cos(sine/4)/1.8), math.rad(0), math.rad(0)),0.2)
			torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.2+0.2*math.cos(sine/4)/2, 0) * CFrame.Angles(math.rad(-14+10*math.cos(sine/4)/2), 0, math.rad(0)), 0.2)
			lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-1, -3-0.44*math.cos(sine/8)/2.4, -.15 + math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + -math.sin(sine/8)/1.7, 0, 0), .4)
			rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(1, -3+0.44*math.cos(sine/8)/2.4, -.15 + -math.sin(sine/8)/1.5) * CFrame.Angles(math.rad(-20) + math.sin(sine/8)/1.7, 0, 0), .4)
		end
	end
	if animpose == "Walking" then
		if footsteps == false then
			foot:Play()
			footsteps = true
		end
		foot.Pitch = 0.9
	elseif animpose == "Idle" then
		foot:Stop()
		footsteps = false
	elseif animpose == "Running" then
		foot.Pitch = 1.2
		if footsteps == false then 
			foot:Play()
			footsteps = true
		end
	end
end)
