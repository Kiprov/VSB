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
controls(script.Name,[[
+ = Requires mouse hover over a target
All attacks become stronger in overlord phase.
----------------------------------------------------
Q - Ki Bomb
E - Kamehameha
+R - Ki Blast
T - Taunt
+Y - Homing Ki Blast
+U - Portal Blast
+P - Ki Combo
F - Overlord Phase
+G - Barrage
+H - Portal Decimation
J - Pillar Combo
M - Refit
]])
Player=game.Players.LocalPlayer
Character=Player.Character
Mouse = Player:GetMouse()
mouse = Mouse
Character.Humanoid.Name = "noneofurbusiness"
hum = Character.noneofurbusiness
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
RootJoint = Root["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
walking = false
attacking = false
tauntdebounce = false
themeallow = true
secondform = false
m2hallow = false
position = nil
MseGuide = true
overlord = false
equipping = false
varsp = 1
settime = 0
sine = 0
sine2 = 0
ws = 80
hpheight = 1.5
change = 1
change2 = .8
dgs = 75
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
removeuseless = game:GetService("Debris")
smoothen = game:GetService("TweenService")
cam = workspace.CurrentCamera
local armorparts = {}
local dmt2 = {3764270010,3764295936,145722028,502559470,3899700567}
local bloodfolder = Instance.new("Folder",Torso)
local damagable = {3939838865,3939841893,3939843026,3939845535,3939847052,3939850878,3939852266,3939853602,3939829183,3939830416,3939834118}
local tauntable = {3925310429,3925299114,3925290847,3925213878,3855776603,3855741293,3855729829,3855887991,3855729829,3763888399,3763839871,3763889633,3763890389,3763892188,3763893959,3763926621,3763902068,3763930276,3763931576,3763979268,3763991277,3763992778,3764021301}
local attackable = {3925322664,3925326421,3925324288,3925261292,3925220979,3925222809,3925226355,3925236283,3925201040,3925202491,3855882328,3763886229,3763895888,3763898571,3763936968,3763944914,3763950734,3763956358,3763963548,3763968220,3763983948,3763996094,3764029570}
local cowardable = {3799559056,3799563630,3799565228,3799567246,3799567895,3799570371,3799573015}
local killable = {3925338593,3925340318,3925275357,3925248850,3925191249,3855865340,3855864231,3855857800,3855845470,3763902068,3763905783,3763943558,3763954050,3763959105,3763960810,3763971324,3763972541,3763973916,3763975094,3763977084,3763986002,3763987025,3763988194,3763999290,3764005946,3764018586,3764021301,3764031449,3764033173,3764035214,3764042262,3764044965,3764047263,3764049883,3764066563,3764077246,3764071827,3764069394}
local roarable = {3763883020,3763882455,3763881311,3763881833}
local chargable = {3763947578,3763946444,3763941093,3763939950,3799685911}
local ouchable = {3963837468,3963837983,3963838498,3963839005,3963839388,3963839839,3963841729}
dashing = false
combo1 = true
combo2 = false
combo3 = false
combo4 = false

Root.Size = Vector3.new(2.4,2.4,1.2)
LeftArm.Size = Vector3.new(1.2, 2.4, 1.2)
Torso.Size = Vector3.new(2.4,2.4,1.2)
RightArm.Size = Vector3.new(1.2, 2.4, 1.2)
RightLeg.Size = Vector3.new(1.2, 2.4, 1.2)
LeftLeg.Size = Vector3.new(1.2, 2.4, 1.2)
Head.Size = Vector3.new(2.4, 1.2, 1.2)
RootJoint.Parent = Root
Neck.Parent = Torso
RightShoulder.Parent = Torso
LeftShoulder.Parent = Torso
RightHip.Parent = Torso
LeftHip.Parent = Torso

local fpep = "SmoothPlastic"

for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("Accessory") then v:Destroy() end end

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 300, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
pcall(function()
	if Head:FindFirstChild("pcs") == nil then
		local spyable = {4107988850,4107988850,3855933899,3763892188,3763886229,3763839871}
		local sp = spyable[math.random(1,#spyable)]
		for i = 1, 3 do
			local taunt = Instance.new("Sound",Head)
			taunt.SoundId = "rbxassetid://"..sp
			taunt.Volume = 10
			taunt:Play()
			removeuseless:AddItem(taunt,15)
		end
	else
		rdnm2 = damagable[math.random(1,#damagable)]
		for i = 1, 3 do
			local lol = Head.pcs:Clone() lol.Parent = Head lol.Name = "pcs" lol.Volume = 10 lol.SoundId = "rbxassetid://"..rdnm2 lol:Play()
		end
	end
end)

local function weldBetween(a, b)
	local weld = Instance.new("ManualWeld", a)
	weld.Part0 = a
	weld.Part1 = b
	weld.C0 = a.CFrame:inverse() * b.CFrame
	return weld
end
function MAKETRAIL(PARENT,POSITION1,POSITION2,LIFETIME,COLOR)
	A = Instance.new("Attachment", PARENT)
	A.Position = POSITION1
	A.Name = "A"
	B = Instance.new("Attachment", PARENT)
	B.Position = POSITION2
	B.Name = "B"
	x = Instance.new("Trail", PARENT)
	x.Attachment0 = A
	x.Attachment1 = B
	x.Enabled = true
	x.Lifetime = LIFETIME
	x.TextureMode = "Static"
	x.LightInfluence = 0
	x.Color = COLOR
	x.Transparency = NumberSequence.new(0, 1)
end

function ray(pos, di, ran, ignore)
	return workspace:FindPartOnRay(Ray.new(pos, di.unit * ran), ignore)
end

function ray2(StartPos, EndPos, Distance, Ignore)
	local di = CFrame.new(StartPos,EndPos).lookVector
	return ray(StartPos, di, Distance, Ignore)
end

function colortween(a,speed,color1)
	local z = {
		Color = color1
	}
	local tween = smoothen:Create(a,TweenInfo.new(speed,Enum.EasingStyle.Linear),z)
	tween:Play()
end

function takeDamage(victim,damage)
	if victim.MaxHealth < 50000 and victim ~= hum then
		victim.Health = victim.Health - damage
		if victim.Health < 1 then
			killtaunt()
		end
	else
		victim.Parent:BreakJoints()
		killtaunt()
	end
end

function taunt()
	coroutine.wrap(function()
		if tauntdebounce then return end
		tauntdebounce = true
		rdnm2 = tauntable[math.random(1,#tauntable)]
		for i = 1, 3 do
			tauntsound = Instance.new("Sound", Head)
			tauntsound.Volume = 10
			tauntsound.SoundId = "rbxassetid://"..rdnm2
			tauntsound.Looped = false
			tauntsound.Pitch = 1
			tauntsound:Play()
			coroutine.wrap(function()-----futile coding
				wait(.5)
				wait(tauntsound.TimeLength)
				tauntsound:Destroy()
				wait()
				tauntdebounce = false
			end)()
			removeuseless:AddItem(tauntsound,6)
		end
	end)()
end

function attacktaunt()
	coroutine.wrap(function()
		if tauntdebounce then return end
		tauntdebounce = true
		rdnm2 = attackable[math.random(1,#attackable)]
		for i = 1, 3 do
			tauntsound = Instance.new("Sound", Head)
			tauntsound.Volume = 10
			tauntsound.SoundId = "rbxassetid://"..rdnm2
			tauntsound.Looped = false
			tauntsound.Pitch = 1
			tauntsound:Play()
			coroutine.wrap(function()-----futile coding
				wait(.5)
				wait(tauntsound.TimeLength)
				tauntsound:Destroy()
				wait()
				tauntdebounce = false
			end)()
			removeuseless:AddItem(tauntsound,6)
		end
	end)()
end

function killtaunt()
	coroutine.wrap(function()
		if tauntdebounce then return end
		tauntdebounce = true
		rdnm2 = killable[math.random(1,#killable)]
		for i = 1, 3 do
			coroutine.wrap(function()
				tauntsound = Instance.new("Sound", Head)
				tauntsound.Volume = 10
				tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
				tauntsound.Looped = false
				tauntsound.Pitch = 1
				tauntsound:Play()
				wait(.5)
				wait(tauntsound.TimeLength)
				tauntsound:Destroy()
				tauntdebounce = false
			end)()
		end
	end)()
end

function velo(a,name,pos,speed)
	local bov = Instance.new("BodyVelocity",a)
	bov.Name = name
	bov.maxForce = Vector3.new(99999,99999,99999)
	a.CFrame = CFrame.new(a.Position,pos)
	bov.velocity = a.CFrame.lookVector*speed
end
function bolt(parent,from,too,endtarget,color,size,mat,offset)
	local function iray(pos, di, ran, ignore)
		local ing={endtarget}
		return workspace:FindPartOnRayWithWhitelist(Ray.new(pos, di.unit * ran),ing)
	end
	local function iray2(StartPos, EndPos, Distance, Ignore)
		local di = CFrame.new(StartPos,EndPos).lookVector
		return iray(StartPos, di, Distance, Ignore)
	end
	lastposition = from
	local step = 16
	local distance = (from-too).magnitude
	for i = 1,distance, step do
		local from = lastposition
		local too = from + -(from-too).unit*step+ Vector3.new(math.random(-offset,offset),math.random(-offset,offset),math.random(-offset,offset))
		local bolt = Instance.new("Part",parent)
		bolt.Size = Vector3.new(size,size,(from-too).magnitude)
		bolt.Anchored = true
		bolt.CanCollide = false
		bolt.Name = "supeffect"
		bolt.BrickColor = color
		bolt.Material = mat
		bolt.CFrame = CFrame.new(from:lerp(too,.5),too)
		lastposition = too
		coroutine.wrap(function()
			for i = 1, 5 do
				bolt.Transparency = bolt.Transparency + .2
				wait()
			end
			bolt:Destroy()
		end)()
	end
	local lastbolt = Instance.new("Part",parent)
	lastbolt.Size = Vector3.new(1,1,(from-too).magnitude)
	lastbolt.Anchored = true
	lastbolt.CanCollide = false
	lastbolt.BrickColor = color
	lastbolt.Name = "supeffect"
	lastbolt.Material = mat
	lastbolt.CFrame = CFrame.new(lastposition,too)
	lastbolt.Size = Vector3.new(size,size,size)
	local start = lastposition
	local hit,endp = iray2(lastposition,too,650,lastbolt)
	local dis = (start - endp).magnitude
	lastbolt.CFrame = CFrame.new(lastposition,too) * CFrame.new(0,0,-dis/2)
	if dis < 20 then
		lastbolt.Size = Vector3.new(size,size,dis)
	else
		lastbolt.Size = Vector3.new(size,size,20)
	end
	coroutine.wrap(function()
		for i = 1, 5 do
			lastbolt.Transparency = lastbolt.Transparency + .2
			wait()
		end
		lastbolt:Destroy()
	end)()
end
function ballshockwave(position,transparency,brickcolor,mate,transparencyincrease,size)
	local borb = Instance.new("Part",Torso)
	borb.Anchored = true
	borb.CanCollide = false
	borb.Shape = "Ball"
	borb.Name = "supeffect"
	borb.Transparency = transparency
	borb.Size = Vector3.new(1,1,1)
	borb.Material = mate
	borb.BrickColor = brickcolor
	borb.CFrame = position
	coroutine.wrap(function()
		while borb.Transparency < 1 do
			borb.Size = borb.Size + size
			borb.Transparency = borb.Transparency + transparencyincrease
			swait()
		end
		borb:Destroy()
	end)()
end

dmt2random = dmt2[math.random(1,#dmt2)]
doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 5
doomtheme.Name = "doomtheme"
doomtheme.Looped = false
doomtheme.SoundId = "rbxassetid://"..dmt2random
doomtheme:Play()
coroutine.wrap(function()
	while wait() do
		pcall(function()
			doomtheme.Ended:Wait()
			doomtheme.Name = "removing"
			doomtheme:Destroy()
			dmt2random = dmt2[math.random(1,#dmt2)]
			doomtheme = Instance.new("Sound", Torso)
			doomtheme.Volume = 5
			doomtheme.Name = "doomtheme"
			doomtheme.Looped = false
			doomtheme.SoundId = "rbxassetid://"..dmt2random
			doomtheme:Play()
		end)
	end
end)()

Torso.ChildRemoved:connect(function(removed)
	if removed.Name == "doomtheme" then
		dmt2random = dmt2[math.random(1,#dmt2)]
		doomtheme = Instance.new("Sound",Torso)
		doomtheme.SoundId = "rbxassetid://"..dmt2random
		doomtheme.Name = "doomtheme"
		doomtheme.Looped = true
		doomtheme.Volume = 5
		doomtheme:Play()
	end
end)

coroutine.wrap(function()
	while wait() do
		hum.WalkSpeed = ws
		hum.JumpPower = 80
	end
end)()
godmode = coroutine.wrap(function()
	for i,v in pairs(Character:GetChildren()) do
		if v:IsA("BasePart") and v ~= Root then
			v.Anchored = false
		end
	end
	local heystopthat = false
	while true do
		if heystopthat then return end
		if Torso:FindFirstChild("Neck") == nil then
			heystopthat = true
			coroutine.wrap(function()
				if tauntdebounce then return end
				tauntdebounce = true
				rdnm2 = ouchable[math.random(1,#ouchable)]
				for i = 1, 3 do
					tauntsound = Instance.new("Sound", Head)
					tauntsound.Volume = 10
					tauntsound.SoundId = "rbxassetid://"..rdnm2
					tauntsound.Looped = false
					tauntsound.Pitch = 1
					tauntsound:Play()
					coroutine.wrap(function()-----futile coding
						wait(.5)
						wait(tauntsound.TimeLength)
						tauntsound:Destroy()
						wait()
						tauntdebounce = false
					end)()
					removeuseless:AddItem(tauntsound,6)
				end
			end)()
		end
		wait()
	end
end)
godmode()
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
ff = Instance.new("ForceField", Character)
ff.Visible = false

pcall(function()
	----defaultpos----
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.2)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),.2)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
	----defaultpos----
end)

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
			if v:FindFirstChild("Torso") then		
				local Mag = (v.Torso.Position - Position).magnitude		
				if Mag < Radius then		
					table.insert(Returning,v)		
				end
			elseif v:FindFirstChild("UpperTorso") then	
				local Mag = (v.UpperTorso.Position - Position).magnitude		
				if Mag < Radius then		
					table.insert(Returning,v)		
				end
			end	
		end		
	end		
	return Returning		
end

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

function SOUND(PARENT,ID,VOL,LOOP,PITCH,REMOVE)
	local so = Instance.new("Sound")
	so.Parent = PARENT
	so.SoundId = "rbxassetid://"..ID
	so.Volume = VOL
	so.Looped = LOOP
	so.Pitch = PITCH
	so:Play()
	removeuseless:AddItem(so,REMOVE)
end

function meshify(parent,scale,mid,tid)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.Name = "mesh"
	mesh.Scale = scale
	mesh.MeshId = "rbxassetid://"..mid
	mesh.TextureId = "rbxassetid://"..tid
end

function blocktrail(position,size,trans,mat,color)
	local trailblock = Instance.new("Part",Torso)
	trailblock.Anchored = true
	trailblock.CanCollide = false
	trailblock.Transparency = trans
	trailblock.Material = mat
	trailblock.BrickColor = color
	trailblock.CFrame = CFrame.new(position) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	trailblock.Size = size
	coroutine.wrap(function()
		while trailblock.Transparency < 1 do
			trailblock.Transparency = trailblock.Transparency + trans/10
			trailblock.Size = trailblock.Size - trailblock.Size/20
			swait()
		end
		trailblock:Destroy()
	end)()
end

function blood(parent,intensity)
	coroutine.wrap(function()
		local particlemiter1 = Instance.new("ParticleEmitter", parent)
		particlemiter1.Enabled = true
		particlemiter1.Color = ColorSequence.new(BrickColor.new("Crimson").Color)
		particlemiter1.Texture = "rbxassetid://1391189545"
		particlemiter1.Lifetime = NumberRange.new(.6)
		particlemiter1.Size = NumberSequence.new(3,3)
		particlemiter1.Transparency = NumberSequence.new(0,1)
		particlemiter1.Rate = intensity
		particlemiter1.Rotation = NumberRange.new(0,360)
		particlemiter1.Speed = NumberRange.new(6)
		particlemiter1.SpreadAngle = Vector2.new(180,180)
		wait(.2)
		particlemiter1.Enabled = false
		removeuseless:AddItem(particlemiter1,10)
	end)()
	coroutine.wrap(function()
		for i = 1, intensity/20 do
			local ray = Ray.new(parent.Position, Vector3.new(0,-25,0))
			local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,parent.Parent,bloc,Character,blooddecal,blowd,Torso},false,true)
			if part and part.Parent ~= parent.Parent and not part.Parent:FindFirstChildOfClass("Humanoid") then
				local vbn = math.random(5,15)
				coroutine.wrap(function()
					local blooddecal = Instance.new("Part",bloodfolder)
					blooddecal.Size =  Vector3.new(vbn,.1,vbn)
					blooddecal.Transparency = 1
					blooddecal.Anchored = true
					blooddecal.Name = "blowd"
					blooddecal.CanCollide = false
					blooddecal.Position = hitPosition 
					blooddecal.Rotation = Vector3.new(0,math.random(-180,180),0)
					local blood = Instance.new("Decal",blooddecal)
					blood.Face = "Top"
					blood.Texture = "rbxassetid://1391189545"
					blood.Transparency = math.random(.1,.4)
					wait(60)
					for i = 1, 100 do
						blood.Transparency = blood.Transparency + .01
						swait()
					end
					blooddecal:Destroy()
				end)()
			else
			end
			swait()
		end
	end)()
end
function spikeball(position,scale,brickcolor,transparencyincrease)
	coroutine.wrap(function()
		local spikeball = Instance.new("Part",Torso)
		spikeball.Anchored = true
		spikeball.CanCollide = false
		spikeball.Size = Vector3.new(1,1,1)
		spikeball.BrickColor = brickcolor
		spikeball.CFrame = position
		spikeball.Transparency = .85
		local spikemesh = Instance.new("SpecialMesh",spikeball)
		spikemesh.MeshId = "rbxassetid://9982590"
		spikemesh.Scale = Vector3.new(1,1,1)
		while spikeball.Transparency < 1 do
			spikeball.CFrame = spikeball.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikemesh.Scale = spikemesh.Scale + scale
			spikeball.Transparency = spikeball.Transparency + transparencyincrease/10
			swait()
		end
		spikeball:Destroy()
	end)()
end
function shockwave(position,scale,transparency,brickcolor,speed,transparencyincrease)
	coroutine.wrap(function()
		local shockwave = Instance.new("Part", Torso)
		shockwave.Size = Vector3.new(1,1,1)
		shockwave.CanCollide = false
		shockwave.Anchored = true
		shockwave.Transparency = transparency
		shockwave.BrickColor = brickcolor
		shockwave.CFrame = position
		local shockwavemesh = Instance.new("SpecialMesh", shockwave)
		shockwavemesh.Scale = Vector3.new(.5,.125,.5)
		shockwavemesh.MeshId = "rbxassetid://20329976"
		local shockwave2 = Instance.new("Part", Torso)
		shockwave2.Size = Vector3.new(1,1,1)
		shockwave2.CanCollide = false
		shockwave2.Anchored = true
		shockwave2.Transparency = shockwave.Transparency
		shockwave2.BrickColor = shockwave.BrickColor
		shockwave2.CFrame = shockwave.CFrame
		local shockwavemesh2 = Instance.new("SpecialMesh", shockwave2)
		shockwavemesh2.Scale = Vector3.new(.5,.125,.5)
		shockwavemesh2.MeshId = "rbxassetid://20329976"
		while shockwave.Transparency < 1 do
			shockwave.CFrame = shockwave.CFrame * CFrame.Angles(math.rad(0),math.rad(0+speed),0)
			shockwave2.CFrame = shockwave2.CFrame * CFrame.Angles(math.rad(0),math.rad(0-speed),0)
			shockwave.Transparency = shockwave.Transparency + transparencyincrease
			shockwave2.Transparency = shockwave2.Transparency + transparencyincrease
			shockwavemesh2.Scale = shockwavemesh2.Scale + scale
			shockwavemesh.Scale = shockwavemesh.Scale + scale
			swait()
		end
		shockwave:Destroy()
		shockwave2:Destroy()
	end)()
end

function littlebolt(parent,from,too,endtarget,color,size,mat,offset)
	local function iray(pos, di, ran, ignore)
		local ing={endtarget}
		return workspace:FindPartOnRayWithWhitelist(Ray.new(pos, di.unit * ran),ing)
	end
	local function iray2(StartPos, EndPos, Distance, Ignore)
		local di = CFrame.new(StartPos,EndPos).lookVector
		return iray(StartPos, di, Distance, Ignore)
	end
	lastposition = from
	local step = 1
	local distance = (from-too).magnitude
	for i = 1,distance, step do
		local from = lastposition
		local too = from + -(from-too).unit*step+ Vector3.new(math.random(-offset,offset),math.random(-offset,offset),math.random(-offset,offset))
		local bolt = Instance.new("Part",parent)
		bolt.Size = Vector3.new(size,size,(from-too).magnitude)
		bolt.Anchored = true
		bolt.CanCollide = false
		bolt.Name = "supeffect"
		bolt.BrickColor = color
		bolt.Material = mat
		bolt.CFrame = CFrame.new(from:lerp(too,.5),too)
		lastposition = too
		coroutine.wrap(function()
			for i = 1, 5 do
				bolt.Transparency = bolt.Transparency + .2
				wait()
			end
			bolt:Destroy()
		end)()
	end
	local lastbolt = Instance.new("Part",parent)
	lastbolt.Size = Vector3.new(1,1,(from-too).magnitude)
	lastbolt.Anchored = true
	lastbolt.CanCollide = false
	lastbolt.BrickColor = color
	lastbolt.Name = "supeffect"
	lastbolt.Material = mat
	lastbolt.CFrame = CFrame.new(lastposition,too)
	lastbolt.Size = Vector3.new(size,size,size)
	local start = lastposition
	local hit,endp = iray2(lastposition,too,650,lastbolt)
	local dis = (start - endp).magnitude
	lastbolt.CFrame = CFrame.new(lastposition,too) * CFrame.new(0,0,-dis/2)
	if dis < 20 then
		lastbolt.Size = Vector3.new(size,size,dis)
	else
		lastbolt.Size = Vector3.new(size,size,20)
	end
	coroutine.wrap(function()
		for i = 1, 5 do
			lastbolt.Transparency = lastbolt.Transparency + .2
			wait()
		end
		lastbolt:Destroy()
	end)()
end

function blockyeffect(brickcolor,size,trans,posi,mater,spread)
	local blocky = Instance.new("Part",Torso)
	blocky.Anchored = true
	blocky.CanCollide = false
	blocky.BrickColor = brickcolor
	blocky.Size = size
	blocky.Transparency = trans
	blocky.CFrame = posi * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
	blocky.Material = mater
	local locbloc = Instance.new("Part",Torso)
	locbloc.Anchored = true
	locbloc.CanCollide = false
	locbloc.Transparency = 1
	locbloc.Size = Vector3.new(1,1,1)
	locbloc.CFrame = blocky.CFrame * CFrame.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))
	coroutine.wrap(function()
		local a = math.random(-180,180)
		local b = math.random(-180,180)
		local c = math.random(-180,180)
		for i = 1, 20 do
			blocky.CFrame = blocky.CFrame:lerp(CFrame.new(locbloc.Position) * CFrame.Angles(math.rad(a),math.rad(b),math.rad(c)),.2)
			blocky.Transparency = blocky.Transparency + .05
			swait()
		end
		blocky:Destroy()
		locbloc:Destroy()
	end)()
end

shirt = Instance.new("Shirt", Character)
shirt.Name = "Shirt"
pants = Instance.new("Pants", Character)
pants.Name = "Pants"
Character.Shirt.ShirtTemplate = "rbxassetid://2490195374"----lol
Character.Pants.PantsTemplate = "rbxassetid://2490246997"

Head.face:Destroy()
fakehead = Instance.new("Part",Torso)
fakehead.Size = Vector3.new(1,1,1)
fakehead.BrickColor = BrickColor.new("Khaki")
fakehead.Material = "SmoothPlastic"
fakehead.Anchored = false
fakehead.CanCollide = false
fakeheadweld = weldBetween(fakehead,Head) fakeheadweld.C0 = fakeheadweld.C0 * CFrame.Angles(0,math.rad(180),0)
fakeheadmesh = Instance.new("SpecialMesh",fakehead)
fakeheadmesh.MeshId = "rbxassetid://3762685801"
fakeheadmesh.Scale = Vector3.new(0.074, 0.074, 0.074)

leftlocation = Instance.new("Part",LeftArm)
leftlocation.Size = Vector3.new(1,1,1)
leftlocation.Transparency = 1
leftlocation.CanCollide = false
leftlocationweld = weldBetween(leftlocation,LeftArm)
leftlocationweld.C0 = CFrame.new(0,1.5,0)
leftlocation.Name = "ext"
rightlocation = Instance.new("Part",RightArm)
rightlocation.Size = Vector3.new(1,1,1)
rightlocation.CanCollide = false
rightlocation.Transparency = 1
rightlocationweld = weldBetween(rightlocation,RightArm)
rightlocationweld.C0 = CFrame.new(0,1.5,0)
rightlocation.Name = "ext"
leftlocation2 = Instance.new("Part",LeftLeg)
leftlocation2.Size = Vector3.new(1,1,1)
leftlocation2.CanCollide = false
leftlocation2.Transparency = 1
leftlocationweld2 = weldBetween(leftlocation2,LeftLeg)
leftlocationweld2.C0 = CFrame.new(0,2,0)
leftlocation2.Name = "ext"
rightlocation2 = Instance.new("Part",RightLeg)
rightlocation2.Size = Vector3.new(1,1,1)
rightlocation2.CanCollide = false
rightlocation2.Transparency = 1
rightlocationweld2 = weldBetween(rightlocation2,RightLeg)
rightlocationweld2.C0 = CFrame.new(0,2,0)
rightlocation2.Name = "ext"

coroutine.wrap(function()
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BodyVelocity") then
			v:Destroy()
		end
	end
	Character.Parent = workspace
	local det = Instance.new("Part",Torso)
	det.Anchored = true
	det.CanCollide = false
	det.Size = Vector3.new(1,1,1)
	det.Transparency = 1
	det.CFrame = CFrame.new(0,0,0)
	while wait() do
		det.Transparency = 1
		script.Parent = Player.PlayerGui
		if Character.Parent == nil then
			pcall(function()
				Character:Destroy()
			end)
			Player:LoadCharacter()
			_G.loader("Veltex", Player.PlayerGui)
			script:Destroy()
		end
	end
end)()
mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='m' then
		for i,v in pairs(Head:GetDescendants()) do
			if v.Name == "pcs" then
				v:Destroy()
			end
		end
		Player:LoadCharacter()
		if not tauntdebounce then
			rdnm2 = damagable[math.random(1,#damagable)]
			local pcs = Instance.new("Sound", Player.Character.Head)
			pcs.SoundId = "rbxassetid://"..rdnm2
			pcs.Volume = 10
			pcs.Name = "pcs"
			removeuseless:AddItem(pcs,15)
		end
		_G.loader("Veltex", Player.PlayerGui)
		script:Destroy()
		immortality()
		for i,v in pairs(Player.Character:GetDescendants()) do
			if v:IsA("BodyVelocity") then
				v:Destroy()
			end
		end
	elseif Press=='p' then
		if debounce then return end
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if enemyhum.Health < 1 then return end
			local ETorso = enemyhum.Parent:FindFirstChild("Head")
			local ETorso2 = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("UpperTorso")
			if (ETorso.Position - Torso.Position).magnitude < 15 then
				debounce = true
				attacking = true
				local locatetor = Instance.new("Part",Torso)
				locatetor.Size = Vector3.new(1,1,1)
				locatetor.Anchored = true
				locatetor.Transparency = 1
				locatetor.CanCollide = false
				locatetor.CFrame = Root.CFrame * CFrame.new(0,0,-2)
				ETorso2.CFrame = locatetor.CFrame * CFrame.Angles(0,math.rad(180),0)
				takeDamage(enemyhum,math.random(19,31))
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(2,2,2))
				spikeball(ETorso2.CFrame,Vector3.new(2,2,2),BrickColor.new("Really red"),.05)
				blood(ETorso2,200)
				SOUND(ETorso2,1835333323,10,false,math.random(9,11)/10,10)
				for i = 1, 10 do
					ETorso2.CFrame = locatetor.CFrame * CFrame.Angles(0,math.rad(180),0)
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,0.4,1.1)*CFrame.Angles(math.rad(-68.4),math.rad(0.2),math.rad(-37))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.4,0.7)*CFrame.Angles(math.rad(-41.2),math.rad(-71.8),math.rad(-21.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-2,0.6,-0.2)*CFrame.Angles(math.rad(13.9),math.rad(-1.8),math.rad(-14.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,2,1.2)*CFrame.Angles(math.rad(27.1),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-20.7),math.rad(-68.5),math.rad(-7.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					swait()
				end
				vel = Instance.new("BodyVelocity",ETorso2) 
				vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
				torso = ETorso2
				vel.velocity = CFrame.new(Root.Position,torso.Position).lookVector*480
				removeuseless:AddItem(vel,.01)
				blood(torso,200)
				takeDamage(enemyhum,math.random(31,48))
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(2,2,2))
				spikeball(ETorso2.CFrame,Vector3.new(2,2,2),BrickColor.new("Really red"),.05)
				SOUND(ETorso2,1835333323,10,false,math.random(9,11)/10,10)
				for i = 1, 20 do
					ETorso.CFrame = locatetor.CFrame * CFrame.Angles(0,math.rad(180),0)
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.8,0.3)*CFrame.Angles(math.rad(21.4),math.rad(-8.8),math.rad(64.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(-0.6,2.5,0.3)*CFrame.Angles(math.rad(32.8),math.rad(-30.4),math.rad(55.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,1.2,-0.3)*CFrame.Angles(math.rad(-4.1),math.rad(-0.9),math.rad(-38.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-1.4,0.5,-1)*CFrame.Angles(math.rad(-92.4),math.rad(-14.5),math.rad(29.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(72.2),math.rad(51.6),math.rad(-24.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
					swait()
				end
				if enemyhum.Health > 1 then
					local g1 = Instance.new("BodyGyro", nil)
					g1.CFrame = Root.CFrame
					g1.Parent = Root
					g1.D = 175
					g1.P = 20000
					g1.MaxTorque = Vector3.new(3000,90000,3000)
					local borb = Instance.new("Part",Torso)
					borb.Anchored = true
					borb.CanCollide = false
					borb.Transparency = 0
					borb.Size = Vector3.new(.1,.1,.1)
					borb.Shape = "Ball"
					borb.Material = "Neon"
					borb.BrickColor = BrickColor.new("Really red")
					borb.CFrame = rightlocation.CFrame * CFrame.new(-1.8,0,0)
					SOUND(borb,3776292437,10,false,math.random(9,11)/10,10)
					local bl = Instance.new("Sound",borb)
					bl.SoundId = "rbxassetid://3776292987"
					bl.Volume = 8
					bl.Looped = true
					bl:Play()
					for i = 1, 40 do
						g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso2.Position),.11)
						borb.Size = borb.Size + Vector3.new(.05,.05,.05)
						borb.CFrame = rightlocation.CFrame * CFrame.new(-1.8,0,0)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0.2,0,1.3)*CFrame.Angles(math.rad(-34.4),math.rad(5.1),math.rad(80.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-7.1 + 1.5 * math.sin(sine/16)),math.rad(-46.1 + 0 * math.sin(sine/16)),math.rad(0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,0.7-.15*math.sin(sine/16),0.7)*CFrame.Angles(math.rad(11.6 - 5 * math.sin(sine/16)),math.rad(-33.3),math.rad(27 - 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.3 + .1*math.sin(sine/16))*CFrame.Angles(math.rad(-20.7 + 4 * math.sin(sine/16)),math.rad(-47 + 1 * math.sin(sine/16)),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4 - .1 * math.sin(sine/16),2,1.2 - .1*math.sin(sine/16))*CFrame.Angles(math.rad(27.1 - 4 * math.sin(sine/16)),math.rad(32.4),math.rad(-12.3 + 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						swait()
					end
					for i = 1, 20 do
						g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso2.Position),.11)
						borb.CFrame = rightlocation.CFrame * CFrame.new(-1.8,0,0)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-29.1),math.rad(-46.1),math.rad(0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,1.3,0.8)*CFrame.Angles(math.rad(-13.3),math.rad(-45.2),math.rad(35.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.2)*CFrame.Angles(math.rad(-36.1),math.rad(-46.9),math.rad(-0.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.2,2.2,0.6)*CFrame.Angles(math.rad(47.5),math.rad(80.9),math.rad(-128.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,2,1.2)*CFrame.Angles(math.rad(27.1),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						swait()
					end
					removeuseless:AddItem(g1,.001)
					borb.Anchored = false
					local bov = Instance.new("RocketPropulsion",borb) ----blood everywhere
					bov.MaxThrust = 4000
					bov.MaxSpeed = 500
					bov.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
					bov.Target = ETorso2
					bov.TargetRadius = math.huge
					bov:fire()
					coroutine.wrap(function()
						local heet = false
						for i = 1, 500 do
							if heet then break end
							local Hit = damagealll(8,borb.Position)
							for _,v in pairs(Hit) do
								if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid") == enemyhum then
									borb.Anchored = true
									borb.Transparency = 1
									heet = true
								end
							end
							swait()
						end
						if heet then
							SOUND(borb,3776291635,10,false,math.random(9,11)/10,10)
							blood(torso,200)
							takeDamage(enemyhum,math.random(97,112))
							vel = Instance.new("BodyVelocity",ETorso2) 
							vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
							torso = ETorso2
							vel.velocity = CFrame.new(Root.Position,torso.Position).lookVector*300
							removeuseless:AddItem(vel,.01)
							spikeball(borb.CFrame,Vector3.new(15,15,15),BrickColor.new("White"),.1)
							spikeball(borb.CFrame,Vector3.new(7,7,7),BrickColor.new("Really red"),.1)
							spikeball(borb.CFrame,Vector3.new(2.5,2.5,2.5),BrickColor.new("Really red"),.05)
							spikeball(borb.CFrame,Vector3.new(4,4,4),BrickColor.new("Really red"),.05)
							ballshockwave(borb.CFrame,.2,BrickColor.new("Really red"),"Neon",.05,Vector3.new(12,12,12))
							ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(5,5,5))
							ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.15,Vector3.new(20,20,20))
						end
						coroutine.wrap(function()
							for i = 1, 20 do
								borb.Size = borb.Size + Vector3.new(1.5,1.5,1.5)
								borb.Transparency = borb.Transparency + .05
								bl.Volume = bl.Volume - .5
								swait()
							end
							borb:Destroy()
							bl:Destroy()
						end)()
						removeuseless:AddItem(borb,15)
					end)()
					for i = 1, 20 do
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.4,1)*CFrame.Angles(math.rad(40.4),math.rad(-30.9),math.rad(64.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(-1.4,2,0.1)*CFrame.Angles(math.rad(-0.5),math.rad(-34.5),math.rad(65.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0.7,2.1,0.9)*CFrame.Angles(math.rad(-134.4),math.rad(-25.6),math.rad(106.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-1.1,0.2,1.7)*CFrame.Angles(math.rad(24.6),math.rad(44.6),math.rad(37))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(11.7),math.rad(42.3),math.rad(40.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						swait()
					end
				end
				debounce = false
				attacking = false
			end
		end
	elseif Press=='h' then
		if debounce then return end
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if enemyhum.Health < 1 then return end
			local ETorso = enemyhum.Parent:FindFirstChild("Head")
			local ETorso2 = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("UpperTorso")
			ETorso2.Anchored = true
			local partze = Instance.new("Part",ETorso2)
			partze.Anchored = true
			partze.CanCollide = false
			partze.CFrame = ETorso2.CFrame
			partze.Transparency = 1
			partze.Size = Vector3.new(1,1,1)
			local portal = Instance.new("Part",Torso)
			portal.Anchored = true
			portal.CanCollide = false
			portal.Size = Vector3.new(.1,.1,.1)
			portal.Transparency = 1
			portal.CFrame = ETorso2.CFrame * CFrame.new(0,2,3)
			portal.Name = "ext"
			local portalpic = Instance.new("Decal",portal)
			portalpic.Face = "Front"
			portalpic.Texture = "rbxassetid://1513987852"
			portalpic.Transparency = 0
			portalpic.Color3 = BrickColor.new("Really red").Color
			local portalpic2 = Instance.new("Decal",portal)
			portalpic2.Face = "Back"
			portalpic2.Texture = "rbxassetid://1513987852"
			portalpic2.Transparency = 0
			portalpic2.Color3 = BrickColor.new("Really red").Color
			local portalsound = Instance.new("Sound",portal)
			portalsound.Volume = 2
			portalsound.Looped = true
			portalsound.SoundId = "rbxassetid://2293073427"
			portalsound:Play()
			local txc = 0
			for i = 1, 30 do
				ETorso2.CFrame = partze.CFrame
				txc = txc + .35
				portal.Size = portal.Size + Vector3.new(.5,.5,0)
				portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
				swait()
			end
			SOUND(portal,1923787357,6,false,math.random(9,11)/10,10)
			blood(ETorso2,250)
			local arm = Instance.new("Part",Torso)
			arm.Anchored = true
			arm.CanCollide = false
			arm.Size = Vector3.new(1.5,1.5,3.1)
			arm.BrickColor = BrickColor.new("Crimson")
			arm.Material = "Neon"
			arm.Transparency = 1
			arm.CFrame = CFrame.new(portal.Position,ETorso.Position)
			for i = 1, 10 do
				txc = txc + .35
				arm.Transparency = arm.Transparency - .075
				portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
				arm.CFrame = arm.CFrame:lerp(arm.CFrame * CFrame.new(0,0,-.376*2),.2)
				swait()
			end
			for i = 1, 20 do
				txc = txc + .35
				portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
				pcall(function()
					for i,v in pairs(ETorso.Parent:GetDescendants()) do
						if v:IsA("Part") then v.Transparency = v.Transparency + .05
						end
					end
				end)
				ETorso2.CFrame = ETorso2.CFrame:lerp(CFrame.new(portal.Position),.2)
				arm.Transparency = arm.Transparency + .05
				arm.CFrame = arm.CFrame:lerp(arm.CFrame * CFrame.new(0,0,.376),.2)
				swait()
			end
			pcall(function()
				ETorso.Parent:Destroy()
				ETorso.Parent = nil
			end)
			killtaunt()
			for i = 1, 20 do
				portalsound.Volume = portalsound.Volume - .2
				txc = txc + .35
				portal.Size = portal.Size - Vector3.new(1,1,0)
				portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
				swait()
			end
			portal:Destroy()
		end
	elseif Press=='g' then
		if debounce then return end
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if enemyhum.Health < 1 then return end
			local ETorso = enemyhum.Parent:FindFirstChild("Head")
			local ETorso2 = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("UpperTorso")
			if (ETorso.Position - Torso.Position).magnitude < 15 then
				debounce = true
				attacking = true
				ws = 0
				local locatetor = Instance.new("Part",Torso)
				locatetor.Size = Vector3.new(1,1,1)
				locatetor.Anchored = true
				locatetor.Transparency = 1
				locatetor.CanCollide = false
				locatetor.CFrame = Root.CFrame * CFrame.new(0,0,-2)
				ETorso2.CFrame = locatetor.CFrame * CFrame.Angles(0,math.rad(180),0)
				local toweld = weldBetween(ETorso,locatetor)
				toweld.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(180),0)
				SOUND(ETorso,131237241,10,false,math.random(9,11)/10,10)
				for i = 1, 40 do
					locatetor.CFrame = leftlocation.CFrame
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(24.1),math.rad(-46.1),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,1.9,-0.1)*CFrame.Angles(math.rad(-117.9),math.rad(-48.3),math.rad(3.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,1.4,1.6)*CFrame.Angles(math.rad(29.6),math.rad(-46.9),math.rad(0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.9,1.1,-0.1)*CFrame.Angles(math.rad(23.9),math.rad(-5.5),math.rad(-25.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.2,2.3,0.7)*CFrame.Angles(math.rad(30.9),math.rad(26.9),math.rad(-43.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					swait()
				end
				ws = 60
				toweld:Destroy()
				local toweld = weldBetween(ETorso2,Root)
				toweld.C0 = CFrame.new(0,0,-3) * CFrame.Angles(math.rad(0),math.rad(180),0)
				local wav = 0
				local apart = Instance.new("Part",Torso)
				apart.Anchored = false
				apart.CanCollide = false
				apart.Transparency = 1
				apart.Size = Vector3.new(1,1,1)
				apartweld = weldBetween(apart,Root)
				apartweld.C0 = CFrame.new(-15,0,0)
				bpart = Instance.new("Part",Torso)
				bpart.CanCollide = false
				bpart.Size = Vector3.new(1,1,1)
				bpart.Transparency = 1
				bpartweld = weldBetween(bpart,Root)
				bpartweld.C0 = CFrame.new(15,0,0)
				for i = 1, 10 do
					local didhit = false
					local mate = nil
					local colo = nil
					local ray = Ray.new(apart.Position,Vector3.new(0,-25,0))
					local tabd = {bloodfolder,Character}
					local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso,LeftArm,RightArm,LeftLeg,RightLeg,Root,ETorso,ETorso2},false,true)
					if part then
						didhit = true
						mate = part.Material
						colo = part.BrickColor
					else
						didhit = false
					end
					if didhit then
						local grassblock = Instance.new("Part",Torso)
						grassblock.Size = Vector3.new(7,26,7)
						grassblock.Material = mate
						grassblock.BrickColor = colo
						grassblock.Anchored = true
						grassblock.CanCollide = false
						grassblock.CFrame = CFrame.new(hitPosition) * CFrame.Angles(math.rad(math.random(-25,25)),math.rad(math.random(-25,25)),math.rad(math.random(-25,25)))
						coroutine.wrap(function()
							wait(2.5)
							for i = 1, 20 do
								grassblock.CFrame = grassblock.CFrame * CFrame.new(0,-.75,0)
								grassblock.Transparency = grassblock.Transparency + .05
								swait()
							end
							grassblock:Destroy()
						end)()
					end
					local didhit = false
					local mate = nil
					local colo = nil
					local ray = Ray.new(bpart.Position,Vector3.new(0,-25,0))
					local tabd = {bloodfolder,Character}
					local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso,LeftArm,RightArm,LeftLeg,RightLeg,Root,ETorso,ETorso2},false,true)
					if part then
						didhit = true
						mate = part.Material
						colo = part.BrickColor
					else
						didhit = false
					end
					if didhit then
						local grassblock = Instance.new("Part",Torso)
						grassblock.Size = Vector3.new(8,26,8)
						grassblock.Material = mate
						grassblock.BrickColor = colo
						grassblock.Anchored = true
						grassblock.CanCollide = false
						grassblock.CFrame = CFrame.new(hitPosition) * CFrame.Angles(math.rad(math.random(-25,25)),math.rad(math.random(-25,25)),math.rad(math.random(-25,25)))
						coroutine.wrap(function()
							wait(2.5)
							for i = 1, 20 do
								grassblock.CFrame = grassblock.CFrame * CFrame.new(0,-.75,0)
								grassblock.Transparency = grassblock.Transparency + .05
								swait()
							end
							grassblock:Destroy()
						end)()
					end
					wav = wav + .1
					takeDamage(enemyhum,math.random(2,4))
					ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(2,2,2))
					spikeball(ETorso2.CFrame,Vector3.new(2,2,2),BrickColor.new("Really red"),.05)
					blood(ETorso2,50)
					SOUND(ETorso2,1835333323,10,false,math.random(9,11)/10,10)
					for i = 1, 6 do
						Root.CFrame = Root.CFrame * CFrame.new(0,0,-.85)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.5,0.7)*CFrame.Angles(math.rad(-99.1),math.rad(-27.4),math.rad(-9.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,1.9,1.2)*CFrame.Angles(math.rad(22.2),math.rad(-45.3),math.rad(14.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,-0.3,0.6)*CFrame.Angles(math.rad(-79.9),math.rad(-24.9),math.rad(6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.2,2.4,0.4)*CFrame.Angles(math.rad(-1.8),math.rad(41.1),math.rad(-17.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-6.8),math.rad(-46.5),math.rad(-4.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						swait()
					end
					wav = wav + .1
					takeDamage(enemyhum,math.random(2,4))
					ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.1,Vector3.new(1,1,1))
					spikeball(ETorso2.CFrame,Vector3.new(1,1,1),BrickColor.new("Really red"),.1)
					blood(ETorso2,50)
					SOUND(ETorso2,1835333323,10,false,math.random(9,11)/10,10)
					for i = 1, 6 do
						Root.CFrame = Root.CFrame * CFrame.new(0,0,-.85)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,-0.6,0.1)*CFrame.Angles(math.rad(-96.5),math.rad(44.7),math.rad(18.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.3,0.5)*CFrame.Angles(math.rad(-9.4),math.rad(-51.1),math.rad(9.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,1.8,0.4)*CFrame.Angles(math.rad(-84.4),math.rad(39.5),math.rad(-8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3,2.5,0.3)*CFrame.Angles(math.rad(-1.8),math.rad(41.1),math.rad(-17.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-7.3),math.rad(50.6),math.rad(6.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						swait()
					end
					swait()
				end
				toweld:Destroy()
				local toweld = weldBetween(ETorso,locatetor)
				toweld.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(180),0)
				for i = 1, 15 do
					locatetor.CFrame = leftlocation.CFrame
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.6,2.2,0.3)*CFrame.Angles(math.rad(-99.8),math.rad(-64.3),math.rad(1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.6,1.3,1.5)*CFrame.Angles(math.rad(6.8),math.rad(-53.3),math.rad(-20.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5,-0.2,0.9)*CFrame.Angles(math.rad(-47.4),math.rad(-6.6),math.rad(52.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.3,2.4,0.1)*CFrame.Angles(math.rad(13),math.rad(33),math.rad(-38.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(-91),math.rad(-65.2),math.rad(10.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					swait()
				end
				local didhit = false
				local mate = nil
				local colo = nil
				local ray = Ray.new(Root.Position,Vector3.new(0,-12,0))
				local tabd = {bloodfolder,Character}
				local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso,LeftArm,RightArm,LeftLeg,RightLeg,Root,ETorso,ETorso2},false,true)
				if part then
					didhit = true
					mate = part.Material
					colo = part.BrickColor
				else
					didhit = false
				end
				if didhit then
					toweld:Destroy()
					local toweld = weldBetween(ETorso2,locatetor)
					toweld.C0 = toweld.C0 * CFrame.Angles(math.rad(90),math.rad(0),math.rad(180))
					locatetor.CFrame = CFrame.new(hitPosition)
					local targn = Instance.new("Part",Torso)
					targn.Size = Vector3.new(1,1,1)
					targn.Anchored = true
					targn.CanCollide = false
					targn.Transparency = 1
					targn.CFrame = ETorso2.CFrame
					takeDamage(enemyhum,math.random(83,117))
					SOUND(ETorso2,2648563122,10,false,math.random(9,11)/10,10)
					ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(2,2,2))
					spikeball(ETorso2.CFrame,Vector3.new(2,2,2),BrickColor.new("Really red"),.05)
					blood(ETorso2,250)
					for i = 1, 3 do
						SOUND(ETorso2,1835333323,10,false,math.random(9,11)/10,10)
					end
					ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(6,6,6))
					spikeball(ETorso2.CFrame,Vector3.new(6,6,6),BrickColor.new("Really red"),.05)
					ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.1,Vector3.new(12,12,12))
					spikeball(ETorso2.CFrame,Vector3.new(12,12,12),BrickColor.new("Really red"),.1)
					spikeball(ETorso2.CFrame,Vector3.new(18,18,18),BrickColor.new("White"),.1)
					spikeball(ETorso2.CFrame,Vector3.new(26,26,26),BrickColor.new("White"),.2)
					shockwave(CFrame.new(targn.Position)*CFrame.Angles(0,0,math.rad(0)),Vector3.new(6,.75,6),.2,BrickColor.new("Really red"),math.random(16,21),.05)
					shockwave(CFrame.new(targn.Position)*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(0)),Vector3.new(3,2,3),.2,BrickColor.new("Really red"),math.random(16,21),.05)
					shockwave(CFrame.new(targn.Position)*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(0)),Vector3.new(16,4,16),.2,BrickColor.new("White"),math.random(16,21),.1)
					shockwave(CFrame.new(targn.Position)*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(0)),Vector3.new(6,3,6),.2,BrickColor.new("Really red"),math.random(16,21),.05)
					shockwave(CFrame.new(targn.Position)*CFrame.new(0,0,0)*CFrame.Angles(0,0,math.rad(0)),Vector3.new(25,8,25),.2,BrickColor.new("White"),math.random(16,21),.1)
					targn:Destroy()
					coroutine.wrap(function()
						local b = Instance.new("Part",Torso)
						b.Size = Vector3.new(1,1,1)
						b.Anchored = true
						b.CanCollide = false
						b.Transparency = 1
						b.CFrame = CFrame.new(hitPosition)
						local t = 0
						for i = 1, 18 do
							t = t + 20
							local b2 = b:Clone() b2.Parent = Torso b2.Transparency = 1
							b2.CFrame = b.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(t),math.rad(0)) * CFrame.new(16,0,0) 
							local grassblock = Instance.new("Part",Torso)
							grassblock.Size = Vector3.new(5,5,5)
							grassblock.BrickColor = colo
							grassblock.Material = mate
							grassblock.Anchored = true
							grassblock.CanCollide = true
							grassblock.CFrame = b2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
							local ray = Ray.new(grassblock.Position,Vector3.new(0,-8,0))
							local tabd = {bloodfolder,Character}
							local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso,LeftArm,RightArm,LeftLeg,RightLeg,Root},false,true)
							if part then
								grassblock.Position = hitPosition
								grassblock.Material = part.Material
								grassblock.BrickColor = part.BrickColor
								coroutine.wrap(function()
									wait(15)
									for i = 1, 20 do
										grassblock.Transparency = grassblock.Transparency + .05
										swait()
									end
									grassblock:Destroy()
								end)()
							else
								grassblock:Destroy()
							end
						end
					end)()
					coroutine.wrap(function()
						wait(3)
						toweld:Destroy()
					end)()
					for i = 1, 8 do
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.6,2.2,0.3)*CFrame.Angles(math.rad(-99.8),math.rad(-64.3),math.rad(1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.6,1.3,1.5)*CFrame.Angles(math.rad(6.8),math.rad(-53.3),math.rad(-20.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5,-0.2,0.9)*CFrame.Angles(math.rad(-47.4),math.rad(-6.6),math.rad(52.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.3,2.4,0.1)*CFrame.Angles(math.rad(13),math.rad(33),math.rad(-38.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(-91),math.rad(-65.2),math.rad(10.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						swait()
					end
				else
					toweld:Destroy()
				end
				apart:Destroy()
				bpart:Destroy()
				debounce = false
				attacking = false
			end
		end
	elseif Press=='f' then
		if debounce then return end
		if overlord then
			overlord = false
		else
			debounce = true
			attacking = true
			ws = 0
			coroutine.wrap(function()
				if tauntdebounce then return end
				rdnm2 = tauntable[math.random(1,#tauntable)]
				for i = 1, 3 do
					tauntsound = Instance.new("Sound", Head)
					tauntsound.Volume = 10
					tauntsound.SoundId = "rbxassetid://3763967046"
					tauntsound.Looped = false
					tauntsound.Pitch = 1
					tauntsound:Play()
					coroutine.wrap(function()-----futile coding
						wait(tauntsound.TimeLength)
						tauntsound:Destroy()
						wait()
						tauntdebounce = false
					end)()
					removeuseless:AddItem(tauntsound,6)
				end
			end)()
			for i = 1, 110 do
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-25),math.rad(-46.1),math.rad(0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.175)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.7,-0.9)*CFrame.Angles(math.rad(-150.3),math.rad(-44),math.rad(-1.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.175)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.2)*CFrame.Angles(math.rad(-32.2),math.rad(-46.9),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.175)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6,0.9,0)*CFrame.Angles(math.rad(-145.1),math.rad(-13.4),math.rad(-14.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.175)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,2,1.2)*CFrame.Angles(math.rad(27.1),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.175)
				swait()
			end
			for i = 1, 30 do
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7,0.2,-0.2)*CFrame.Angles(math.rad(-120.4),math.rad(-12.2),math.rad(50.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,1.6,1.3)*CFrame.Angles(math.rad(21.8),math.rad(-46.9),math.rad(0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0.3,-0.2)*CFrame.Angles(math.rad(-166.2),math.rad(-24.3),math.rad(-57.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0,2.1,1.3)*CFrame.Angles(math.rad(45.5),math.rad(24.3),math.rad(-40.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(18.5),math.rad(-46.1),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			coroutine.wrap(function()
				if tauntdebounce then return end
				tauntdebounce = true
				rdnm2 = roarable[math.random(1,#roarable)]
				for i = 1, 3 do
					tauntsound = Instance.new("Sound", Head)
					tauntsound.Volume = 10
					tauntsound.SoundId = "rbxassetid://"..rdnm2
					tauntsound.Looped = false
					tauntsound.Pitch = 1
					tauntsound:Play()
					coroutine.wrap(function()-----futile coding
						wait(.5)
						wait(tauntsound.TimeLength)
						tauntsound:Destroy()
						wait()
						tauntdebounce = false
					end)()
					removeuseless:AddItem(tauntsound,6)
				end
			end)()
			overlord = true
			for i = 1, 80 do
				spikeball(Root.CFrame,Vector3.new(5,5,5),BrickColor.new("White"),.05)
				spikeball(Root.CFrame,Vector3.new(27,27,27),BrickColor.new("Really red"),.1)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(46.2),math.rad(-46.2),math.rad(-0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.8,0.8,0.2)*CFrame.Angles(math.rad(50.6),math.rad(1.5),math.rad(22.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,0.9,1.3)*CFrame.Angles(math.rad(44.7),math.rad(-46.9),math.rad(0.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1.3,-0.3)*CFrame.Angles(math.rad(35.4),math.rad(-20.5),math.rad(-40.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.4,0.8,1.6)*CFrame.Angles(math.rad(74.7),math.rad(15.5),math.rad(-62.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			debounce = false
			attacking = false
			ws = 80
		end
	elseif Press=='u' then
		if debounce then return end
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if enemyhum.Health < 1 then return end
			local ETorso = enemyhum.Parent:FindFirstChild("Head")
			local ETorso2 = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("UpperTorso")
			debounce = true
			attacking = true
			ws = 100
			local heet = false
			coroutine.wrap(function()
				if tauntdebounce then return end
				tauntdebounce = true
				rdnm2 = chargable[math.random(1,#chargable)]
				for i = 1, 3 do
					tauntsound = Instance.new("Sound", Head)
					tauntsound.Volume = 10
					tauntsound.SoundId = "rbxassetid://"..rdnm2
					tauntsound.Looped = false
					tauntsound.Pitch = 1
					tauntsound:Play()
					coroutine.wrap(function()
						wait(.5)
						wait(tauntsound.TimeLength)
						tauntsound:Destroy()
						wait()
						tauntdebounce = false
					end)()
					removeuseless:AddItem(tauntsound,6)
				end
			end)()
			for i = 1, 350 do
				if heet then break end
				hum:MoveTo(ETorso2.Position)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,1.5,0.9)*CFrame.Angles(math.rad(-46.4 - .5 * math.sin(sine/16)),math.rad(-44.4 - .5 * math.sin(sine/16)),math.rad(18.8 + 1 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,1.5 - .05 * math.sin(sine/16),1.5)*CFrame.Angles(math.rad(23.8 + 4 * math.sin(sine/16)),math.rad(-42.3 + 4 * math.sin(sine/16)),math.rad(5.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1,-0.2)*CFrame.Angles(math.rad(23.3 + 2 * math.sin(sine/16)),math.rad(-5.2 + 2 * math.sin(sine/16)),math.rad(-24.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.2,2.3,0.3)*CFrame.Angles(math.rad(7.8 + 1 * math.sin(sine/16)),math.rad(16.2 - 1 * math.sin(sine/16)),math.rad(-16.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-41.6),math.rad(-46.2),math.rad(15) + Root.RotVelocity.Y / 30)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				local Hit = damagealll(8,Torso.Position)
				for _,v in pairs(Hit) do
					if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid") == enemyhum then
						heet = true
					end
				end
				swait()
			end
			if not heet then
				debounce = false
				attacking = false
				coroutine.wrap(function()
					if tauntdebounce then return end
					tauntdebounce = true
					rdnm2 = cowardable[math.random(1,#cowardable)]
					for i = 1, 3 do
						tauntsound = Instance.new("Sound", Head)
						tauntsound.Volume = 10
						tauntsound.SoundId = "rbxassetid://"..rdnm2
						tauntsound.Looped = false
						tauntsound.Pitch = 1
						tauntsound:Play()
						coroutine.wrap(function()
							wait(.5)
							wait(tauntsound.TimeLength)
							tauntsound:Destroy()
							wait()
							tauntdebounce = false
						end)()
						removeuseless:AddItem(tauntsound,6)
					end
				end)()
			elseif heet then
				ws = 0
				local locatetor = Instance.new("Part",Torso)
				locatetor.Size = Vector3.new(1,1,1)
				locatetor.Anchored = true
				locatetor.Transparency = 1
				locatetor.CanCollide = false
				locatetor.CFrame = rightlocation.CFrame
				local toweld = weldBetween(ETorso,locatetor)
				toweld.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(180),0)
				SOUND(ETorso,131237241,10,false,math.random(9,11)/10,10)
				for i = 1, 40 do
					locatetor.CFrame = leftlocation.CFrame
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(24.1),math.rad(-46.1),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,1.9,-0.1)*CFrame.Angles(math.rad(-117.9),math.rad(-48.3),math.rad(3.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,1.4,1.6)*CFrame.Angles(math.rad(29.6),math.rad(-46.9),math.rad(0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.9,1.1,-0.1)*CFrame.Angles(math.rad(23.9),math.rad(-5.5),math.rad(-25.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.2,2.3,0.7)*CFrame.Angles(math.rad(30.9),math.rad(26.9),math.rad(-43.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					swait()
				end
				local didhit = false
				local mate = nil
				local colo = nil
				local ray = Ray.new(Root.Position,Vector3.new(0,-30,0))
				local tabd = {bloodfolder,Character}
				local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
				if part then
					didhit = true
					mate = part.Material
					colo = part.BrickColor
				else
					didhit = false
				end
				if didhit then
					local portal = Instance.new("Part",Torso)
					portal.Anchored = true
					portal.CanCollide = false
					portal.Size = Vector3.new(.1,.1,.1)
					portal.Transparency = 1
					portal.CFrame = CFrame.new(hitPosition)
					portal.Name = "ext"
					local portalpic = Instance.new("Decal",portal)
					portalpic.Face = "Top"
					portalpic.Texture = "rbxassetid://1513987852"
					portalpic.Transparency = 0
					portalpic.Color3 = BrickColor.new("Really red").Color
					local portalpic2 = Instance.new("Decal",portal)
					portalpic2.Face = "Bottom"
					portalpic2.Texture = "rbxassetid://1513987852"
					portalpic2.Transparency = 0
					portalpic2.Color3 = BrickColor.new("Really red").Color
					local portalsound = Instance.new("Sound",portal)
					portalsound.Volume = 2
					portalsound.Looped = true
					portalsound.SoundId = "rbxassetid://2293073427"
					portalsound:Play()
					local txc = 0
					for i = 1, 30 do
						txc = txc + .35
						locatetor.CFrame = leftlocation.CFrame
						portal.Size = portal.Size + Vector3.new(.5,0,.5)
						portal.CFrame = portal.CFrame * CFrame.Angles(0,math.rad(0+txc),math.rad(0))
						swait()
					end
					for i = 1, 20 do
						txc = txc + .35
						portal.CFrame = portal.CFrame * CFrame.Angles(0,math.rad(0+txc),math.rad(0))
						locatetor.CFrame = leftlocation.CFrame
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(17.1),math.rad(-15.5),math.rad(-13.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,1.9,-0.1)*CFrame.Angles(math.rad(-117.9),math.rad(-48.3),math.rad(3.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(1.1,1.4,1.1)*CFrame.Angles(math.rad(22.3),math.rad(-17.5),math.rad(-12.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.1,2,0.1)*CFrame.Angles(math.rad(43),math.rad(-26.8),math.rad(-47.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.2,2.3,0.7)*CFrame.Angles(math.rad(30.9),math.rad(26.9),math.rad(-43.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						swait()
					end
					for i = 1, 30 do
						txc = txc + .35
						portal.CFrame = portal.CFrame * CFrame.Angles(0,math.rad(0+txc),math.rad(0))
						locatetor.CFrame = locatetor.CFrame:lerp(CFrame.new(portal.Position),.4)
						for i,v in pairs(ETorso.Parent:GetDescendants()) do
							if v:IsA("Part") then v.Transparency = v.Transparency + .05
							end
						end
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-124.8),math.rad(15.4),math.rad(-152.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.9,1.5,-0.2)*CFrame.Angles(math.rad(-39.2),math.rad(0.7),math.rad(64.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.2,0.2)*CFrame.Angles(math.rad(-21.7),math.rad(-48.4),math.rad(16.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.7,1.7,-1.5)*CFrame.Angles(math.rad(65.2),math.rad(-58.9),math.rad(3.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.1,1.7,0.9)*CFrame.Angles(math.rad(41.2),math.rad(20.5),math.rad(-40.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						swait()
					end
					coroutine.wrap(function()
						SOUND(portal,3382463374,10,true,.5,math.huge)
						local lightray = Instance.new("Part",Torso)
						lightray.Anchored = true
						lightray.Material = "Neon"
						lightray.BrickColor = BrickColor.new("Really red")
						lightray.Shape = "Cylinder"
						lightray.CFrame = portal.CFrame * CFrame.Angles(math.rad(0),0,math.rad(90))
						lightray.Size = Vector3.new(.1,.1,.1)
						coroutine.wrap(function()
							for i = 1, 30 do
								lightray.Size = lightray.Size + Vector3.new(45,0,0)
								swait()
							end
							local lo = 0
							for i = 1, 200 do
								lo = lo + .025
								shockwave(lightray.CFrame*CFrame.Angles(0,0,math.rad(-90)),Vector3.new(6+lo,.75+lo/5,6+lo),.2,BrickColor.new("Really red"),math.random(16,21),.05)
								lightray.Size = lightray.Size + Vector3.new(0,.025,.025)
								swait()
							end
							for i = 1, 20 do
								lightray.Transparency = lightray.Transparency + .05
								swait()
							end
							lightray:Destroy()
						end)()
						for i = 1, 230 do
							txc = txc + .35
							portal.CFrame = portal.CFrame * CFrame.Angles(0,math.rad(0+txc),math.rad(0))
							swait()
						end
						locatetor.CFrame = portal.CFrame * CFrame.new(0,2,0)
						SOUND(ETorso,1923787357,10,false,math.random(9,11)/10,10)
						local Hit = damagealll(20,portal.Position)
						for _,v in pairs(Hit) do
							if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and v:FindFirstChildOfClass("Humanoid") == enemyhum then
								slachtoffer = v:FindFirstChildOfClass("Humanoid")
								takeDamage(slachtoffer,math.random(213,264))
								vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
								vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
								torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
								vel.velocity = CFrame.new(portal.Position,torso.Position).lookVector*250
								removeuseless:AddItem(vel,.01)
								blood(torso,250)
								if overlord then
									for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "ForceField" x.BrickColor = BrickColor.new("Really red") x.Anchored = false
											x.CanCollide = true x:BreakJoints() blood(x,100)
										end end
									for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Destroy() end end
									slachtoffer.Parent = nil
								end
							end
						end
						locatetor:Destroy()
						if not overlord then
							for i,v in pairs(ETorso.Parent:GetDescendants()) do
								if v:IsA("Part") then v.Transparency = 1
								end
							end
							for i = 1, 20 do
								for i,v in pairs(ETorso.Parent:GetDescendants()) do
									if v:IsA("Part") then v.Transparency = v.Transparency - .05
									end
								end
							end
							txc = txc + .35
							portal.Size = portal.Size - Vector3.new(1,0,1)
							portal.CFrame = portal.CFrame * CFrame.Angles(0,math.rad(0+txc),math.rad(0))
							swait()
						end
						portal:Destroy()
					end)()
				end
				if not didhit then
					locatetor:Destroy()
				end
				debounce = false
				attacking = false
				ws = 80
			end
		end
	elseif Press=='j' then
		if debounce then return end
		debounce = true
		attacking = true
		ws = 60
		local waitf = true
		local xo = 0
		local xo2 = -25
		local grasstab={}
		local grasstab2={}
		setmetatable(grasstab,grasstab2)
		local g1 = Instance.new("BodyGyro", nil)
		g1.CFrame = Root.CFrame
		g1.Parent = Root
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(0,90000,0)
		local lp = Instance.new("Part",Torso)
		lp.Anchored = true
		lp.CanCollide = false
		lp.Transparency  = 1
		lp.Size = Vector3.new(1,1,1)
		lp.CFrame = Root.CFrame
		MAKETRAIL(lp,Vector3.new(.2,.2,0),Vector3.new(-.2,-.2,0),2,ColorSequence.new(BrickColor.new("Really red").Color,BrickColor.new("Really black").Color))
		for i = 1, 20 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			blocktrail(rightlocation.Position,Vector3.new(2,2,2),.1,"Neon",BrickColor.new("Crimson"))
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(173.2),math.rad(-75.6),math.rad(158.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-0.2,2.1,0.8)*CFrame.Angles(math.rad(86.5),math.rad(-77),math.rad(165.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(-0.3,1.6,1.3)*CFrame.Angles(math.rad(-135.7),math.rad(-73.4),math.rad(-155.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6,-0.5,0.3)*CFrame.Angles(math.rad(-87.8),math.rad(-17.6),math.rad(-1.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.7,2.3,-0.1)*CFrame.Angles(math.rad(126.2),math.rad(65.2),math.rad(-166.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		removeuseless:AddItem(g1,.001)
		ws = 0
		local locbloc = Instance.new("Part",Torso)
		locbloc.Size = Vector3.new(1,1,1)
		locbloc.Anchored = true
		locbloc.CanCollide = false
		locbloc.Transparency = 1
		locbloc.CFrame = Root.CFrame * CFrame.new(0,0,-3.5)
		local Hit = damagealll(10,locbloc.Position)
		local attakk = false
		for _,v in pairs(Hit) do
			if attack then return end
			if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid") ~= hum then
				attakk = true
				ETorso2 = v:FindFirstChildOfClass("Humanoid").Parent:FindFirstChild("Torso") or v:FindFirstChildOfClass("Humanoid").Parent:FindFirstChild("UpperTorso")
				enemyhum = v:FindFirstChildOfClass("Humanoid")
			end
		end
		if attakk then
			blood(ETorso2,50)
			takeDamage(enemyhum,math.random(11,17))
			for i = 1, 4 do
				xo = xo + 30
				xo2 = -xo2
				local pos1 = Instance.new("Part",Torso)
				pos1.Size = Vector3.new(1,1,1)
				pos1.Anchored = true
				pos1.Transparency = 1
				pos1.CanCollide = false
				pos1.CFrame = Root.CFrame * CFrame.new(xo2,0,-xo) * CFrame.Angles(0,0,0)

				local didhit = false
				local mate = nil
				local colo = nil
				local ray = Ray.new(pos1.Position,Vector3.new(0,-20,0))
				local tabd = {bloodfolder,Character}
				local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
				if part then
					didhit = true
					mate = part.Material
					colo = part.BrickColor
				else
					didhit = false
				end
				if didhit then
					shockwave(CFrame.new(hitPosition)*CFrame.Angles(0,0,math.rad(0)),Vector3.new(7,1,7),.2,BrickColor.new("White"),math.random(16,21),.05)
					shockwave(CFrame.new(hitPosition)*CFrame.Angles(0,0,math.rad(0)),Vector3.new(3,3,3),.2,BrickColor.new("White"),math.random(16,21),.05)
					coroutine.wrap(function()
						local grassblock = Instance.new("Part",Torso)
						grassblock.Size = Vector3.new(12,.1,12)
						grassblock.Anchored = true
						grassblock.CanCollide = false
						grassblock.Transparency = 0
						grassblock.Material = mate
						grassblock.BrickColor = colo
						grassblock.CFrame = CFrame.new(hitPosition) * CFrame.Angles(math.rad(math.random(-12,12)),math.rad(math.random(-12,12)),math.rad(math.random(-12,12)))
						table.insert(grasstab,grassblock)
						SOUND(grassblock,3302387879,10,false,math.random(9,11)/10,10)
						for i = 1, 15 do
							grassblock.Size = grassblock.Size + Vector3.new(0,5,0)
							swait()
						end
						pos1:Destroy()
					end)()
				end
			end
			SOUND(Torso,1835333323,10,false,math.random(9,11)/10,10)
			SOUND(ETorso2,2974876428,8,false,math.random(9,11)/10,10)
			coroutine.wrap(function()
				for i = 1, 15 do
					local irrv = Instance.new("Part",Torso)
					irrv.Size = Vector3.new(1,1,1)
					irrv.Transparency = 1
					irrv.CanCollide = false
					irrv.Anchored = true
					irrv.CFrame = ETorso2.CFrame * CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
					lp.CFrame = irrv.CFrame
					irrv:Destroy()
					ETorso2.CFrame = ETorso2.CFrame:lerp(CFrame.new(grasstab[1].Position),.15)
					swait()
				end
				coroutine.wrap(function()
					local gr = grasstab[1]
					SOUND(gr,138210320,8,false,math.random(8,11)/10,10)
					for i = 1, 20 do
						gr.Size = gr.Size - Vector3.new(0,3,0)
						gr.CFrame = gr.CFrame:lerp(gr.CFrame * CFrame.Angles(math.random(-1,1),math.random(-1,1),math.random(-1,1)),.2)
						swait()
					end
					coroutine.wrap(function()
						wait(15)
						for i = 1, 20 do
							gr.Transparency = gr.Transparency + .05
							swait()
						end
						gr:Destroy()
					end)()
				end)()
				spikeball(ETorso2.CFrame,Vector3.new(3,3,3),BrickColor.new("White"),.05)
				spikeball(ETorso2.CFrame,Vector3.new(9,9,9),BrickColor.new("White"),.1)
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.1,Vector3.new(9,9,9))
				blood(ETorso2,100)
				takeDamage(enemyhum,math.random(11,17))
				for i = 1, 15 do
					local irrv = Instance.new("Part",Torso)
					irrv.Size = Vector3.new(1,1,1)
					irrv.Transparency = 1
					irrv.CanCollide = false
					irrv.Anchored = true
					irrv.CFrame = ETorso2.CFrame * CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
					lp.CFrame = irrv.CFrame
					irrv:Destroy()
					ETorso2.CFrame = ETorso2.CFrame:lerp(CFrame.new(grasstab[2].Position),.15)
					swait()
				end
				coroutine.wrap(function()
					local gr2 = grasstab[2]
					SOUND(gr2,138210320,8,false,math.random(8,11)/10,10)
					for i = 1, 20 do
						gr2.Size = gr2.Size - Vector3.new(0,3,0)
						gr2.CFrame = gr2.CFrame:lerp(gr2.CFrame * CFrame.Angles(math.random(-1,1),math.random(-1,1),math.random(-1,1)),.2)
						swait()
					end
					coroutine.wrap(function()
						wait(15)
						for i = 1, 20 do
							gr2.Transparency = gr2.Transparency + .05
							swait()
						end
						gr2:Destroy()
					end)()
				end)()
				spikeball(ETorso2.CFrame,Vector3.new(3,3,3),BrickColor.new("White"),.05)
				spikeball(ETorso2.CFrame,Vector3.new(9,9,9),BrickColor.new("White"),.1)
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.1,Vector3.new(9,9,9))
				blood(ETorso2,100)
				takeDamage(enemyhum,math.random(11,17))
				for i = 1, 15 do
					local irrv = Instance.new("Part",Torso)
					irrv.Size = Vector3.new(1,1,1)
					irrv.Transparency = 1
					irrv.CanCollide = false
					irrv.Anchored = true
					irrv.CFrame = ETorso2.CFrame * CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
					lp.CFrame = irrv.CFrame
					irrv:Destroy()
					ETorso2.CFrame = ETorso2.CFrame:lerp(CFrame.new(grasstab[3].Position),.15)
					swait()
				end
				coroutine.wrap(function()
					local gr3 = grasstab[3]
					SOUND(gr3,138210320,8,false,math.random(8,11)/10,10)
					for i = 1, 20 do
						gr3.Size = gr3.Size - Vector3.new(0,3,0)
						gr3.CFrame = gr3.CFrame:lerp(gr3.CFrame * CFrame.Angles(math.random(-1,1),math.random(-1,1),math.random(-1,1)),.2)
						swait()
					end
					coroutine.wrap(function()
						wait(15)
						for i = 1, 20 do
							gr3.Transparency = gr3.Transparency + .05
							swait()
						end
						gr3:Destroy()
					end)()
				end)()
				spikeball(ETorso2.CFrame,Vector3.new(3,3,3),BrickColor.new("White"),.05)
				spikeball(ETorso2.CFrame,Vector3.new(9,9,9),BrickColor.new("White"),.1)
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.1,Vector3.new(9,9,9))
				blood(ETorso2,100)
				takeDamage(enemyhum,math.random(11,17))
				for i = 1, 15 do
					local irrv = Instance.new("Part",Torso)
					irrv.Size = Vector3.new(1,1,1)
					irrv.Transparency = 1
					irrv.CanCollide = false
					irrv.Anchored = true
					irrv.CFrame = ETorso2.CFrame * CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
					lp.CFrame = irrv.CFrame
					irrv:Destroy()
					ETorso2.CFrame = ETorso2.CFrame:lerp(CFrame.new(grasstab[4].Position),.15)
					swait()
				end
				coroutine.wrap(function()
					local gr4 = grasstab[4]
					SOUND(gr4,138210320,8,false,math.random(8,11)/10,10)
					for i = 1, 20 do
						gr4.Size = gr4.Size - Vector3.new(0,3,0)
						gr4.CFrame = gr4.CFrame:lerp(gr4.CFrame * CFrame.Angles(math.random(-1,1),math.random(-1,1),math.random(-1,1)),.2)
						swait()
					end
					coroutine.wrap(function()
						wait(15)
						for i = 1, 20 do
							gr4.Transparency = gr4.Transparency + .05
							swait()
						end
						gr4:Destroy()
					end)()
					local lastpos = Instance.new("Part",Torso)
					lastpos.Anchored = true
					lastpos.CanCollide = false
					lastpos.Size = Vector3.new(1,1,1)
					lastpos.CFrame = Root.CFrame * CFrame.new(0,0,-175)
					lastpos.Transparency = 1
					removeuseless:AddItem(lastpos,15)
					waitf = false
					for i = 1, 15 do
						ETorso2.CFrame = ETorso2.CFrame:lerp(CFrame.new(lastpos.Position),.15)
						swait()
					end
				end)()
				spikeball(ETorso2.CFrame,Vector3.new(3,3,3),BrickColor.new("White"),.05)
				spikeball(ETorso2.CFrame,Vector3.new(9,9,9),BrickColor.new("White"),.1)
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
				ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.1,Vector3.new(9,9,9))
				blood(ETorso2,100)
				takeDamage(enemyhum,math.random(11,17))
			end)()
			for i = 1, 14 do
				blocktrail(rightlocation.Position,Vector3.new(2,2,2),.1,"Neon",BrickColor.new("Crimson"))
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1.4,0.7)*CFrame.Angles(math.rad(27),math.rad(-23.3),math.rad(58.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.6,-0.2)*CFrame.Angles(math.rad(-47.1),math.rad(-47),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1.6,0.9)*CFrame.Angles(math.rad(-111.6),math.rad(8.3),math.rad(30))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,2,1.2)*CFrame.Angles(math.rad(27.1),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-31.7),math.rad(-18.1),math.rad(20.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				swait()
			end
			for i = 1, 20 do
				blocktrail(rightlocation.Position,Vector3.new(2,2,2),.1,"Neon",BrickColor.new("Crimson"))
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(44.7),math.rad(-64.8),math.rad(69.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.7,0.7)*CFrame.Angles(math.rad(30.7),math.rad(-17.8),math.rad(69.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(-0.1,2.3,0.6)*CFrame.Angles(math.rad(36),math.rad(-61.9),math.rad(66.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,0.8,0.8)*CFrame.Angles(math.rad(-89.4),math.rad(12.6),math.rad(18.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0,1,1.6)*CFrame.Angles(math.rad(52.4),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			repeat swait() until not waitf
			for i = 1, 20 do
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7,1,-0.1)*CFrame.Angles(math.rad(41.6),math.rad(-0.4),math.rad(20.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5,1.7,1.6)*CFrame.Angles(math.rad(30.7),math.rad(-5.5),math.rad(13.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,0.9,-0.1)*CFrame.Angles(math.rad(45),math.rad(2.7),math.rad(-19.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3,1.9,1.4)*CFrame.Angles(math.rad(26.8),math.rad(12.5),math.rad(-18.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-25.3),math.rad(1.4),math.rad(0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			local g1 = Instance.new("BodyGyro", nil)
			g1.CFrame = Root.CFrame
			g1.Parent = Root
			g1.D = 175
			g1.P = 20000
			g1.MaxTorque = Vector3.new(3000,90000,3000)
			for i = 1, 20 do
				blocktrail(leftlocation2.Position,Vector3.new(2,2,2),.1,"Neon",BrickColor.new("Crimson"))
				local irrv = Instance.new("Part",Torso)
				irrv.Size = Vector3.new(1,1,1)
				irrv.Transparency = 1
				irrv.CanCollide = false
				irrv.Anchored = true
				irrv.CFrame = Root.CFrame * CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				lp.CFrame = irrv.CFrame
				irrv:Destroy()
				g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso2.Position),.11)
				Torso.CFrame = Torso.CFrame:lerp(CFrame.new(ETorso2.Position),.2)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.9,1.6,0.7)*CFrame.Angles(math.rad(31),math.rad(-17.3),math.rad(70.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,0.8,1.8)*CFrame.Angles(math.rad(-29.3),math.rad(-63.3),math.rad(-63.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.9,1.1,0.1)*CFrame.Angles(math.rad(-63.8),math.rad(15.2),math.rad(-22.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.5,2.6,-0.2)*CFrame.Angles(math.rad(-11.3),math.rad(27.3),math.rad(-54.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-39.9),math.rad(-63.8),math.rad(-80.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			SOUND(ETorso2,1835333323,10,false,math.random(9,11)/10,10)
			for i = 1, 3 do
				SOUND(ETorso2,541909913,10,false,math.random(9,11)/10,10)
			end
			local vel = Instance.new("BodyVelocity",ETorso2) 
			vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
			torso = ETorso2
			vel.velocity = CFrame.new(Root.Position,torso.Position).lookVector*475
			removeuseless:AddItem(vel,.01)
			blood(torso,250)
			takeDamage(enemyhum,math.random(113,170))
			ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(2,2,2))
			spikeball(ETorso2.CFrame,Vector3.new(2,2,2),BrickColor.new("Really red"),.05)
			ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
			spikeball(ETorso2.CFrame,Vector3.new(6,6,6),BrickColor.new("White"),.05)
			ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(8,8,8))
			spikeball(ETorso2.CFrame,Vector3.new(15,15,15),BrickColor.new("Really red"),.15)
			ballshockwave(ETorso2.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(3,3,3))
			spikeball(ETorso2.CFrame,Vector3.new(15,15,15),BrickColor.new("White"),.15)
			SOUND(ETorso2,1835333323,10,false,math.random(9,11)/10,10)
			for i = 1, 40 do
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,1.2,1.1)*CFrame.Angles(math.rad(37.2),math.rad(-36.6),math.rad(64.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.6,-0.8)*CFrame.Angles(math.rad(-121.9),math.rad(-63.3),math.rad(-63.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,1.5,1.5)*CFrame.Angles(math.rad(42.4),math.rad(38.9),math.rad(-72.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.4,2.6,-0.3)*CFrame.Angles(math.rad(-18.2),math.rad(38.4),math.rad(-51.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-39.9),math.rad(-63.8),math.rad(-69))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			ws = 80
			removeuseless:AddItem(g1,.001)
			debounce = false
			attacking = false
		else
			for i = 1, 14 do
				blocktrail(rightlocation.Position,Vector3.new(2,2,2),.1,"Neon",BrickColor.new("Crimson"))
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1.4,0.7)*CFrame.Angles(math.rad(27),math.rad(-23.3),math.rad(58.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.6,-0.2)*CFrame.Angles(math.rad(-47.1),math.rad(-47),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1.6,0.9)*CFrame.Angles(math.rad(-111.6),math.rad(8.3),math.rad(30))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,2,1.2)*CFrame.Angles(math.rad(27.1),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-31.7),math.rad(-18.1),math.rad(20.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				swait()
			end
			debounce = false
			attacking = false
			ws = 80
			removeuseless:AddItem(g1,.001)
		end
	elseif Press=='q' then
		if debounce then return end
		debounce = true
		attacking = true
		ws = 11
		attacktaunt()
		local g1 = Instance.new("BodyGyro", nil)
		g1.CFrame = Root.CFrame
		g1.Parent = Root
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(3000,90000,3000)
		local spikeballl = Instance.new("Part",Torso)
		spikeballl.Anchored = true
		spikeballl.CanCollide = false
		spikeballl.Size = Vector3.new(1,1,1)
		spikeballl.BrickColor = BrickColor.new("Really red")
		spikeballl.CFrame = rightlocation.CFrame
		spikeballl.Transparency = .85
		local spikemesh = Instance.new("SpecialMesh",spikeballl)
		spikemesh.MeshId = "rbxassetid://9982590"
		spikemesh.Scale = Vector3.new(20,20,20)
		local spikeballl2 = Instance.new("Part",Torso)
		spikeballl2.Anchored = true
		spikeballl2.CanCollide = false
		spikeballl2.Size = Vector3.new(1,1,1)
		spikeballl2.BrickColor = BrickColor.new("Really red")
		spikeballl2.CFrame = rightlocation.CFrame
		spikeballl2.Transparency = .85
		local spikemesh2 = Instance.new("SpecialMesh",spikeballl2)
		spikemesh2.MeshId = "rbxassetid://9982590"
		spikemesh2.Scale = Vector3.new(30,30,30)
		local spikeballl3 = Instance.new("Part",Torso)
		spikeballl3.Anchored = true
		spikeballl3.CanCollide = false
		spikeballl3.Size = Vector3.new(1,1,1)
		spikeballl3.BrickColor = BrickColor.new("Really red")
		spikeballl3.CFrame = rightlocation.CFrame
		spikeballl3.Transparency = .85
		local spikemesh3 = Instance.new("SpecialMesh",spikeballl3)
		spikemesh3.MeshId = "rbxassetid://9982590"
		spikemesh3.Scale = Vector3.new(40,40,40)
		local borb = Instance.new("Part",Torso)
		borb.Anchored = true
		borb.CanCollide = false
		borb.BrickColor = BrickColor.new("Really red")
		borb.Transparency = 1
		borb.Material = "Neon"
		borb.Shape = "Ball"
		borb.CFrame = rightlocation.CFrame
		borb.Size = Vector3.new(30,30,30)
		SOUND(borb,2466413404,8,false,math.random(8,9)/10,15)
		local kisound = Instance.new("Sound",borb)
		kisound.Volume = 0
		kisound.SoundId = "rbxassetid://3776292987"
		kisound.Pitch = math.random(9,11)/10
		kisound.Looped = true
		kisound:Play()
		for i = 1, 100 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			kisound.Volume = kisound.Volume + .1
			borb.CFrame = rightlocation.CFrame
			borb.Size = borb.Size - Vector3.new(.28,.28,.28)
			borb.Transparency = borb.Transparency - .01
			spikeballl2.Transparency = spikeballl2.Transparency + .0025
			spikeballl3.Transparency = spikeballl3.Transparency + .005
			spikeballl.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikemesh.Scale = spikemesh.Scale - Vector3.new(.15,.15,.15)
			spikeballl3.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikemesh3.Scale = spikemesh3.Scale - Vector3.new(.15,.15,.15)
			spikeballl2.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikemesh2.Scale = spikemesh2.Scale - Vector3.new(.15,.15,.15)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-7.1 + 1.5 * math.sin(sine/16)),math.rad(-46.1 + 0 * math.sin(sine/16)),math.rad(0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,0.7-.15*math.sin(sine/16),0.7)*CFrame.Angles(math.rad(11.6 - 5 * math.sin(sine/16)),math.rad(-33.3),math.rad(27 - 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.3 + .1*math.sin(sine/16))*CFrame.Angles(math.rad(-20.7 + 4 * math.sin(sine/16)),math.rad(-47 + 1 * math.sin(sine/16)),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4 - .1 * math.sin(sine/16),2,1.2 - .1*math.sin(sine/16))*CFrame.Angles(math.rad(27.1 - 4 * math.sin(sine/16)),math.rad(32.4),math.rad(-12.3 + 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,1.8,-0.2)*CFrame.Angles(math.rad(-31.5),math.rad(16.5),math.rad(-45.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		spikeballl2:Destroy()
		spikeballl3:Destroy()
		for i = 1, 30 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			borb.CFrame = rightlocation.CFrame
			spikeballl.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-7.1 + 1.5 * math.sin(sine/16)),math.rad(-46.1 + 0 * math.sin(sine/16)),math.rad(0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,0.7-.15*math.sin(sine/16),0.7)*CFrame.Angles(math.rad(11.6 - 5 * math.sin(sine/16)),math.rad(-33.3),math.rad(27 - 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.3 + .1*math.sin(sine/16))*CFrame.Angles(math.rad(-20.7 + 4 * math.sin(sine/16)),math.rad(-47 + 1 * math.sin(sine/16)),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4 - .1 * math.sin(sine/16),2,1.2 - .1*math.sin(sine/16))*CFrame.Angles(math.rad(27.1 - 4 * math.sin(sine/16)),math.rad(32.4),math.rad(-12.3 + 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4,1.8,-0.2)*CFrame.Angles(math.rad(-31.5),math.rad(16.5),math.rad(-45.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		for i = 1, 20 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			borb.CFrame = rightlocation.CFrame
			spikeballl.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.8,1.2,0.3)*CFrame.Angles(math.rad(45.5),math.rad(-0.1),math.rad(28.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,0.7,1.8)*CFrame.Angles(math.rad(55.6),math.rad(-46.8),math.rad(0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0.2,2.1,-1)*CFrame.Angles(math.rad(108.8),math.rad(76.4),math.rad(106.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.8,2.6,0.3)*CFrame.Angles(math.rad(20.8),math.rad(31.4),math.rad(-50.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(20.7),math.rad(-46.1),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		borb.Anchored = false
		velo(borb,"borbvel",mouse.Hit.p,325)
		coroutine.wrap(function()
			local lp = Instance.new("Part",Torso)
			lp.Anchored = true
			lp.CanCollide = false
			lp.Transparency  = 1
			lp.Size = Vector3.new(1,1,1)
			MAKETRAIL(lp,Vector3.new(.2,.2,0),Vector3.new(-.2,-.2,0),2,ColorSequence.new(BrickColor.new("Really red").Color,BrickColor.new("Really black").Color))
			local toched = false
			borb.Touched:Connect(function(hit)
				if toched then return end
				if hit:IsA("Part") and hit.Parent ~= Character and hit.Parent.Parent ~= Character then
					toched = true
					borb.Anchored = true
					spikeballl:Destroy()
					lp:Destroy()
					borb.Transparency = 1
					kisound:Destroy()
					removeuseless:AddItem(borb,15)
					for i = 1, 3 do
						SOUND(borb,1398290761,10,false,math.random(8,9)/10,20)
						SOUND(borb,3776292437,10,false,math.random(9,11)/10,20)
						SOUND(borb,1776706665,10,false,math.random(9,11)/10,20)
					end
					local didhit = false
					local mate = nil
					local colo = nil
					local ray = Ray.new(borb.Position,Vector3.new(0,-10,0))
					local tabd = {bloodfolder,Character}
					local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
					if part then
						didhit = true
						mate = part.Material
						colo = part.BrickColor
					else
						didhit = false
					end
					if didhit then
						coroutine.wrap(function()
							local b = Instance.new("Part",Torso)
							b.Size = Vector3.new(1,1,1)
							b.Anchored = true
							b.CanCollide = false
							b.Transparency = 1
							b.Position = hitPosition
							b.CFrame = b.CFrame * CFrame.new(0,2,0)
							local t = 0
							for i = 1, 19 do
								t = t + 38
								local b2 = b:Clone() b2.Parent = Torso b2.Transparency = 1
								b2.CFrame = b.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(t),math.rad(0)) * CFrame.new(38,0,0) 
								local grassblock = Instance.new("Part",Torso)
								grassblock.Size = Vector3.new(10,10,10)
								grassblock.BrickColor = colo
								grassblock.Material = mate
								grassblock.Anchored = true
								grassblock.CanCollide = true
								grassblock.CFrame = b2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
								local ray = Ray.new(grassblock.Position,Vector3.new(0,-5,0))
								local tabd = {bloodfolder,Character}
								local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso},false,true)
								if part then
									grassblock.Position = hitPosition
									grassblock.Material = part.Material
									grassblock.BrickColor = part.BrickColor
									coroutine.wrap(function()
										wait(15)
										for i = 1, 20 do
											grassblock.Transparency = grassblock.Transparency + .05
											swait()
										end
										grassblock:Destroy()
									end)()
								else
									grassblock:Destroy()
								end
							end
							for i = 1, 19 do
								t = t + 76
								local b2 = b:Clone() b2.Parent = Torso b2.Transparency = 1
								b2.CFrame = b.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(t),math.rad(0)) * CFrame.new(76,0,0) 
								local grassblock = Instance.new("Part",Torso)
								grassblock.Size = Vector3.new(25,25,25)
								grassblock.BrickColor = colo
								grassblock.Material = mate
								grassblock.Anchored = true
								grassblock.CanCollide = true
								grassblock.CFrame = b2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
								local ray = Ray.new(grassblock.Position,Vector3.new(0,-5,0))
								local tabd = {bloodfolder,Character}
								local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso},false,true)
								if part then
									grassblock.Position = hitPosition
									grassblock.Material = part.Material
									grassblock.BrickColor = part.BrickColor
									coroutine.wrap(function()
										wait(15)
										for i = 1, 20 do
											grassblock.Transparency = grassblock.Transparency + .05
											swait()
										end
										grassblock:Destroy()
									end)()
								else
									grassblock:Destroy()
								end
							end
						end)()
					end
					local Hit = damagealll(135,borb.Position)
					for _,v in pairs(Hit) do
						if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
							slachtoffer = v:FindFirstChildOfClass("Humanoid")
							takeDamage(slachtoffer,math.random(141,183))
							vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
							vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
							torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
							vel.velocity = CFrame.new(borb.Position,torso.Position).lookVector*425
							removeuseless:AddItem(vel,.01)
							blood(torso,100)
							if overlord then
								for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "ForceField" x.BrickColor = BrickColor.new("Really red") x.Anchored = false
										x.CanCollide = true x:BreakJoints() blood(x,100)
									end end
								for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Destroy() end end
								slachtoffer.Parent = nil
							end
						end
					end
					spikeball(borb.CFrame,Vector3.new(30,30,30),BrickColor.new("White"),.075)
					spikeball(borb.CFrame,Vector3.new(25,25,25),BrickColor.new("Really red"),.075)
					spikeball(borb.CFrame,Vector3.new(20,20,20),BrickColor.new("White"),.05)
					spikeball(borb.CFrame,Vector3.new(10,10,10),BrickColor.new("White"),.025)
					spikeball(borb.CFrame,Vector3.new(7,7,7),BrickColor.new("White"),.025)
					spikeball(borb.CFrame,Vector3.new(4,4,4),BrickColor.new("White"),.025)
					spikeball(borb.CFrame,Vector3.new(7,7,7),BrickColor.new("White"),.01)
					spikeball(borb.CFrame,Vector3.new(4,4,4),BrickColor.new("White"),.01)
					ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(26,26,26))
					ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.025,Vector3.new(16,16,16))
					ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.025,Vector3.new(8,8,8))
					ballshockwave(borb.CFrame,.2,BrickColor.new("Really red"),"Neon",.01,Vector3.new(8,8,8))
					ballshockwave(borb.CFrame,.2,BrickColor.new("Really red"),"Neon",.01,Vector3.new(4,4,4))
					ballshockwave(borb.CFrame,.2,BrickColor.new("Really red"),"Neon",.01,Vector3.new(2,2,2))
					shockwave(borb.CFrame,Vector3.new(10,2,10),.2,BrickColor.new("White"),math.random(16,21),.025)
					shockwave(borb.CFrame,Vector3.new(7,7,7),.2,BrickColor.new("White"),math.random(16,21),.05)
					shockwave(borb.CFrame,Vector3.new(25,5,25),.2,BrickColor.new("White"),math.random(16,21),.05)
					shockwave(borb.CFrame,Vector3.new(5,1.5,5),.2,BrickColor.new("White"),math.random(16,21),.01)
					shockwave(borb.CFrame,Vector3.new(3,3,3),.2,BrickColor.new("White"),math.random(16,21),.01)
					shockwave(borb.CFrame,Vector3.new(7,3,7),.2,BrickColor.new("White"),math.random(16,21),.01)
					shockwave(borb.CFrame,Vector3.new(8,3,8),.2,BrickColor.new("White"),math.random(16,21),.01)
					shockwave(borb.CFrame,Vector3.new(45,15,45),.2,BrickColor.new("White"),math.random(16,21),.075)
				end
			end)
			for i = 1, 750 do
				if toched then break end
				local lp2 = lp:Clone() lp2.Parent = Torso
				lp2.CFrame = borb.CFrame * CFrame.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				lp.CFrame = lp2.CFrame
				lp2:Destroy()
				spikeballl.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
				swait()
			end
			if not toched then
				toched = true
				borb.Anchored = true
				spikeballl:Destroy()
				lp:Destroy()
				borb.Transparency = 1
				kisound:Destroy()
				removeuseless:AddItem(borb,15)
				for i = 1, 3 do
					SOUND(borb,1398290761,10,false,math.random(8,9)/10,20)
					SOUND(borb,3776292437,10,false,math.random(9,11)/10,20)
					SOUND(borb,1776706665,10,false,math.random(9,11)/10,20)
				end
				local didhit = false
				local mate = nil
				local colo = nil
				local ray = Ray.new(borb.Position,Vector3.new(0,-10,0))
				local tabd = {bloodfolder,Character}
				local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
				if part then
					didhit = true
					mate = part.Material
					colo = part.BrickColor
				else
					didhit = false
				end
				if didhit then
					coroutine.wrap(function()
						local b = Instance.new("Part",Torso)
						b.Size = Vector3.new(1,1,1)
						b.Anchored = true
						b.CanCollide = false
						b.Transparency = 1
						b.Position = hitPosition
						b.CFrame = b.CFrame * CFrame.new(0,2,0)
						local t = 0
						for i = 1, 19 do
							t = t + 38
							local b2 = b:Clone() b2.Parent = Torso b2.Transparency = 1
							b2.CFrame = b.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(t),math.rad(0)) * CFrame.new(38,0,0) 
							local grassblock = Instance.new("Part",Torso)
							grassblock.Size = Vector3.new(10,10,10)
							grassblock.BrickColor = colo
							grassblock.Material = mate
							grassblock.Anchored = true
							grassblock.CanCollide = true
							grassblock.CFrame = b2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
							local ray = Ray.new(grassblock.Position,Vector3.new(0,-5,0))
							local tabd = {bloodfolder,Character}
							local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso},false,true)
							if part then
								grassblock.Position = hitPosition
								grassblock.Material = part.Material
								grassblock.BrickColor = part.BrickColor
								coroutine.wrap(function()
									wait(15)
									for i = 1, 20 do
										grassblock.Transparency = grassblock.Transparency + .05
										swait()
									end
									grassblock:Destroy()
								end)()
							else
								grassblock:Destroy()
							end
						end
						for i = 1, 19 do
							t = t + 76
							local b2 = b:Clone() b2.Parent = Torso b2.Transparency = 1
							b2.CFrame = b.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(t),math.rad(0)) * CFrame.new(76,0,0) 
							local grassblock = Instance.new("Part",Torso)
							grassblock.Size = Vector3.new(25,25,25)
							grassblock.BrickColor = colo
							grassblock.Material = mate
							grassblock.Anchored = true
							grassblock.CanCollide = true
							grassblock.CFrame = b2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
							local ray = Ray.new(grassblock.Position,Vector3.new(0,-5,0))
							local tabd = {bloodfolder,Character}
							local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso},false,true)
							if part then
								grassblock.Position = hitPosition
								grassblock.Material = part.Material
								grassblock.BrickColor = part.BrickColor
								coroutine.wrap(function()
									wait(15)
									for i = 1, 20 do
										grassblock.Transparency = grassblock.Transparency + .05
										swait()
									end
									grassblock:Destroy()
								end)()
							else
								grassblock:Destroy()
							end
						end
					end)()
				end
				local Hit = damagealll(125,borb.Position)
				for _,v in pairs(Hit) do
					if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
						slachtoffer = v:FindFirstChildOfClass("Humanoid")
						takeDamage(slachtoffer,math.random(141,183))
						vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
						vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
						torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
						vel.velocity = CFrame.new(borb.Position,torso.Position).lookVector*425
						removeuseless:AddItem(vel,.01)
						blood(torso,150)
					end
				end
				spikeball(borb.CFrame,Vector3.new(30,30,30),BrickColor.new("White"),.075)
				spikeball(borb.CFrame,Vector3.new(25,25,25),BrickColor.new("Really red"),.075)
				spikeball(borb.CFrame,Vector3.new(20,20,20),BrickColor.new("White"),.05)
				spikeball(borb.CFrame,Vector3.new(10,10,10),BrickColor.new("White"),.025)
				spikeball(borb.CFrame,Vector3.new(7,7,7),BrickColor.new("White"),.025)
				spikeball(borb.CFrame,Vector3.new(4,4,4),BrickColor.new("White"),.025)
				spikeball(borb.CFrame,Vector3.new(7,7,7),BrickColor.new("White"),.01)
				spikeball(borb.CFrame,Vector3.new(4,4,4),BrickColor.new("White"),.01)
				ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(26,26,26))
				ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.025,Vector3.new(16,16,16))
				ballshockwave(borb.CFrame,.2,BrickColor.new("White"),"Neon",.025,Vector3.new(8,8,8))
				ballshockwave(borb.CFrame,.2,BrickColor.new("Really red"),"Neon",.01,Vector3.new(8,8,8))
				ballshockwave(borb.CFrame,.2,BrickColor.new("Really red"),"Neon",.01,Vector3.new(4,4,4))
				ballshockwave(borb.CFrame,.2,BrickColor.new("Really red"),"Neon",.01,Vector3.new(2,2,2))
				shockwave(borb.CFrame,Vector3.new(10,2,10),.2,BrickColor.new("White"),math.random(16,21),.025)
				shockwave(borb.CFrame,Vector3.new(7,7,7),.2,BrickColor.new("White"),math.random(16,21),.05)
				shockwave(borb.CFrame,Vector3.new(25,5,25),.2,BrickColor.new("White"),math.random(16,21),.05)
				shockwave(borb.CFrame,Vector3.new(5,1.5,5),.2,BrickColor.new("White"),math.random(16,21),.01)
				shockwave(borb.CFrame,Vector3.new(3,3,3),.2,BrickColor.new("White"),math.random(16,21),.01)
				shockwave(borb.CFrame,Vector3.new(7,3,7),.2,BrickColor.new("White"),math.random(16,21),.01)
				shockwave(borb.CFrame,Vector3.new(8,3,8),.2,BrickColor.new("White"),math.random(16,21),.01)
				shockwave(borb.CFrame,Vector3.new(45,15,45),.2,BrickColor.new("White"),math.random(16,21),.075)
			end
		end)()
		for i = 1, 20 do
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,1,0.5)*CFrame.Angles(math.rad(-22.7),math.rad(-22.3),math.rad(21.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.5,0.5)*CFrame.Angles(math.rad(19.8),math.rad(3.6),math.rad(20.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,1.9,-0.8)*CFrame.Angles(math.rad(-61),math.rad(41.1),math.rad(-65))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,1.7,1.4)*CFrame.Angles(math.rad(4.4),math.rad(48),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-25.9),math.rad(46.5),math.rad(0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		ws = 80
		removeuseless:AddItem(g1,.001)
		debounce = false
		attacking = false
	elseif Press=='e' then
		if debounce then return end
		debounce = true
		attacking = true
		ws = 18
		attacktaunt()
		local g1 = Instance.new("BodyGyro", nil)
		g1.CFrame = Root.CFrame
		g1.Parent = Root
		g1.D = 175
		g1.P = 20000
		g1.MaxTorque = Vector3.new(3000,90000,3000)
		local borb = Instance.new("Part",Torso)
		borb.Anchored = true
		borb.CFrame = rightlocation.CFrame
		borb.Material = "Neon"
		borb.BrickColor = BrickColor.new("Really red")
		borb.Size = Vector3.new(1,1,1)
		local kam = Instance.new("Sound",borb)
		kam.SoundId = "rbxassetid://1370232812"
		kam.Volume = 10
		kam.Pitch = .7
		kam:Play()
		local borbmesh = Instance.new("SpecialMesh",borb)
		borbmesh.MeshType = "Sphere"
		borbmesh.Scale = Vector3.new(0,0,0)
		local spikeballl = Instance.new("Part",Torso)
		spikeballl.Anchored = true
		spikeballl.CanCollide = false
		spikeballl.Size = Vector3.new(1,1,1)
		spikeballl.BrickColor = BrickColor.new("Really red")
		spikeballl.CFrame = rightlocation.CFrame
		spikeballl.Transparency = .85
		local spikemesh = Instance.new("SpecialMesh",spikeballl)
		spikemesh.MeshId = "rbxassetid://9982590"
		spikemesh.Scale = Vector3.new(5,5,5)
		local spikeballl2 = Instance.new("Part",Torso)
		spikeballl2.Anchored = true
		spikeballl2.CanCollide = false
		spikeballl2.Size = Vector3.new(1,1,1)
		spikeballl2.BrickColor = BrickColor.new("Really red")
		spikeballl2.CFrame = rightlocation.CFrame
		spikeballl2.Transparency = .9
		local spikemesh2 = Instance.new("SpecialMesh",spikeballl2)
		spikemesh2.MeshId = "rbxassetid://9982590"
		spikemesh2.Scale = Vector3.new(10,10,10)
		local spikeballl3 = Instance.new("Part",Torso)
		spikeballl3.Anchored = true
		spikeballl3.CanCollide = false
		spikeballl3.Size = Vector3.new(1,1,1)
		spikeballl3.BrickColor = BrickColor.new("Really red")
		spikeballl3.CFrame = rightlocation.CFrame
		spikeballl3.Transparency = .95
		local spikemesh3 = Instance.new("SpecialMesh",spikeballl3)
		spikemesh3.MeshId = "rbxassetid://9982590"
		spikemesh3.Scale = Vector3.new(20,20,20)
		coroutine.wrap(function()
			for i = 1, 15 do
				local blaz = Instance.new("Part",Torso)
				blaz.Anchored = true
				blaz.CanCollide = false
				blaz.Transparency = 1
				blaz.BrickColor = BrickColor.new("Really red")
				blaz.CFrame = borb.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
				blaz.Material = "Neon"
				blaz.Size = Vector3.new(1,1,1)
				local blazmesh = Instance.new("SpecialMesh",blaz)
				blazmesh.MeshType = "Sphere"
				blazmesh.Scale = Vector3.new(.25,24,.25)
				coroutine.wrap(function()
					local a = 0
					local b = 0
					local c = 0
					for i = 1, 80 do
						blaz.Transparency = blaz.Transparency - .0025
						a = a + math.random(-180,180)/20
						b = b + math.random(-180,180)/20
						c = c + math.random(-180,180)/20
						blaz.CFrame = blaz.CFrame:lerp(rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),.6)
						swait()
					end
					blaz.Transparency = .8
					for i = 1, 20 do
						blaz.Transparency = blaz.Transparency + .025
						a = a + math.random(-180,180)/20
						b = b + math.random(-180,180)/20
						c = c + math.random(-180,180)/20
						blaz.CFrame = blaz.CFrame:lerp(rightlocation.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180))),.1)
						swait()
					end
					blaz:Destroy()
				end)()
			end

		end)()
		local ztc = 0
		for i = 1, 200 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			spikeballl.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl3.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl2.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			borb.CFrame = rightlocation.CFrame
			borbmesh.Scale = borbmesh.Scale + Vector3.new(.015 + .05*math.sin(sine/3),.015+ .05*math.sin(sine/7),.015+ .05*math.sin(sine/5))
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,ztc + .1*math.sin(sine/21))*CFrame.Angles(math.rad(-7.1 + 1.5 * math.sin(sine/16)),math.rad(-86.1 + 0 * math.sin(sine/16)),math.rad(0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.3,-0.4,1.2)*CFrame.Angles(math.rad(-46.4),math.rad(-1.8),math.rad(-61.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.5,0.9)*CFrame.Angles(math.rad(-47.3),math.rad(-23.6),math.rad(50.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.3 + .1*math.sin(sine/16))*CFrame.Angles(math.rad(-20.7 + 4 * math.sin(sine/16)),math.rad(-47 + 1 * math.sin(sine/16)),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4 - .1 * math.sin(sine/16),2,1.2 - .1*math.sin(sine/16))*CFrame.Angles(math.rad(27.1 - 4 * math.sin(sine/16)),math.rad(32.4),math.rad(-12.3 + 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		for i = 1, 30 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			borbmesh.Scale = borbmesh.Scale + Vector3.new(.0 + .02*math.sin(sine/3),.0+ .02*math.sin(sine/7),.0+ .02*math.sin(sine/5))
			spikeballl.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl3.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl2.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			borb.CFrame = rightlocation.CFrame
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-7.1 + 1.5 * math.sin(sine/16)),math.rad(-86.1 + 0 * math.sin(sine/16)),math.rad(0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.3,-0.4,1.2)*CFrame.Angles(math.rad(-46.4),math.rad(-1.8),math.rad(-61.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.5,0.9)*CFrame.Angles(math.rad(-47.3),math.rad(-23.6),math.rad(50.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.3 + .1*math.sin(sine/16))*CFrame.Angles(math.rad(-20.7 + 4 * math.sin(sine/16)),math.rad(-47 + 1 * math.sin(sine/16)),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4 - .1 * math.sin(sine/16),2,1.2 - .1*math.sin(sine/16))*CFrame.Angles(math.rad(27.1 - 4 * math.sin(sine/16)),math.rad(32.4),math.rad(-12.3 + 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		for i = 1, 25 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			borbmesh.Scale = borbmesh.Scale + Vector3.new(.0 + .02*math.sin(sine/3),.0+ .02*math.sin(sine/7),.0+ .02*math.sin(sine/5))
			spikeballl.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl3.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl2.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			borb.CFrame = rightlocation.CFrame
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.3,-0.4,1.2)*CFrame.Angles(math.rad(-46.4),math.rad(-1.8),math.rad(-61.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.2,-0.7)*CFrame.Angles(math.rad(-48.6),math.rad(-46.8),math.rad(-0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.8,-0.5,0.9)*CFrame.Angles(math.rad(-47.3),math.rad(-23.6),math.rad(50.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.2,1.8,1.2)*CFrame.Angles(math.rad(41.7),math.rad(26.9),math.rad(-34.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-30.1),math.rad(-116.1),math.rad(0.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		for i = 1, 20 do
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			borbmesh.Scale = borbmesh.Scale + Vector3.new(.0 + .02*math.sin(sine/3),.0+ .02*math.sin(sine/7),.0+ .02*math.sin(sine/5))
			spikeballl.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl3.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl2.CFrame = rightlocation.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			borb.CFrame = rightlocation.CFrame
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(16),math.rad(29.9),math.rad(-0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-0.5,0.5,1)*CFrame.Angles(math.rad(-36.2),math.rad(-13.4),math.rad(-72.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.6,1.2,1.5)*CFrame.Angles(math.rad(61.5),math.rad(34.1),math.rad(4.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0.5,0.5)*CFrame.Angles(math.rad(-73.8),math.rad(15.9),math.rad(4.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3,2.3,0.5)*CFrame.Angles(math.rad(1.1),math.rad(38.2),math.rad(-13.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			swait()
		end
		borbmesh.Scale = Vector3.new(15,15,15)
		local beam = Instance.new("Part",Torso)
		beam.Anchored = true
		beam.CanCollide = false
		beam.Transparency = 0
		beam.BrickColor = BrickColor.new("Really red")
		beam.Material = "Neon"
		beam.Shape = "Cylinder"
		beam.Size = Vector3.new(1,9,9)
		spikeball(borb.CFrame,Vector3.new(3,3,3),BrickColor.new("White"),.025)
		spikeball(borb.CFrame,Vector3.new(4,4,4),BrickColor.new("White"),.05)
		spikeball(borb.CFrame,Vector3.new(2,2,2),BrickColor.new("White"),.025)
		spikeball(borb.CFrame,Vector3.new(7,7,7),BrickColor.new("White"),.075)
		for i = 1, 2 do
			SOUND(borb,3776291635,10,false,math.random(9,11)/10,10)
		end
		local ren = Instance.new("Sound",borb)
		ren.SoundId = "rbxassetid://3776292987"
		ren.Volume = 10
		ren.Looped = true
		ren.Pitch = .8
		ren:Play()
		local posl = Instance.new("Part",Torso)
		posl.Size = Vector3.new(1,1,1)
		posl.Anchored = true
		posl.CanCollide = false
		posl.Transparency = 1
		local ren2 = Instance.new("Sound",posl)
		ren2.SoundId = "rbxassetid://3776292987"
		ren2.Volume = 10
		ren2.Pitch = .8
		ren2.Looped = true
		ren2:Play()
		for i = 1, 350 do
			kam.Volume = kam.Volume - .5
			ztc = ztc + .015
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			local start = borb.CFrame*CFrame.new(0,0,0).p
			local hit,endp = ray2(start,mouse.Hit.p,650,Character)
			local dis = (start - endp).magnitude
			posl.CFrame = CFrame.new(endp)
			local Hit = damagealll(25,posl.Position)
			for _,v in pairs(Hit) do
				if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 then
					slachtoffer = v:FindFirstChildOfClass("Humanoid")
					takeDamage(slachtoffer,math.random(21,31))
					vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
					vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
					torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
					vel.velocity = CFrame.new(borb.Position,torso.Position).lookVector*250
					removeuseless:AddItem(vel,.01)
					blood(torso,25)
				end
			end
			local explo = Instance.new("Part",Torso)
			explo.Anchored = true
			explo.CanCollide = false
			explo.Transparency = 0
			explo.Size = Vector3.new(17,17,17)
			explo.Material = "Neon"
			explo.BrickColor = BrickColor.new("Really red")
			explo.CFrame = CFrame.new(endp) * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
			coroutine.wrap(function()
				for i = 1, 40 do
					explo.Size = explo.Size - Vector3.new(.5,.5,.5)
					explo.Transparency = explo.Transparency + .025
					swait()
				end
				explo:Destroy()
			end)()
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,ztc)*CFrame.Angles(math.rad(16),math.rad(29.9),math.rad(-0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			beam.CFrame = CFrame.new(start,endp) * CFrame.new(0,0,-dis/2) * CFrame.Angles(math.rad(0),math.rad(90),0)
			beam.Size = Vector3.new(dis,9*math.sin(sine),9*math.sin(sine))
			borbmesh.Scale = Vector3.new(15*math.sin(sine),15*math.sin(sine),15*math.sin(sine))
			spikeballl.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl3.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl2.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			borb.CFrame = rightlocation.CFrame * CFrame.new(1.7,-6,0)
			swait()
		end
		SOUND(rightlocation,3776291635,10,false,.8,10)
		for i = 1, 20 do
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.1,1,1.8)*CFrame.Angles(math.rad(-74.7),math.rad(-15.8),math.rad(-56.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.6,1.2,1.5)*CFrame.Angles(math.rad(61.5),math.rad(34.1),math.rad(4.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1.1,0.2)*CFrame.Angles(math.rad(-63.1),math.rad(35.1),math.rad(-14.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.2,1.7,1.6)*CFrame.Angles(math.rad(36.6),math.rad(30),math.rad(-16.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,ztc+1)*CFrame.Angles(math.rad(39.2),math.rad(29.9),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
			local start = borb.CFrame*CFrame.new(0,0,0).p
			local hit,endp = ray2(start,mouse.Hit.p,650,Character)
			local dis = (start - endp).magnitude
			posl.CFrame = CFrame.new(endp)
			ren.Volume = ren.Volume - .5
			ren2.Volume = ren.Volume
			beam.Transparency = beam.Transparency + .05
			spikemesh.Scale = spikemesh.Scale + Vector3.new(2,2,2)
			spikemesh2.Scale = spikemesh2.Scale + Vector3.new(2,2,2)
			spikemesh3.Scale = spikemesh3.Scale + Vector3.new(2,2,2)
			spikeballl.Transparency = spikeballl.Transparency + .005
			spikeballl2.Transparency = spikeballl2.Transparency + .005
			spikeballl3.Transparency = spikeballl3.Transparency + .005
			borb.Transparency = borb.Transparency + .005
			beam.CFrame = CFrame.new(start,endp) * CFrame.new(0,0,-dis/2) * CFrame.Angles(math.rad(0),math.rad(90),0)
			beam.Size = Vector3.new(dis,9*math.sin(sine),9*math.sin(sine))
			borbmesh.Scale = Vector3.new(15*math.sin(sine),15*math.sin(sine),15*math.sin(sine))
			spikeballl.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl3.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			spikeballl2.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
			swait()
		end
		removeuseless:AddItem(g1,.001)
		kam:Destroy()
		ren:Destroy()
		ren2:Destroy()
		posl:Destroy()
		beam:Destroy()
		borb:Destroy()
		spikeballl:Destroy()
		spikeballl2:Destroy()
		spikeballl3:Destroy()
		ws = 80
		debounce = false
		attacking = false
	elseif Press=='y' then
		if debounce then return end
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if enemyhum.Health < 1 then return end
			local ETorso = enemyhum.Parent:FindFirstChild("Head")
			local ETorso2 = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("UpperTorso")
			debounce = true
			attacking = true
			ws = 12
			attacktaunt()
			local g1 = Instance.new("BodyGyro", nil)
			g1.CFrame = Root.CFrame
			g1.Parent = Root
			g1.D = 175
			g1.P = 20000
			g1.MaxTorque = Vector3.new(3000,90000,3000)
			coroutine.wrap(function()
				for i = 1, 10 do
					local spikeballl = Instance.new("Part",Torso)
					spikeballl.Anchored = true
					spikeballl.CanCollide = false
					spikeballl.Size = Vector3.new(1,1,1)
					spikeballl.BrickColor = BrickColor.new("Really red")
					spikeballl.CFrame = rightlocation.CFrame
					spikeballl.Transparency = .85
					local spikemesh = Instance.new("SpecialMesh",spikeballl)
					spikemesh.MeshId = "rbxassetid://9982590"
					spikemesh.Scale = Vector3.new(20,20,20)
					local borb = Instance.new("Part",Torso)
					borb.Anchored = true
					borb.CanCollide = false
					borb.CFrame = rightlocation.CFrame
					borb.Shape = "Ball"
					borb.Transparency = .5
					borb.Size = Vector3.new(20,20,20)
					borb.Material = "Neon"
					borb.BrickColor = BrickColor.new("Really red")
					coroutine.wrap(function()
						for i = 1, 20 do
							borb.Size = borb.Size - Vector3.new(1,1,1)
							borb.Transparency = borb.Transparency + .025
							spikeballl.Transparency = spikeballl.Transparency + .01
							spikemesh.Scale = spikemesh.Scale - Vector3.new(1,1,1)
							borb.CFrame = leftlocation.CFrame
							spikeballl.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
							swait()
						end
						borb:Destroy()
					end)()
					swait(5)
				end
			end)()
			local killdriver = Instance.new("Part",Torso)
			killdriver.Anchored = true
			killdriver.CanCollide = false
			killdriver.Size = Vector3.new(1.5,1.5,1.5)
			killdriver.Shape = "Ball"
			killdriver.Transparency = 1
			killdriver.Material = "Neon"
			killdriver.BrickColor = BrickColor.new("Really red")
			killdriver.CFrame = leftlocation.CFrame
			SOUND(killdriver,232213955,10,false,math.random(9,11)/10,15)
			coroutine.wrap(function()
				for i = 1, 20 do
					killdriver.CFrame = leftlocation.CFrame
					killdriver.Transparency = killdriver.Transparency - .05
					swait()
				end
			end)()
			for i = 1, 50 do
				g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.7,0.2)*CFrame.Angles(math.rad(-77.1),math.rad(-42.6),math.rad(20.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-7.1 + 1.5 * math.sin(sine/16)),math.rad(-46.1 + 0 * math.sin(sine/16)),math.rad(0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.3 + .1*math.sin(sine/16))*CFrame.Angles(math.rad(-20.7 + 4 * math.sin(sine/16)),math.rad(-47 + 1 * math.sin(sine/16)),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.95,0.6-.22*math.sin(sine/16),-0.2)*CFrame.Angles(math.rad(13.9 - 3 * math.sin(sine/16)),math.rad(-1.8),math.rad(-19.7 + 4 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4 - .1 * math.sin(sine/16),2,1.2 - .1*math.sin(sine/16))*CFrame.Angles(math.rad(27.1 - 4 * math.sin(sine/16)),math.rad(32.4),math.rad(-12.3 + 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			for i = 1, 20 do
				g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,mouse.Hit.p),.11)
				killdriver.CFrame = leftlocation.CFrame
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.8,2.3,-0.3)*CFrame.Angles(math.rad(-138.8),math.rad(-64.6),math.rad(-13.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,1.8,1.3)*CFrame.Angles(math.rad(25),math.rad(-46.3),math.rad(3.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1.1,-0.3)*CFrame.Angles(math.rad(7.9),math.rad(-7.3),math.rad(-35.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.2,1.9,1.2)*CFrame.Angles(math.rad(50.2),math.rad(34.2),math.rad(-47.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(28.3),math.rad(39.6),math.rad(-39.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			local bco = 100
			local bco2 = 0
			killdriver.Anchored = false
			MAKETRAIL(killdriver,Vector3.new(.2,.2,0),Vector3.new(-.2,-.2,0),2,ColorSequence.new(BrickColor.new("Really red").Color,BrickColor.new("Really black").Color))
			local beginning = true
			local bov = Instance.new("RocketPropulsion",killdriver)
			bov.MaxThrust = 4000
			bov.MaxSpeed = bco
			bov.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bov.Target = ETorso2
			bov.TargetRadius = math.huge
			bov:fire()
			coroutine.wrap(function()
				for i = 1, 99 do
					bco = bco - .8
					bov.MaxSpeed = bco
					swait()
				end
				bov:Destroy()
				killdriver.Anchored = true
				coroutine.wrap(function()
					while beginning do
						spikeball(killdriver.CFrame,Vector3.new(killdriver.Size.X/5,killdriver.Size.Y/5,killdriver.Size.Z/5),BrickColor.new("Really red"),.1)
						swait(4)
					end
				end)()
				for i = 1, 200 do
					bco2 = bco2 + .05
					killdriver.Size = killdriver.Size + Vector3.new(bco2*math.sin(sine/4),bco2*math.sin(sine/4),bco2*math.sin(sine/4))
					swait()
				end
				SOUND(killdriver,3776292437,10,false,1,10)
				local loopie = Instance.new("Sound",killdriver)
				loopie.SoundId = "rbxassetid://3776292987"
				loopie.Volume = 10
				loopie.Looped = true
				loopie:Play()
				repeat swait() killdriver.Size = killdriver.Size + Vector3.new(2,2,2) until killdriver.Size.Y > 74
				ballshockwave(killdriver.CFrame,.2,BrickColor.new("White"),"Neon",.05,Vector3.new(15,15,15))
				local follower = Instance.new("Part",Torso)
				follower.Anchored = false
				follower.CanCollide = false
				follower.Transparency = 1
				follower.CFrame = killdriver.CFrame
				follower.Size = Vector3.new(1,1,1)
				local bco3 = 0
				local bov = Instance.new("RocketPropulsion",follower)
				bov.MaxThrust = 4000
				bov.MaxSpeed = bco3
				bov.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
				bov.Target = ETorso2
				bov.TargetRadius = math.huge
				bov:fire()
				coroutine.wrap(function()
					MAKETRAIL(killdriver,Vector3.new(4,4,0),Vector3.new(-4,-4,0),2,ColorSequence.new(BrickColor.new("Really red").Color,BrickColor.new("Really black").Color)) 
					for i = 1, 500 do
						bco3 = bco3 + 1
						bov.MaxSpeed = bco3
						killdriver.CFrame = follower.CFrame
						local Hit = damagealll(37.5,killdriver.Position)
						for _,v in pairs(Hit) do
							if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid").Health > 0 and v:FindFirstChildOfClass("Humanoid") == enemyhum then
								slachtoffer = v:FindFirstChildOfClass("Humanoid")
								takeDamage(slachtoffer,math.random(3,5))
								vel = Instance.new("BodyVelocity",v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")) 
								vel.maxForce = Vector3.new(9999999999999,9999999999999,9999999999999)
								torso = v:FindFirstChild("Torso") or v:FindFirstChild("UpperTorso")
								vel.velocity = CFrame.new(killdriver.Position,torso.Position).lookVector*-50
								removeuseless:AddItem(vel,.01)
								blood(torso,20)
								if overlord then
									for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "ForceField" x.BrickColor = BrickColor.new("Really red") x.Anchored = false
											x.CanCollide = true x:BreakJoints() blood(x,100)
										end end
									for i,x in pairs(slachtoffer.Parent:GetDescendants()) do if x:IsA("Part") then x:Destroy() end end
									slachtoffer.Parent = nil
								end
							end
						end
						swait()
					end
					repeat swait() bov.MaxSpeed = bov.MaxSpeed - 20 killdriver.Size = killdriver.Size - Vector3.new(1,1,1) until killdriver.Size.Y < 1
					SOUND(follower,3776291635,10,false,1,10)
					beginning = false
					bov:Destroy()
					killdriver:Destroy()
					follower.Anchored = true
					removeuseless:AddItem(follower,10)
					ballshockwave(follower.CFrame,0,BrickColor.new("Really red"),"Neon",.05,Vector3.new(4,4,4))
					spikeball(follower.CFrame,Vector3.new(4,4,4),BrickColor.new("Really red"),.05)
					ballshockwave(follower.CFrame,0,BrickColor.new("Really red"),"Neon",.1,Vector3.new(8,8,8))
					spikeball(follower.CFrame,Vector3.new(8,8,8),BrickColor.new("Really red"),.1)
					spikeball(follower.CFrame,Vector3.new(12,12,12),BrickColor.new("Really red"),.25)
				end)()

			end)()
			for i = 1, 20 do
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,0,0.4)*CFrame.Angles(math.rad(-39.7),math.rad(8.7),math.rad(-14.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0,2.4,0.5)*CFrame.Angles(math.rad(-30.6),math.rad(-72.6),math.rad(-3.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,1.2,0)*CFrame.Angles(math.rad(18.8),math.rad(-2.8),math.rad(-30.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,2,1.2)*CFrame.Angles(math.rad(27.1),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-31.9),math.rad(-72.3),math.rad(-10))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				swait()
			end
			removeuseless:AddItem(g1,.001)
			debounce = false
			attacking = false
			ws = 80
		end
	elseif Press=='r' then
		if debounce then return end
		if mouse.Target ~= nil and mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
			local enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
			if enemyhum.Health < 1 then return end
			local ETorso = enemyhum.Parent:FindFirstChild("Head")
			local ETorso2 = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("UpperTorso")
			debounce = true
			attacking = true
			ws = 100
			local heet = false
			coroutine.wrap(function()
				if tauntdebounce then return end
				tauntdebounce = true
				rdnm2 = chargable[math.random(1,#chargable)]
				for i = 1, 3 do
					tauntsound = Instance.new("Sound", Head)
					tauntsound.Volume = 10
					tauntsound.SoundId = "rbxassetid://"..rdnm2
					tauntsound.Looped = false
					tauntsound.Pitch = 1
					tauntsound:Play()
					coroutine.wrap(function()
						wait(.5)
						wait(tauntsound.TimeLength)
						tauntsound:Destroy()
						wait()
						tauntdebounce = false
					end)()
					removeuseless:AddItem(tauntsound,6)
				end
			end)()
			for i = 1, 350 do
				if heet then break end
				hum:MoveTo(ETorso2.Position)
				LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,1.5,0.9)*CFrame.Angles(math.rad(-46.4 - .5 * math.sin(sine/16)),math.rad(-44.4 - .5 * math.sin(sine/16)),math.rad(18.8 + 1 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,1.5 - .05 * math.sin(sine/16),1.5)*CFrame.Angles(math.rad(23.8 + 4 * math.sin(sine/16)),math.rad(-42.3 + 4 * math.sin(sine/16)),math.rad(5.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1,-0.2)*CFrame.Angles(math.rad(23.3 + 2 * math.sin(sine/16)),math.rad(-5.2 + 2 * math.sin(sine/16)),math.rad(-24.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.2,2.3,0.3)*CFrame.Angles(math.rad(7.8 + 1 * math.sin(sine/16)),math.rad(16.2 - 1 * math.sin(sine/16)),math.rad(-16.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-41.6),math.rad(-46.2),math.rad(15) + Root.RotVelocity.Y / 30)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
				local Hit = damagealll(8,Torso.Position)
				for _,v in pairs(Hit) do
					if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChildOfClass("Humanoid") == enemyhum then
						heet = true
					end
				end
				swait()
			end
			if heet then
				ws = 0
				local locatetor = Instance.new("Part",Torso)
				locatetor.Size = Vector3.new(1,1,1)
				locatetor.Anchored = true
				locatetor.Transparency = 1
				locatetor.CanCollide = false
				locatetor.CFrame = rightlocation.CFrame
				local toweld = weldBetween(ETorso,locatetor)
				toweld.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(180),0)
				SOUND(ETorso,131237241,10,false,math.random(9,11)/10,10)
				for i = 1, 50 do
					locatetor.CFrame = rightlocation.CFrame
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-15.8),math.rad(45),math.rad(10.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,0.7,0.7)*CFrame.Angles(math.rad(11.6),math.rad(-33.3),math.rad(27))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,2.4,-0.4)*CFrame.Angles(math.rad(-17.7),math.rad(14.9),math.rad(22.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.9,1.9,0.3)*CFrame.Angles(math.rad(-108.7),math.rad(47.2),math.rad(12.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,1.8,1.1)*CFrame.Angles(math.rad(15),math.rad(51.6),math.rad(1.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					swait()
				end
				for i = 1, 20 do
					locatetor.CFrame = rightlocation.CFrame
					LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.5,0.3)*CFrame.Angles(math.rad(-27.6),math.rad(-39.9),math.rad(32))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.7,1.4,1.5)*CFrame.Angles(math.rad(13.3),math.rad(-49.4),math.rad(-20.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,1.8,-0.6)*CFrame.Angles(math.rad(108.5),math.rad(-39.5),math.rad(25.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.9,1.9,1)*CFrame.Angles(math.rad(47.8),math.rad(18.5),math.rad(-69))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(27.8),math.rad(-62.6),math.rad(-5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
					swait()
				end
				local didhit = false
				local mate = nil
				local colo = nil
				local ray = Ray.new(Root.Position,Vector3.new(0,-10,0))
				local tabd = {bloodfolder,Character}
				local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
				if part then
					didhit = true
					mate = part.Material
					colo = part.BrickColor
				else
					didhit = false
				end
				if didhit then
					for i = 1, 3 do
						SOUND(ETorso2,1388740053,10,false,math.random(9,11)/10,10)
					end
					locatetor.CFrame = CFrame.new(hitPosition)
					spikeball(ETorso2.CFrame,Vector3.new(2,2,2),BrickColor.new("White"),.1)
					ballshockwave(ETorso2.CFrame,.4,BrickColor.new("White"),"Neon",.05,Vector3.new(2,2,2))
					takeDamage(enemyhum,math.random(38,57))
					blood(ETorso2,50)
					for i = 1, 20 do
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,1.2,0.9)*CFrame.Angles(math.rad(29.3),math.rad(-26.3),math.rad(49.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,0.6,1.8)*CFrame.Angles(math.rad(45.8),math.rad(-59.9),math.rad(-16.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.8,1.6,-0.2)*CFrame.Angles(math.rad(-56.8),math.rad(11.4),math.rad(-47))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.1,2.3,-0.1)*CFrame.Angles(math.rad(-25.9),math.rad(32.1),math.rad(-33.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-60),math.rad(33),math.rad(-36.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.4)
						swait()
					end
					for i = 1, 20 do
						LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,1.8,0.8)*CFrame.Angles(math.rad(35.5),math.rad(-18),math.rad(62.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.5,0.1)*CFrame.Angles(math.rad(-34.7),math.rad(-46.9),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1.3,0)*CFrame.Angles(math.rad(-6.4),math.rad(12.8),math.rad(-36.6))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,2,1.2)*CFrame.Angles(math.rad(27.1),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-15.7),math.rad(-46.1),math.rad(0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
						swait()
					end
					local t = math.random(1,2)
					if t == 1 then
						local g1 = Instance.new("BodyGyro", nil)
						g1.CFrame = Root.CFrame
						g1.Parent = Root
						g1.D = 175
						g1.P = 20000
						g1.MaxTorque = Vector3.new(3000,90000,3000)
						local borb = Instance.new("Part",Torso)
						borb.Anchored = true
						borb.CanCollide = false
						borb.BrickColor = BrickColor.new("Really red")
						borb.CFrame = leftlocation.CFrame
						borb.Transparency = 1
						borb.Shape = "Ball"
						borb.Material = "Neon"
						borb.Size = Vector3.new(31.5,31.5,31.5)
						SOUND(borb,2644340882,10,false,.85,10)
						local spikeballl = Instance.new("Part",Torso)
						spikeballl.Anchored = true
						spikeballl.CanCollide = false
						spikeballl.Size = Vector3.new(1,1,1)
						spikeballl.BrickColor = BrickColor.new("Really red")
						spikeballl.CFrame = rightlocation.CFrame
						spikeballl.Transparency = .85
						local spikemesh = Instance.new("SpecialMesh",spikeballl)
						spikemesh.MeshId = "rbxassetid://9982590"
						spikemesh.Scale = Vector3.new(20,20,20)
						local spikeballl2 = Instance.new("Part",Torso)
						spikeballl2.Anchored = true
						spikeballl2.CanCollide = false
						spikeballl2.Size = Vector3.new(1,1,1)
						spikeballl2.BrickColor = BrickColor.new("Really red")
						spikeballl2.CFrame = rightlocation.CFrame
						spikeballl2.Transparency = .85
						local spikemesh2 = Instance.new("SpecialMesh",spikeballl2)
						spikemesh2.MeshId = "rbxassetid://9982590"
						spikemesh2.Scale = Vector3.new(30,30,30)
						local spikeballl3 = Instance.new("Part",Torso)
						spikeballl3.Anchored = true
						spikeballl3.CanCollide = false
						spikeballl3.Size = Vector3.new(1,1,1)
						spikeballl3.BrickColor = BrickColor.new("Really red")
						spikeballl3.CFrame = rightlocation.CFrame
						spikeballl3.Transparency = .85
						local spikemesh3 = Instance.new("SpecialMesh",spikeballl3)
						spikemesh3.MeshId = "rbxassetid://9982590"
						spikemesh3.Scale = Vector3.new(40,40,40)
						for i = 1, 100 do
							spikeballl2.Transparency = spikeballl2.Transparency + .0025
							spikeballl3.Transparency = spikeballl3.Transparency + .005
							spikeballl.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
							spikemesh.Scale = spikemesh.Scale - Vector3.new(.15,.15,.15)
							spikeballl3.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
							spikemesh3.Scale = spikemesh3.Scale - Vector3.new(.15,.15,.15)
							spikeballl2.CFrame = borb.CFrame * CFrame.Angles(math.rad(0+math.random(7,14)),math.rad(0+math.random(16,21)),math.rad(0+math.random(23,29)))
							spikemesh2.Scale = spikemesh2.Scale - Vector3.new(.15,.15,.15)
							borb.CFrame = leftlocation.CFrame
							borb.Transparency = borb.Transparency - .005*2
							borb.Size = borb.Size - Vector3.new(.15,.15,.15)*2
							g1.CFrame = g1.CFrame:lerp(CFrame.new(Root.Position,ETorso2.Position),.15)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-3.2),math.rad(-76.5),math.rad(8.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.9,2,0.3)*CFrame.Angles(math.rad(-4.5),math.rad(-21.4),math.rad(62.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.1,2.4,0.2)*CFrame.Angles(math.rad(-36.5),math.rad(-79.1),math.rad(-14.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-2,0.6,-0.2)*CFrame.Angles(math.rad(13.9),math.rad(-1.8),math.rad(-14.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4,1.3,1.6)*CFrame.Angles(math.rad(39.8),math.rad(32.4),math.rad(-12.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							swait()
						end
						spikeballl2:Destroy()
						spikeballl3:Destroy()
						for i = 1, 15 do
							spikeballl.CFrame = borb.CFrame
							borb.CFrame = borb.CFrame:lerp(CFrame.new(ETorso.Position),.2)
							swait()
						end
						borb.Transparency = 1
						spikeballl:Destroy()
						removeuseless:AddItem(borb,15)
						for i = 1, 3 do
							SOUND(borb,1398290761,10,false,.99,15)
						end
						spikeball(CFrame.new(borb.Position),Vector3.new(18,18,18),BrickColor.new("Really red"),.1)
						spikeball(CFrame.new(borb.Position),Vector3.new(18,18,18)/2,BrickColor.new("Really red"),.05)
						spikeball(CFrame.new(borb.Position),Vector3.new(18,18,18)/4,BrickColor.new("Really red"),.025)
						spikeball(CFrame.new(borb.Position),Vector3.new(18,18,18)/8,BrickColor.new("Really red"),.0125)
						ballshockwave(CFrame.new(borb.Position),.05,BrickColor.new("White"),"Neon",.1,Vector3.new(20,20,20))
						ballshockwave(CFrame.new(borb.Position),.05,BrickColor.new("Really red"),"Neon",.05,Vector3.new(20,20,20)/2)
						ballshockwave(CFrame.new(borb.Position),.05,BrickColor.new("Really red"),"Neon",.025,Vector3.new(20,20,20)/4)
						ballshockwave(CFrame.new(borb.Position),.05,BrickColor.new("Really red"),"Neon",.0125,Vector3.new(20,20,20)/8)
						shockwave(CFrame.new(borb.Position),Vector3.new(15,3,15),.05,BrickColor.new("White"),math.random(16,21),.1)
						shockwave(CFrame.new(borb.Position),Vector3.new(8,8,8),.05,BrickColor.new("White"),math.random(16,21),.1)
						shockwave(CFrame.new(borb.Position),Vector3.new(21,4,21),.05,BrickColor.new("White"),math.random(2,6),.05)
						shockwave(CFrame.new(borb.Position),Vector3.new(15,3,15),.05,BrickColor.new("White"),math.random(16,21),.05)
						shockwave(CFrame.new(borb.Position),Vector3.new(5,5,5),.05,BrickColor.new("White"),math.random(16,21),.05)
						shockwave(CFrame.new(borb.Position),Vector3.new(5,5,5),.05,BrickColor.new("White"),math.random(16,21),.025)
						shockwave(CFrame.new(borb.Position),Vector3.new(8,2,8),.05,BrickColor.new("White"),math.random(16,21),.025)
						shockwave(CFrame.new(borb.Position),Vector3.new(10,4,10),.05,BrickColor.new("White"),math.random(16,21),.025)
						shockwave(CFrame.new(borb.Position),Vector3.new(8.5,2,8.5),.05,BrickColor.new("White"),math.random(16,21),.05)
						shockwave(CFrame.new(borb.Position),Vector3.new(5,1,5),.05,BrickColor.new("White"),math.random(2,4),.01)
						shockwave(CFrame.new(borb.Position),Vector3.new(2,2,2),.05,BrickColor.new("White"),math.random(3,6),.01)
						takeDamage(enemyhum,math.random(251,384))
						debounce = false
						attacking = false
						ws = 80
						g1:Destroy()
					else
						local zp = 0
						local uploc = Instance.new("Part",Torso)
						uploc.Anchored = true
						uploc.CanCollide = false
						uploc.CFrame = Root.CFrame * CFrame.new(0,60,0)
						uploc.Transparency = 1
						uploc.Size = Vector3.new(1,1,1)
						hpheight = 0
						for i = 1, 30 do
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,-0.1,0)*CFrame.Angles(math.rad(-49.9),math.rad(49.5),math.rad(-15.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,0.8,1.9)*CFrame.Angles(math.rad(57.8),math.rad(-13.7),math.rad(11.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.6,-0.3,0.5)*CFrame.Angles(math.rad(-30.5),math.rad(-82.9),math.rad(63.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(0.1,1.2,1.9)*CFrame.Angles(math.rad(62.1),math.rad(21.3),math.rad(-27.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),0,0),.2)
							Torso.CFrame = Torso.CFrame:lerp(CFrame.new(uploc.Position)*CFrame.Angles(math.rad(zp),0,0),.2)
							swait()
						end
						for i = 1, 15 do
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0)*CFrame.Angles(math.rad(-10.4),math.rad(1.2),math.rad(-0.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							Torso.CFrame = Torso.CFrame:lerp(CFrame.new(ETorso2.Position),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,1.4,0.9)*CFrame.Angles(math.rad(14.7),math.rad(-36.8),math.rad(52.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,1.4,1)*CFrame.Angles(math.rad(26.4),math.rad(-13.4),math.rad(4.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1.8,0.4)*CFrame.Angles(math.rad(20),math.rad(4.7),math.rad(-64.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,2.4,0)*CFrame.Angles(math.rad(-10.4),math.rad(13.9),math.rad(1.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							swait()
						end
						takeDamage(enemyhum,math.random(63,81))
						if overlord then
							for i,x in pairs(enemyhum.Parent:GetDescendants()) do if x:IsA("Part") then x:Clone() x.Parent = workspace x.Material = "ForceField" x.BrickColor = BrickColor.new("Really red") x.Anchored = false
									x.CanCollide = true x:BreakJoints() blood(x,100)
								end end
							for i,x in pairs(enemyhum.Parent:GetDescendants()) do if x:IsA("Part") then x:Destroy() end end
							slachtoffer.Parent = nil
						end
						blood(ETorso2,150)
						toweld:Destroy()
						SOUND(ETorso2,429400881,10,false,math.random(9,11)/10,10)
						for i = 1, 2 do
							SOUND(ETorso2,1776706665,10,false,math.random(9,11)/10,10)
						end
						coroutine.wrap(function()
							for i = 1, 3 do
								local ray = Ray.new(Root.Position, Vector3.new(0,-10,0))
								local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,ETorso2,ETorso,bloc,Character,blooddecal,blowd,Torso},false,true)
								if part and part.Parent ~= ETorso2.Parent and not part.Parent:FindFirstChildOfClass("Humanoid") then
									local vbn = math.random(45,60)
									coroutine.wrap(function()
										local crack = Instance.new("Part",Torso)
										crack.Size =  Vector3.new(vbn,.1,vbn)
										crack.Transparency = 1
										crack.Anchored = true
										crack.Name = "blowd"
										crack.CanCollide = false
										crack.Position = hitPosition 
										crack.Rotation = Vector3.new(0,math.random(-180,180),0)
										local crackd = Instance.new("Decal",crack)
										crackd.Face = "Top"
										crackd.Texture = "rbxassetid://483309292"
										crackd.Transparency = math.random(.1,.2)
										wait(30)
										for i = 1, 100 do
											crackd.Transparency = crackd.Transparency + .01
											swait()
										end
										crack:Destroy()
									end)()
								else
								end
								swait()
							end
						end)()
						local didhit = false
						local mate = nil
						local colo = nil
						local ray = Ray.new(Root.Position,Vector3.new(0,-10,0))
						local tabd = {bloodfolder,Character}
						local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,Root,Character,blooddecal,blowd,Torso},false,true)
						if part then
							didhit = true
							mate = part.Material
							colo = part.BrickColor
						else
							didhit = false
						end
						if didhit then
							coroutine.wrap(function()
								local b = Instance.new("Part",Torso)
								b.Size = Vector3.new(1,1,1)
								b.Anchored = true
								b.CanCollide = false
								b.Transparency = 1
								b.Position = hitPosition
								b.CFrame = b.CFrame * CFrame.new(0,2,0)
								local t = 0
								for i = 1, 18 do
									t = t + 20
									local b2 = b:Clone() b2.Parent = Torso b2.Transparency = 1
									b2.CFrame = b.CFrame * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(t),math.rad(0)) * CFrame.new(16,0,0) 
									local grassblock = Instance.new("Part",Torso)
									grassblock.Size = Vector3.new(5,5,5)
									grassblock.BrickColor = colo
									grassblock.Material = mate
									grassblock.Anchored = true
									grassblock.CanCollide = true
									grassblock.CFrame = b2.CFrame * CFrame.Angles(math.rad(math.random(-180,180)),math.rad(math.random(-180,180)),math.rad(math.random(-180,180)))
									local ray = Ray.new(grassblock.Position,Vector3.new(0,-5,0))
									local tabd = {bloodfolder,Character}
									local part, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {bloodfolder,grassblock,Character,blooddecal,blowd,Torso},false,true)
									if part then
										grassblock.Position = hitPosition
										grassblock.Material = part.Material
										grassblock.BrickColor = part.BrickColor
										coroutine.wrap(function()
											wait(15)
											for i = 1, 20 do
												grassblock.Transparency = grassblock.Transparency + .05
												swait()
											end
											grassblock:Destroy()
										end)()
									else
										grassblock:Destroy()
									end
								end
							end)()
						end
						spikeball(ETorso2.CFrame,Vector3.new(2,2,2),BrickColor.new("White"),.05)
						ballshockwave(ETorso2.CFrame,.4,BrickColor.new("White"),"Neon",.025,Vector3.new(2,2,2))
						spikeball(ETorso2.CFrame,Vector3.new(4,4,4),BrickColor.new("White"),.1)
						ballshockwave(ETorso2.CFrame,.4,BrickColor.new("White"),"Neon",.05,Vector3.new(4,4,4))
						shockwave(Root.CFrame*CFrame.new(0,-4,0),Vector3.new(8,1,8),.2,BrickColor.new("White"),math.random(16,21),.075)
						shockwave(Root.CFrame*CFrame.new(0,-4,0),Vector3.new(6,.75,6),.2,BrickColor.new("White"),math.random(16,21),.05)
						shockwave(Root.CFrame*CFrame.new(0,-4,0),Vector3.new(3,.5,3),.2,BrickColor.new("White"),math.random(16,21),.025)
						shockwave(Root.CFrame*CFrame.new(0,-4,0),Vector3.new(1.5,1,1.5),.2,BrickColor.new("White"),math.random(16,21),.025)
						for i = 1, 20 do
							Torso.CFrame = Torso.CFrame:lerp(CFrame.new(ETorso2.Position) * CFrame.new(0,2,0),.2)
							LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4,1.4,0.9)*CFrame.Angles(math.rad(14.7),math.rad(-36.8),math.rad(52.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,1.8,0.4)*CFrame.Angles(math.rad(20),math.rad(4.7),math.rad(-64.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.6,1.7,0.2)*CFrame.Angles(math.rad(-28.3),math.rad(12.6),math.rad(5.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5,1.6,0.9)*CFrame.Angles(math.rad(24.4),math.rad(0.7),math.rad(10.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-.4,0)*CFrame.Angles(math.rad(-23.9),math.rad(1.2),math.rad(-0.4))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
							swait()
						end
					end
				else
					---COWARD!!!
					coroutine.wrap(function()
						if tauntdebounce then return end
						tauntdebounce = true
						rdnm2 = cowardable[math.random(1,#cowardable)]
						for i = 1, 3 do
							tauntsound = Instance.new("Sound", Head)
							tauntsound.Volume = 10
							tauntsound.SoundId = "rbxassetid://"..rdnm2
							tauntsound.Looped = false
							tauntsound.Pitch = 1
							tauntsound:Play()
							coroutine.wrap(function()
								wait(.5)
								wait(tauntsound.TimeLength)
								tauntsound:Destroy()
								wait()
								tauntdebounce = false
							end)()
							removeuseless:AddItem(tauntsound,6)
						end
					end)()
				end
				debounce = false
				attacking = false
				ws = 80
			end
		end
	elseif Press=='t' then
		taunt()
	end
end)

for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("Part") then
		v.Transparency = 1
	end
end
ws = 0
hum.HipHeight = 2
ROOTLERP.C0 = ROOTLERP.C0 * CFrame.new(0,0,-2)
Head.Transparency = 1
doomtheme.Volume = 0
debounce = true
attacking = true
local portal = Instance.new("Part",Torso)
portal.Anchored = true
portal.CanCollide = false
portal.Size = Vector3.new(.1,.1,.1)
portal.Transparency = 1
portal.CFrame = Root.CFrame * CFrame.new(0,3,3)
portal.Name = "ext"
local portalpic = Instance.new("Decal",portal)
portalpic.Face = "Front"
portalpic.Texture = "rbxassetid://1513987852"
portalpic.Transparency = 0
portalpic.Color3 = BrickColor.new("Really red").Color
local portalpic2 = Instance.new("Decal",portal)
portalpic2.Face = "Back"
portalpic2.Texture = "rbxassetid://1513987852"
portalpic2.Transparency = 0
portalpic2.Color3 = BrickColor.new("Really red").Color
local portalsound = Instance.new("Sound",portal)
portalsound.Volume = 2
portalsound.Looped = true
portalsound.SoundId = "rbxassetid://2293073427"
portalsound:Play()
local txc = 0
for i = 1, 30 do
	txc = txc + .35
	portal.Size = portal.Size + Vector3.new(.5,.5,0)
	portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
	swait()
end
for i = 1, 5 do
	txc = txc + .35
	portal.Size = portal.Size + Vector3.new(.25,.25,0)
	portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
	swait()
end
for i = 1, 5 do
	txc = txc + .35
	portal.Size = portal.Size - Vector3.new(.25,.25,0)
	portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
	swait()
end

mas = Instance.new("Model",Torso) 
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Decal")
o5 = Instance.new("Decal")
o6 = Instance.new("Part")
o7 = Instance.new("SpecialMesh")
o8 = Instance.new("Decal")
o9 = Instance.new("Decal")
o10 = Instance.new("WedgePart")
o11 = Instance.new("Part")
o12 = Instance.new("SpecialMesh")
o13 = Instance.new("Decal")
o14 = Instance.new("Decal")
o15 = Instance.new("Part")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("Decal")
o18 = Instance.new("Decal")
o19 = Instance.new("Part")
o20 = Instance.new("Part")
o21 = Instance.new("SpecialMesh")
o22 = Instance.new("Decal")
o23 = Instance.new("Decal")
o24 = Instance.new("Part")
o25 = Instance.new("SpecialMesh")
o26 = Instance.new("Decal")
o27 = Instance.new("Decal")
o28 = Instance.new("WedgePart")
o29 = Instance.new("Part")
o30 = Instance.new("SpecialMesh")
o31 = Instance.new("Decal")
o32 = Instance.new("Decal")
o33 = Instance.new("Part")
o34 = Instance.new("SpecialMesh")
o35 = Instance.new("Decal")
o36 = Instance.new("Decal")
o37 = Instance.new("WedgePart")
o38 = Instance.new("WedgePart")
o39 = Instance.new("WedgePart")
o40 = Instance.new("WedgePart")
o41 = Instance.new("WedgePart")
o42 = Instance.new("ManualWeld")
o43 = Instance.new("WedgePart")
o44 = Instance.new("WedgePart")
o45 = Instance.new("ManualWeld")
o46 = Instance.new("Part")
o47 = Instance.new("SpecialMesh")
o48 = Instance.new("Decal")
o49 = Instance.new("Decal")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Decal")
o53 = Instance.new("Decal")
o54 = Instance.new("WedgePart")
o55 = Instance.new("WedgePart")
o56 = Instance.new("WedgePart")
o57 = Instance.new("WedgePart")
o58 = Instance.new("WedgePart")
o59 = Instance.new("WedgePart")
o60 = Instance.new("WedgePart")
o61 = Instance.new("Part")
o62 = Instance.new("SpecialMesh")
o63 = Instance.new("Decal")
o64 = Instance.new("Decal")
o65 = Instance.new("WedgePart")
o66 = Instance.new("Part")
o67 = Instance.new("SpecialMesh")
o68 = Instance.new("Decal")
o69 = Instance.new("Decal")
o70 = Instance.new("WedgePart")
o71 = Instance.new("WedgePart")
o72 = Instance.new("Part")
o73 = Instance.new("SpecialMesh")
o74 = Instance.new("Decal")
o75 = Instance.new("Decal")
o76 = Instance.new("WedgePart")
o77 = Instance.new("Part")
o78 = Instance.new("SpecialMesh")
o79 = Instance.new("Decal")
o80 = Instance.new("Decal")
o81 = Instance.new("Part")
o82 = Instance.new("SpecialMesh")
o83 = Instance.new("Decal")
o84 = Instance.new("Decal")
o85 = Instance.new("WedgePart")
o86 = Instance.new("WedgePart")
o87 = Instance.new("WedgePart")
o88 = Instance.new("WedgePart")
o89 = Instance.new("Part")
o90 = Instance.new("SpecialMesh")
o91 = Instance.new("Decal")
o92 = Instance.new("Decal")
o93 = Instance.new("WedgePart")
o94 = Instance.new("Part")
o95 = Instance.new("SpecialMesh")
o96 = Instance.new("Decal")
o97 = Instance.new("Decal")
o98 = Instance.new("WedgePart")
o99 = Instance.new("WedgePart")
o1.Parent = mas
o1.PrimaryPart = o19
o2.Parent = o1
o2.BrickColor = BrickColor.new("Brick yellow")
o2.Rotation = Vector3.new(-110.059998, 27.7399998, -68.3899994)
o2.Size = Vector3.new(0.241669908, 0.897802472, 0.334712714)
o2.CFrame = CFrame.new(0.786357999, -0.198466003, 0.00272399932, 0.325971693, 0.822818458, 0.46552375, 0.157878473, -0.532884777, 0.831329226, 0.932103515, -0.197493628, -0.303610653)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.843137, 0.772549, 0.603922)
o2.Color = Color3.new(0.843137, 0.772549, 0.603922)
o3.Parent = o2
o3.MeshId = "rbxassetid://249768539"
o3.Scale = Vector3.new(0.199377596, 0.513547838, 0.25979507)
o3.MeshType = Enum.MeshType.FileMesh
o3.Scale = Vector3.new(0.199377596, 0.513547838, 0.25979507)
o4.Name = "blood"
o4.Parent = o2
o4.Texture = "http://www.roblox.com/asset/?id=931617584"
o5.Name = "blood"
o5.Parent = o2
o5.Texture = "http://www.roblox.com/asset/?id=931617584"
o6.Parent = o1
o6.BrickColor = BrickColor.new("Brick yellow")
o6.Rotation = Vector3.new(-77.5199966, -10.9899998, -90.25)
o6.Size = Vector3.new(0.277330995, 1.03028357, 0.384103328)
o6.CFrame = CFrame.new(0.977985024, 0.354429007, 0.00272399932, -0.00423872145, 0.981666863, -0.190557897, -0.216906458, 0.18512021, 0.958479047, 0.976183176, 0.0453959666, 0.212145209)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.843137, 0.772549, 0.603922)
o6.Color = Color3.new(0.843137, 0.772549, 0.603922)
o7.Parent = o6
o7.MeshId = "rbxassetid://249768539"
o7.Scale = Vector3.new(0.228797987, 0.589327753, 0.298130751)
o7.MeshType = Enum.MeshType.FileMesh
o7.Scale = Vector3.new(0.228797987, 0.589327753, 0.298130751)
o8.Name = "blood"
o8.Parent = o6
o8.Texture = "http://www.roblox.com/asset/?id=931617584"
o9.Name = "blood"
o9.Parent = o6
o9.Texture = "http://www.roblox.com/asset/?id=931617584"
o10.Parent = o1
o10.Material = Enum.Material.SmoothPlastic
o10.BrickColor = BrickColor.new("Really black")
o10.Rotation = Vector3.new(-71.8899994, 0, -180)
o10.Size = Vector3.new(0.0500000007, 0.270000041, 0.810000658)
o10.CFrame = CFrame.new(0.619570971, 0.185534, -0.200561002, -1, 0, 0, 0, -0.310846061, 0.950460613, 0, 0.950460196, 0.31084612)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o11.Parent = o1
o11.BrickColor = BrickColor.new("Brick yellow")
o11.Rotation = Vector3.new(-105.669998, 12.5299997, -69.0899963)
o11.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o11.CFrame = CFrame.new(0.790966034, -0.022306025, -0.164764002, 0.348482102, 0.911872685, 0.216907203, 0.177729011, -0.29149884, 0.939915299, 0.920311153, -0.288992912, -0.263648331)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.843137, 0.772549, 0.603922)
o11.Color = Color3.new(0.843137, 0.772549, 0.603922)
o12.Parent = o11
o12.MeshId = "rbxassetid://249768539"
o12.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o12.MeshType = Enum.MeshType.FileMesh
o12.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o13.Name = "blood"
o13.Parent = o11
o13.Texture = "http://www.roblox.com/asset/?id=931617584"
o14.Name = "blood"
o14.Parent = o11
o14.Texture = "http://www.roblox.com/asset/?id=931617584"
o15.Parent = o1
o15.BrickColor = BrickColor.new("Brick yellow")
o15.Rotation = Vector3.new(-77.5199966, -10.9799995, -103.809998)
o15.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o15.CFrame = CFrame.new(0.707035005, 0.224667013, 0.157050997, -0.234333053, 0.95330745, -0.190507203, -0.254276067, 0.129038081, 0.95848465, 0.938313246, 0.273046046, 0.212165356)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.843137, 0.772549, 0.603922)
o15.Color = Color3.new(0.843137, 0.772549, 0.603922)
o16.Parent = o15
o16.MeshId = "rbxassetid://249768539"
o16.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o16.MeshType = Enum.MeshType.FileMesh
o16.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o17.Name = "blood"
o17.Parent = o15
o17.Texture = "http://www.roblox.com/asset/?id=931617584"
o18.Name = "blood"
o18.Parent = o15
o18.Texture = "http://www.roblox.com/asset/?id=931617584"
o19.Name = "mainpiece"
o19.Parent = o1
o19.Material = Enum.Material.SmoothPlastic
o19.BrickColor = BrickColor.new("Really black")
o19.Transparency = 1
o19.Size = Vector3.new(0.2100005, 0.190000117, 0.210000008)
o19.BottomSurface = Enum.SurfaceType.Smooth
o19.TopSurface = Enum.SurfaceType.Smooth
o19.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o19.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o20.Parent = o1
o20.BrickColor = BrickColor.new("Brick yellow")
o20.Rotation = Vector3.new(-67.3199997, -50.4000015, -55.0699997)
o20.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o20.CFrame = CFrame.new(0.709532976, 1.081442, -0.271072, 0.364975125, 0.522590935, -0.770514071, 0.0909180269, 0.803642869, 0.588125944, 0.926567376, -0.284704953, 0.245796725)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.843137, 0.772549, 0.603922)
o20.Color = Color3.new(0.843137, 0.772549, 0.603922)
o21.Parent = o20
o21.MeshId = "rbxassetid://249768539"
o21.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o21.MeshType = Enum.MeshType.FileMesh
o21.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o22.Name = "blood"
o22.Parent = o20
o22.Texture = "http://www.roblox.com/asset/?id=931617584"
o23.Name = "blood"
o23.Parent = o20
o23.Texture = "http://www.roblox.com/asset/?id=931617584"
o24.Parent = o1
o24.BrickColor = BrickColor.new("Brick yellow")
o24.Rotation = Vector3.new(-77.5199966, -10.9899998, -64.3499985)
o24.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o24.CFrame = CFrame.new(0.751807988, 0.315060019, -0.211113006, 0.424909115, 0.884949684, -0.190568462, -0.114280976, 0.261274099, 0.95847553, 0.897993147, -0.385486752, 0.212150678)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.843137, 0.772549, 0.603922)
o24.Color = Color3.new(0.843137, 0.772549, 0.603922)
o25.Parent = o24
o25.MeshId = "rbxassetid://249768539"
o25.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o25.MeshType = Enum.MeshType.FileMesh
o25.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o26.Name = "blood"
o26.Parent = o24
o26.Texture = "http://www.roblox.com/asset/?id=931617584"
o27.Name = "blood"
o27.Parent = o24
o27.Texture = "http://www.roblox.com/asset/?id=931617584"
o28.Parent = o1
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Really black")
o28.Rotation = Vector3.new(-180, 48.0299988, -90)
o28.Size = Vector3.new(0.0500000007, 0.0899998173, 0.330000907)
o28.CFrame = CFrame.new(0.365131021, 1.21281898, 0.348266989, 0, 0.668697, 0.743534982, 1, 0, 0, 0, 0.743534982, -0.668697)
o28.BottomSurface = Enum.SurfaceType.Smooth
o28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o29.Parent = o1
o29.BrickColor = BrickColor.new("Brick yellow")
o29.Rotation = Vector3.new(-111.779999, 26.8600006, -52.5)
o29.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o29.CFrame = CFrame.new(0.725216031, -0.204801023, -0.151190996, 0.543069124, 0.707752168, 0.451843858, 0.038972009, -0.558774114, 0.828403711, 0.838783205, -0.432271123, -0.331035495)
o29.BottomSurface = Enum.SurfaceType.Smooth
o29.TopSurface = Enum.SurfaceType.Smooth
o29.Color = Color3.new(0.843137, 0.772549, 0.603922)
o29.Color = Color3.new(0.843137, 0.772549, 0.603922)
o30.Parent = o29
o30.MeshId = "rbxassetid://249768539"
o30.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o30.MeshType = Enum.MeshType.FileMesh
o30.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o31.Name = "blood"
o31.Parent = o29
o31.Texture = "http://www.roblox.com/asset/?id=931617584"
o32.Name = "blood"
o32.Parent = o29
o32.Texture = "http://www.roblox.com/asset/?id=931617584"
o33.Parent = o1
o33.BrickColor = BrickColor.new("Brick yellow")
o33.Rotation = Vector3.new(-117.160004, 54.3199997, -78.9000015)
o33.Size = Vector3.new(0.166378632, 0.618096292, 0.230434433)
o33.CFrame = CFrame.new(0.715294003, -0.588803947, 0.00272399932, 0.11228402, 0.572403729, 0.812247753, 0.308865517, -0.797031164, 0.518983185, 0.94445461, 0.192601785, -0.266289622)
o33.BottomSurface = Enum.SurfaceType.Smooth
o33.TopSurface = Enum.SurfaceType.Smooth
o33.Color = Color3.new(0.843137, 0.772549, 0.603922)
o33.Color = Color3.new(0.843137, 0.772549, 0.603922)
o34.Parent = o33
o34.MeshId = "rbxassetid://249768539"
o34.Scale = Vector3.new(0.137262315, 0.353554428, 0.178857058)
o34.MeshType = Enum.MeshType.FileMesh
o34.Scale = Vector3.new(0.137262315, 0.353554428, 0.178857058)
o35.Name = "blood"
o35.Parent = o33
o35.Texture = "http://www.roblox.com/asset/?id=931617584"
o36.Name = "blood"
o36.Parent = o33
o36.Texture = "http://www.roblox.com/asset/?id=931617584"
o37.Parent = o1
o37.Material = Enum.Material.SmoothPlastic
o37.BrickColor = BrickColor.new("Really black")
o37.Rotation = Vector3.new(68.2699966, 0, 0)
o37.Size = Vector3.new(0.0500000007, 0.119999848, 0.580001116)
o37.CFrame = CFrame.new(0.619570971, 0.461419016, 0.0877310038, 1, 0, 0, 0, 0.370305955, -0.928909898, 0, 0.928909898, 0.370305955)
o37.BottomSurface = Enum.SurfaceType.Smooth
o37.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o37.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o38.Parent = o1
o38.Material = Enum.Material.SmoothPlastic
o38.BrickColor = BrickColor.new("Really black")
o38.Rotation = Vector3.new(-142.020004, 0, 0)
o38.Size = Vector3.new(0.0500000007, 0.349999875, 0.68000114)
o38.CFrame = CFrame.new(0.619570971, 0.456930995, 0.21567601, 0.999999881, 0, 0, 0, -0.788218677, 0.615396261, 0, -0.615396142, -0.788217962)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o38.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o39.Parent = o1
o39.Material = Enum.Material.SmoothPlastic
o39.BrickColor = BrickColor.new("Really black")
o39.Rotation = Vector3.new(-28.1100006, 0, 0)
o39.Size = Vector3.new(0.0500000007, 0.269999951, 0.580000639)
o39.CFrame = CFrame.new(0.619570971, 0.959897995, -0.382903993, 1, 0, 0, 0, 0.882013142, 0.471225053, 0, -0.471225053, 0.882013142)
o39.BottomSurface = Enum.SurfaceType.Smooth
o39.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o39.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o40.Parent = o1
o40.Material = Enum.Material.SmoothPlastic
o40.BrickColor = BrickColor.new("Really black")
o40.Rotation = Vector3.new(-107.839996, 0, -180)
o40.Size = Vector3.new(0.0500000007, 0.240000054, 0.790000737)
o40.CFrame = CFrame.new(0.619570971, -0.667753994, -0.0725099966, -1, 0, 0, 0, 0.306371957, 0.951911867, 0, 0.951911867, -0.306371987)
o40.BottomSurface = Enum.SurfaceType.Smooth
o40.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o40.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Really black")
o41.Rotation = Vector3.new(21.6299992, 0, 0)
o41.Size = Vector3.new(0.0500000007, 0.140000001, 0.37000069)
o41.CFrame = CFrame.new(0.619570971, 0.52678299, -0.364188999, 1, 0, 0, 0, 0.929604292, -0.368582875, 0, 0.368584096, 0.929592967)
o41.BottomSurface = Enum.SurfaceType.Smooth
o41.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o41.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o42.Name = "Wedge-to-Wedge Strong Joint"
o42.Parent = o41
o42.C0 = CFrame.new(0.0250000004, -0.0700000003, 0.185000345, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o42.C1 = CFrame.new(-0.0250015259, -0.051486969, 0.0915222168, -1, 0, -0, 0, 1.20401701e-05, 1, 0, 1, -1.20401701e-05)
o43.Parent = o1
o43.Material = Enum.Material.SmoothPlastic
o43.BrickColor = BrickColor.new("Really black")
o43.Rotation = Vector3.new(-71.8899994, 0, 0)
o43.Size = Vector3.new(0.0500000007, 0.110000052, 0.450000852)
o43.CFrame = CFrame.new(0.619570971, 0.245416999, -0.341179013, 1.00000012, 1.49011612e-08, 2.98023224e-08, 2.98023224e-08, 0.31084615, 0.950462461, 0, -0.950459719, 0.310846567)
o43.BottomSurface = Enum.SurfaceType.Smooth
o43.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o43.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o44.Parent = o1
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Really black")
o44.Rotation = Vector3.new(-7.1500001, 0, 0)
o44.Size = Vector3.new(0.0500000007, 0.26000002, 0.410000741)
o44.CFrame = CFrame.new(0.619569421, 0.831293523, -0.353855968, 1, 0, 0, 0, 0.992215097, 0.124535985, 0, -0.124535985, 0.992215097)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o45.Name = "Wedge-to-Wedge Strong Joint"
o45.Parent = o44
o45.C0 = CFrame.new(-0.0250000004, -0.13000001, 0.205000371, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o45.C1 = CFrame.new(-0.0250015259, 0.148511887, 0.311523438, 1, 0, 0, 0, -0.999999583, 0.00089802593, 0, -0.00089802593, -0.999999583)
o46.Parent = o1
o46.BrickColor = BrickColor.new("Brick yellow")
o46.Rotation = Vector3.new(-114.019997, -66.2900009, -112.199997)
o46.Size = Vector3.new(0.416386515, 1.60302508, 0.499350101)
o46.CFrame = CFrame.new(0.595389962, 1.35067201, -0.0613249987, -0.151928052, 0.372280419, -0.915601015, 0.0609360225, 0.928120375, 0.367259473, 0.98651135, 3.92727543e-06, -0.163692802)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.TopSurface = Enum.SurfaceType.Smooth
o46.Color = Color3.new(0.843137, 0.772549, 0.603922)
o46.Color = Color3.new(0.843137, 0.772549, 0.603922)
o47.Parent = o46
o47.MeshId = "rbxassetid://249768539"
o47.Scale = Vector3.new(0.343518764, 0.916938961, 0.387582183)
o47.MeshType = Enum.MeshType.FileMesh
o47.Scale = Vector3.new(0.343518764, 0.916938961, 0.387582183)
o48.Name = "blood"
o48.Parent = o46
o48.Texture = "http://www.roblox.com/asset/?id=931617584"
o49.Name = "blood"
o49.Parent = o46
o49.Texture = "http://www.roblox.com/asset/?id=931617584"
o50.Parent = o1
o50.BrickColor = BrickColor.new("Brick yellow")
o50.Rotation = Vector3.new(-99.6600037, -30.1499996, -94.8899994)
o50.Size = Vector3.new(0.383381337, 1.42426157, 0.530983329)
o50.CFrame = CFrame.new(0.928146005, 0.952187002, -0.0511929989, -0.0736720264, 0.861555159, -0.502289891, 0.125046611, 0.507663965, 0.852432132, 0.989411891, -9.2396931e-06, -0.145135179)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(0.843137, 0.772549, 0.603922)
o50.Color = Color3.new(0.843137, 0.772549, 0.603922)
o51.Parent = o50
o51.MeshId = "rbxassetid://249768539"
o51.Scale = Vector3.new(0.316289485, 0.814685285, 0.412135065)
o51.MeshType = Enum.MeshType.FileMesh
o51.Scale = Vector3.new(0.316289485, 0.814685285, 0.412135065)
o52.Name = "blood"
o52.Parent = o50
o52.Texture = "http://www.roblox.com/asset/?id=931617584"
o53.Name = "blood"
o53.Parent = o50
o53.Texture = "http://www.roblox.com/asset/?id=931617584"
o54.Parent = o1
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Really black")
o54.Rotation = Vector3.new(8.31000042, 0, -180)
o54.Size = Vector3.new(0.0500000007, 0.270000041, 0.290000826)
o54.CFrame = CFrame.new(0.619570971, 0.614096045, -0.248398006, -1, 0, 0, 0, -0.989491105, -0.144593999, 0, -0.144594014, 0.989491105)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Parent = o1
o55.Material = Enum.Material.SmoothPlastic
o55.BrickColor = BrickColor.new("Really black")
o55.Rotation = Vector3.new(174.059998, 0, -180)
o55.Size = Vector3.new(0.0500000007, 0.230000034, 0.60000056)
o55.CFrame = CFrame.new(0.619570971, -0.306461036, 0.237762988, -1, 0, 0, 0, 0.994630873, -0.103484958, 0, -0.103484958, -0.994630873)
o55.BottomSurface = Enum.SurfaceType.Smooth
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Parent = o1
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Really black")
o56.Rotation = Vector3.new(57.2999992, 40.0800018, -157.539993)
o56.Size = Vector3.new(0.0500000007, 0.269999892, 0.580001056)
o56.CFrame = CFrame.new(0.457176, 1.24958801, -0.377411008, -0.707072377, 0.29226774, 0.643916428, -0.70714134, -0.292239219, -0.643853664, 0, -0.910590887, 0.413308889)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o57.Parent = o1
o57.Material = Enum.Material.SmoothPlastic
o57.BrickColor = BrickColor.new("Really black")
o57.Rotation = Vector3.new(150.119995, 0, 0)
o57.Size = Vector3.new(0.0500000007, 0.299999863, 0.610001087)
o57.CFrame = CFrame.new(0.619570971, 0.771131039, 0.269531012, 1, 0, 0, 0, -0.867062151, -0.498200089, 0, 0.498200119, -0.867062092)
o57.BottomSurface = Enum.SurfaceType.Smooth
o57.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o57.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58.Parent = o1
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Really black")
o58.Rotation = Vector3.new(-180, 82.5100021, 90)
o58.Size = Vector3.new(0.0500000007, 0.23999989, 0.500001132)
o58.CFrame = CFrame.new(0.238254011, 1.21281898, -0.181449994, 0, -0.130385056, 0.991463482, -1, 0, 0, 0, -0.991463482, -0.130385041)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Parent = o1
o59.Material = Enum.Material.SmoothPlastic
o59.BrickColor = BrickColor.new("Really black")
o59.Rotation = Vector3.new(0, 78.6100006, 90)
o59.Size = Vector3.new(0.0500000007, 0.249999866, 1.01000082)
o59.CFrame = CFrame.new(-0.0229269862, 1.21282005, -0.0121919997, 2.98023224e-08, -0.197493076, 0.98030448, 1.00000024, -1.53668225e-08, 0, -1.86264515e-08, 0.980304241, 0.197493106)
o59.BottomSurface = Enum.SurfaceType.Smooth
o59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o60.Parent = o1
o60.Material = Enum.Material.SmoothPlastic
o60.BrickColor = BrickColor.new("Really black")
o60.Rotation = Vector3.new(172.789993, 0, 0)
o60.Size = Vector3.new(0.0500000007, 0.409999967, 0.610001087)
o60.CFrame = CFrame.new(0.619570971, 0.91424799, 0.156174004, 1, 0, 0, 0, -0.992102861, -0.125426978, 0, 0.125426978, -0.992102861)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o61.Parent = o1
o61.BrickColor = BrickColor.new("Brick yellow")
o61.Rotation = Vector3.new(-74.9899979, -0.649999976, -106.57)
o61.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o61.CFrame = CFrame.new(0.728752017, 0.0289099813, 0.173744008, -0.285094947, 0.958432496, -0.0113152592, -0.251329929, -0.0633579418, 0.965825617, 0.924961746, 0.278195798, 0.258945793)
o61.BottomSurface = Enum.SurfaceType.Smooth
o61.TopSurface = Enum.SurfaceType.Smooth
o61.Color = Color3.new(0.843137, 0.772549, 0.603922)
o61.Color = Color3.new(0.843137, 0.772549, 0.603922)
o62.Parent = o61
o62.MeshId = "rbxassetid://249768539"
o62.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o62.MeshType = Enum.MeshType.FileMesh
o62.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o63.Name = "blood"
o63.Parent = o61
o63.Texture = "http://www.roblox.com/asset/?id=931617584"
o64.Name = "blood"
o64.Parent = o61
o64.Texture = "http://www.roblox.com/asset/?id=931617584"
o65.Parent = o1
o65.Material = Enum.Material.SmoothPlastic
o65.BrickColor = BrickColor.new("Really black")
o65.Rotation = Vector3.new(0, -17.8099995, -90)
o65.Size = Vector3.new(0.0500000007, 0.139999881, 0.270001173)
o65.CFrame = CFrame.new(0.446525007, 1.21281898, -0.430633008, 0, 0.952062368, -0.30590412, -1, 0, 0, 0, 0.30590412, 0.952062368)
o65.BottomSurface = Enum.SurfaceType.Smooth
o65.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o65.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o66.Parent = o1
o66.BrickColor = BrickColor.new("Brick yellow")
o66.Rotation = Vector3.new(-86.25, -30.25, -97.2399979)
o66.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o66.CFrame = CFrame.new(0.805698037, 0.538228035, 0.183205009, -0.108835988, 0.856961906, -0.503756881, -0.128280982, 0.490421981, 0.86199218, 0.985747874, 0.158438161, 0.0565563627)
o66.BottomSurface = Enum.SurfaceType.Smooth
o66.TopSurface = Enum.SurfaceType.Smooth
o66.Color = Color3.new(0.843137, 0.772549, 0.603922)
o66.Color = Color3.new(0.843137, 0.772549, 0.603922)
o67.Parent = o66
o67.MeshId = "rbxassetid://249768539"
o67.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o67.MeshType = Enum.MeshType.FileMesh
o67.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o68.Name = "blood"
o68.Parent = o66
o68.Texture = "http://www.roblox.com/asset/?id=931617584"
o69.Name = "blood"
o69.Parent = o66
o69.Texture = "http://www.roblox.com/asset/?id=931617584"
o70.Parent = o1
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Really black")
o70.Rotation = Vector3.new(0, 65.0899963, -90)
o70.Size = Vector3.new(0.0500000007, 0.139999852, 0.720000923)
o70.CFrame = CFrame.new(0.14824599, 1.21281898, -0.436996013, 0, 0.421249062, 0.90694499, -1, 0, 0, 0, -0.906945109, 0.421249032)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o70.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o71.Parent = o1
o71.Material = Enum.Material.SmoothPlastic
o71.BrickColor = BrickColor.new("Really black")
o71.Rotation = Vector3.new(-180, 82.5100021, 90)
o71.Size = Vector3.new(0.0500000007, 0.199999869, 0.570001066)
o71.CFrame = CFrame.new(0.195751011, 1.21281898, 0.191360995, 0, -0.130385056, 0.991463482, -1, 0, 0, 0, -0.991463482, -0.130385041)
o71.BottomSurface = Enum.SurfaceType.Smooth
o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o72.Parent = o1
o72.BrickColor = BrickColor.new("Brick yellow")
o72.Rotation = Vector3.new(-67.8399963, 22.1700001, -107.93)
o72.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o72.CFrame = CFrame.new(0.724403024, -0.253495991, 0.155021995, -0.285079956, 0.881117165, 0.377308935, -0.251301974, -0.448581666, 0.857684016, 0.924973905, 0.149690032, 0.349308133)
o72.BottomSurface = Enum.SurfaceType.Smooth
o72.TopSurface = Enum.SurfaceType.Smooth
o72.Color = Color3.new(0.843137, 0.772549, 0.603922)
o72.Color = Color3.new(0.843137, 0.772549, 0.603922)
o73.Parent = o72
o73.MeshId = "rbxassetid://249768539"
o73.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o73.MeshType = Enum.MeshType.FileMesh
o73.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o74.Name = "blood"
o74.Parent = o72
o74.Texture = "http://www.roblox.com/asset/?id=931617584"
o75.Name = "blood"
o75.Parent = o72
o75.Texture = "http://www.roblox.com/asset/?id=931617584"
o76.Parent = o1
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Really black")
o76.Rotation = Vector3.new(166.929993, 0, 0)
o76.Size = Vector3.new(0.0500000007, 0.119999848, 0.500001252)
o76.CFrame = CFrame.new(0.619570971, 0.222965002, 0.276077002, 1, 0, 0, 0, -0.974112213, -0.226065069, 0, 0.226065055, -0.974112213)
o76.BottomSurface = Enum.SurfaceType.Smooth
o76.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o76.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o77.Parent = o1
o77.BrickColor = BrickColor.new("Brick yellow")
o77.Rotation = Vector3.new(-121.589996, 43.0800018, -81.9700012)
o77.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o77.CFrame = CFrame.new(0.734802008, -0.489664972, 0.111251995, 0.10204, 0.72318089, 0.683079362, 0.437344998, -0.649356186, 0.622146368, 0.893486023, 0.235257506, -0.382539839)
o77.BottomSurface = Enum.SurfaceType.Smooth
o77.TopSurface = Enum.SurfaceType.Smooth
o77.Color = Color3.new(0.843137, 0.772549, 0.603922)
o77.Color = Color3.new(0.843137, 0.772549, 0.603922)
o78.Parent = o77
o78.MeshId = "rbxassetid://249768539"
o78.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o78.MeshType = Enum.MeshType.FileMesh
o78.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o79.Name = "blood"
o79.Parent = o77
o79.Texture = "http://www.roblox.com/asset/?id=931617584"
o80.Name = "blood"
o80.Parent = o77
o80.Texture = "http://www.roblox.com/asset/?id=931617584"
o81.Parent = o1
o81.BrickColor = BrickColor.new("Brick yellow")
o81.Rotation = Vector3.new(-127.519997, 41.4700012, -43.5499992)
o81.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o81.CFrame = CFrame.new(0.757933974, -0.432424963, -0.161796004, 0.54305011, 0.516209185, 0.662287414, 0.0389550067, -0.803357184, 0.594222009, 0.838796198, -0.296892941, -0.456372112)
o81.BottomSurface = Enum.SurfaceType.Smooth
o81.TopSurface = Enum.SurfaceType.Smooth
o81.Color = Color3.new(0.843137, 0.772549, 0.603922)
o81.Color = Color3.new(0.843137, 0.772549, 0.603922)
o82.Parent = o81
o82.MeshId = "rbxassetid://249768539"
o82.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o82.MeshType = Enum.MeshType.FileMesh
o82.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o83.Name = "blood"
o83.Parent = o81
o83.Texture = "http://www.roblox.com/asset/?id=931617584"
o84.Name = "blood"
o84.Parent = o81
o84.Texture = "http://www.roblox.com/asset/?id=931617584"
o85.Parent = o1
o85.Material = Enum.Material.SmoothPlastic
o85.BrickColor = BrickColor.new("Really black")
o85.Rotation = Vector3.new(99.6800003, 44.5900002, -6.82999992)
o85.Size = Vector3.new(0.0500000007, 0.269999892, 0.490001142)
o85.CFrame = CFrame.new(0.436763018, 1.26998901, 0.234382987, 0.707090795, 0.0847144127, 0.702030003, 0.707122803, -0.0847105756, -0.701998234, 0, 0.992797852, -0.119801559)
o85.BottomSurface = Enum.SurfaceType.Smooth
o85.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o85.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o86.Parent = o1
o86.Material = Enum.Material.SmoothPlastic
o86.BrickColor = BrickColor.new("Really black")
o86.Rotation = Vector3.new(-140.339996, 0, -180)
o86.Size = Vector3.new(0.0500000007, 0.340000004, 0.670000851)
o86.CFrame = CFrame.new(0.619570971, -0.430728018, 0.0960849971, -1, 0, 0, 0, 0.769823313, 0.638257384, 0, 0.638257384, -0.769823313)
o86.BottomSurface = Enum.SurfaceType.Smooth
o86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o86.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o87.Parent = o1
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Really black")
o87.Rotation = Vector3.new(153.449997, 0, -180)
o87.Size = Vector3.new(0.0500000007, 0.390000075, 0.430000842)
o87.CFrame = CFrame.new(0.619570971, -0.0470150113, 0.191810995, -1, 0, 0, 0, 0.894531548, -0.447004735, 0, -0.447004735, -0.894531429)
o87.BottomSurface = Enum.SurfaceType.Smooth
o87.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o87.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o88.Parent = o1
o88.Material = Enum.Material.SmoothPlastic
o88.BrickColor = BrickColor.new("Really black")
o88.Rotation = Vector3.new(21.6299992, 0, -180)
o88.Size = Vector3.new(0.0500000007, 0.140000001, 0.24000071)
o88.CFrame = CFrame.new(0.619569421, 0.379392505, -0.32207039, -1, 0, 0, 0, -0.929608703, -0.368571669, 0, -0.368572891, 0.929597378)
o88.BottomSurface = Enum.SurfaceType.Smooth
o88.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o88.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o89.Parent = o1
o89.BrickColor = BrickColor.new("Brick yellow")
o89.Rotation = Vector3.new(-92.3700027, -47.8899994, -107.089996)
o89.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o89.CFrame = CFrame.new(0.715355039, 0.964161992, 0.243584007, -0.197099045, 0.640909016, -0.741881192, -0.178438038, 0.720633984, 0.669960201, 0.964008212, 0.264428318, -0.0276737195)
o89.BottomSurface = Enum.SurfaceType.Smooth
o89.TopSurface = Enum.SurfaceType.Smooth
o89.Color = Color3.new(0.843137, 0.772549, 0.603922)
o89.Color = Color3.new(0.843137, 0.772549, 0.603922)
o90.Parent = o89
o90.MeshId = "rbxassetid://249768539"
o90.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o90.MeshType = Enum.MeshType.FileMesh
o90.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o91.Name = "blood"
o91.Parent = o89
o91.Texture = "http://www.roblox.com/asset/?id=931617584"
o92.Name = "blood"
o92.Parent = o89
o92.Texture = "http://www.roblox.com/asset/?id=931617584"
o93.Parent = o1
o93.Material = Enum.Material.SmoothPlastic
o93.BrickColor = BrickColor.new("Really black")
o93.Rotation = Vector3.new(-5.94000006, 0, 0)
o93.Size = Vector3.new(0.0500000007, 0.140000001, 0.37000069)
o93.CFrame = CFrame.new(0.619570971, 0.367810011, -0.423301011, 0.999999881, 0, 0, 0, 0.994631052, 0.103485018, 0, -0.103484988, 0.994630992)
o93.BottomSurface = Enum.SurfaceType.Smooth
o93.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o93.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o94.Parent = o1
o94.BrickColor = BrickColor.new("Brick yellow")
o94.Rotation = Vector3.new(-66.4300003, -30.8999996, -60.3199997)
o94.Size = Vector3.new(0.152938873, 0.568167567, 0.211820453)
o94.CFrame = CFrame.new(0.688426971, 0.562056005, -0.230170995, 0.424901098, 0.745473087, -0.513545513, -0.11425703, 0.606931031, 0.786498725, 0.89800024, -0.275507957, 0.343061209)
o94.BottomSurface = Enum.SurfaceType.Smooth
o94.TopSurface = Enum.SurfaceType.Smooth
o94.Color = Color3.new(0.843137, 0.772549, 0.603922)
o94.Color = Color3.new(0.843137, 0.772549, 0.603922)
o95.Parent = o94
o95.MeshId = "rbxassetid://249768539"
o95.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o95.MeshType = Enum.MeshType.FileMesh
o95.Scale = Vector3.new(0.126174524, 0.324994922, 0.164409384)
o96.Name = "blood"
o96.Parent = o94
o96.Texture = "http://www.roblox.com/asset/?id=931617584"
o97.Name = "blood"
o97.Parent = o94
o97.Texture = "http://www.roblox.com/asset/?id=931617584"
o98.Parent = o1
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Really black")
o98.Rotation = Vector3.new(-55.0600014, 0, 0)
o98.Size = Vector3.new(0.0500000007, 0.359999985, 0.970000684)
o98.CFrame = CFrame.new(0.619570971, -0.168746054, -0.322539985, 1, 0, 0, 0, 0.572785974, 0.819705009, 0, -0.819705009, 0.572785974)
o98.BottomSurface = Enum.SurfaceType.Smooth
o98.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o98.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o99.Parent = o1
o99.Material = Enum.Material.SmoothPlastic
o99.BrickColor = BrickColor.new("Really black")
o99.Rotation = Vector3.new(-166.669998, 0, -180)
o99.Size = Vector3.new(0.0500000007, 0.160000056, 0.63000071)
o99.CFrame = CFrame.new(0.619570971, 0.0978819728, 0.328994989, -1, 0, 0, 0, 0.973042846, 0.230624139, 0, 0.230623752, -0.973042607)
o99.BottomSurface = Enum.SurfaceType.Smooth
o99.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o99.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
mas.Parent = Torso
mas:MakeJoints()
armlocation = Instance.new("Part",Torso)
armlocation.Size = Vector3.new(.1,.1,.1)
armlocation.Anchored = false
armlocation.CanCollide = false
armlocation.Transparency = 1
armlocation.CFrame = RightArm.CFrame
armlocationweld = weldBetween(armlocation,RightArm)

local parts,last = {}
local function scan(mas)
	for _,v in pairs(mas:GetChildren()) do
		if (v:IsA("BasePart")) then
			if (last) then
				local w = Instance.new("Weld")
				w.Name = ("%s_Weld"):format(v.Name)
				w.Part0,w.Part1 = last,armlocation
				w.C0 = last.CFrame:inverse()
				w.Parent = last
			end
			last = v
			table.insert(parts,v)
		end
		scan(v)
	end
end
scan(mas)
for _,v in pairs(parts) do
	v.CanCollide = false
	v.Anchored = false
	v.Parent = Torso
	v.Locked = true
end

mas = Instance.new("Model",Torso) 
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("Part")
o4 = Instance.new("Part")
o5 = Instance.new("Part")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("Part")
o9 = Instance.new("Part")
o10 = Instance.new("Part")
o11 = Instance.new("Part")
o12 = Instance.new("Part")
o13 = Instance.new("Part")
o14 = Instance.new("Part")
o15 = Instance.new("Part")
o16 = Instance.new("Part")
o17 = Instance.new("Part")
o18 = Instance.new("Part")
o19 = Instance.new("Part")
o20 = Instance.new("Part")
o21 = Instance.new("Part")
o22 = Instance.new("Part")
o23 = Instance.new("Part")
o24 = Instance.new("Part")
o25 = Instance.new("Part")
o26 = Instance.new("Part")
o27 = Instance.new("Part")
o28 = Instance.new("SpecialMesh")
o29 = Instance.new("Decal")
o30 = Instance.new("Decal")
o31 = Instance.new("Part")
o32 = Instance.new("Part")
o33 = Instance.new("SpecialMesh")
o34 = Instance.new("Part")
o35 = Instance.new("SpecialMesh")
o36 = Instance.new("Decal")
o37 = Instance.new("Decal")
o38 = Instance.new("Part")
o39 = Instance.new("Part")
o40 = Instance.new("SpecialMesh")
o41 = Instance.new("Decal")
o42 = Instance.new("Decal")
o43 = Instance.new("Decal")
o44 = Instance.new("Part")
o45 = Instance.new("Part")
o46 = Instance.new("Decal")
o47 = Instance.new("SpecialMesh")
o48 = Instance.new("Decal")
o49 = Instance.new("Part")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Part")
o53 = Instance.new("SpecialMesh")
hairo = Instance.new("Part")
hairoMesh = Instance.new("SpecialMesh")
o54 = Instance.new("ManualWeld")
o55 = Instance.new("ManualWeld")
o56 = Instance.new("ManualWeld")
o57 = Instance.new("ManualWeld")
o58 = Instance.new("Part")
o59 = Instance.new("Part")
o60 = Instance.new("SpecialMesh")
o61 = Instance.new("Decal")
o62 = Instance.new("Decal")
o63 = Instance.new("Part")
o64 = Instance.new("SpecialMesh")
o65 = Instance.new("Part")
o66 = Instance.new("Part")
o67 = Instance.new("SpecialMesh")
o68 = Instance.new("Decal")
o69 = Instance.new("Decal")
o70 = Instance.new("Part")
o71 = Instance.new("Part")
o72 = Instance.new("Part")
o73 = Instance.new("Part")
o74 = Instance.new("SpecialMesh")
o75 = Instance.new("Decal")
o76 = Instance.new("Decal")
o77 = Instance.new("Part")
o78 = Instance.new("SpecialMesh")
o79 = Instance.new("Part")
o80 = Instance.new("SpecialMesh")
o81 = Instance.new("Decal")
o82 = Instance.new("Decal")
o83 = Instance.new("Part")
o84 = Instance.new("Part")
o85 = Instance.new("SpecialMesh")
o86 = Instance.new("Decal")
o87 = Instance.new("WedgePart")
o88 = Instance.new("WedgePart")
o89 = Instance.new("WedgePart")
o90 = Instance.new("ManualWeld")
o91 = Instance.new("WedgePart")
o92 = Instance.new("WedgePart")
o93 = Instance.new("WedgePart")
o94 = Instance.new("WedgePart")
o95 = Instance.new("WedgePart")
o96 = Instance.new("WedgePart")
o97 = Instance.new("WedgePart")
o98 = Instance.new("WedgePart")
o99 = Instance.new("SpecialMesh")
o100 = Instance.new("WedgePart")
o101 = Instance.new("WedgePart")
o102 = Instance.new("WedgePart")
o103 = Instance.new("WedgePart")
o104 = Instance.new("WedgePart")
o105 = Instance.new("WedgePart")
o106 = Instance.new("WedgePart")
o107 = Instance.new("SpecialMesh")
o108 = Instance.new("WedgePart")
o109 = Instance.new("WedgePart")
o110 = Instance.new("WedgePart")
o111 = Instance.new("WedgePart")
o112 = Instance.new("WedgePart")
o113 = Instance.new("WedgePart")
o114 = Instance.new("WedgePart")
o115 = Instance.new("SpecialMesh")
o116 = Instance.new("WedgePart")
o117 = Instance.new("WedgePart")
o118 = Instance.new("WedgePart")
o119 = Instance.new("WedgePart")
o120 = Instance.new("Part")
o121 = Instance.new("Part")
o122 = Instance.new("Part")
o123 = Instance.new("Part")
o124 = Instance.new("Part")
o125 = Instance.new("Part")
o126 = Instance.new("Part")
o127 = Instance.new("Part")
o128 = Instance.new("Part")
o129 = Instance.new("Part")
o130 = Instance.new("Part")
o131 = Instance.new("Part")
o132 = Instance.new("Part")
o133 = Instance.new("Part")
o134 = Instance.new("Part")
o1.Parent = mas
o2.Parent = o1
o2.Material = Enum.Material.Granite
o2.BrickColor = BrickColor.new("Pearl")
o2.Rotation = Vector3.new(0, 89.9100037, 0)
o2.Shape = Enum.PartType.Cylinder
o2.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o2.CFrame = CFrame.new(0.029994702, -0.230940238, -1.14501667, 0, 0, 0.999998689, 0, 0.999999762, 0, -0.999998927, 0, 0)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.905882, 0.905882, 0.92549)
o2.Color = Color3.new(0.905882, 0.905882, 0.92549)
o3.Parent = o1
o3.Material = Enum.Material.Metal
o3.BrickColor = BrickColor.new("Pearl")
o3.Rotation = Vector3.new(140, -80, 180)
o3.Shape = Enum.PartType.Cylinder
o3.Size = Vector3.new(0.229999915, 0.190000325, 0.30000028)
o3.CFrame = CFrame.new(-0.78641963, -0.116765499, -0.691372335, -0.173647001, -4.14006998e-08, -0.984807968, 0.63302201, 0.766044736, -0.111618109, 0.754406989, -0.642787278, -0.13302134)
o3.BottomSurface = Enum.SurfaceType.Smooth
o3.TopSurface = Enum.SurfaceType.Smooth
o3.Color = Color3.new(0.905882, 0.905882, 0.92549)
o3.Color = Color3.new(0.905882, 0.905882, 0.92549)
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.BrickColor = BrickColor.new("Pearl")
o4.Rotation = Vector3.new(160, -80, -180)
o4.Shape = Enum.PartType.Cylinder
o4.Size = Vector3.new(0.2299999, 0.190000325, 0.30000028)
o4.CFrame = CFrame.new(-0.75642848, -0.199360639, -0.855664194, -0.173646986, 5.17508214e-09, -0.984807968, 0.33682397, 0.939692736, -0.0593907274, 0.925416887, -0.342019945, -0.163174808)
o4.BottomSurface = Enum.SurfaceType.Smooth
o4.TopSurface = Enum.SurfaceType.Smooth
o4.Color = Color3.new(0.905882, 0.905882, 0.92549)
o4.Color = Color3.new(0.905882, 0.905882, 0.92549)
o5.Parent = o1
o5.Material = Enum.Material.Metal
o5.BrickColor = BrickColor.new("Pearl")
o5.Rotation = Vector3.new(11.8699999, -57.1300011, 49.5800018)
o5.Shape = Enum.PartType.Cylinder
o5.Size = Vector3.new(0.100000001, 0.190000325, 0.30000028)
o5.CFrame = CFrame.new(-0.796387434, -0.0439687073, -0.60461849, 0.351902992, -0.413175642, -0.839910865, 0.63302201, 0.766044855, -0.111617506, 0.689526975, -0.492403507, 0.531122744)
o5.BottomSurface = Enum.SurfaceType.Smooth
o5.TopSurface = Enum.SurfaceType.Smooth
o5.Color = Color3.new(0.905882, 0.905882, 0.92549)
o5.Color = Color3.new(0.905882, 0.905882, 0.92549)
o6.Parent = o1
o6.Material = Enum.Material.Metal
o6.BrickColor = BrickColor.new("Pearl")
o6.Rotation = Vector3.new(8.07999992, -37.4199982, 44.5)
o6.Shape = Enum.PartType.Cylinder
o6.Size = Vector3.new(0.280000001, 0.190000325, 0.30000028)
o6.CFrame = CFrame.new(-0.715401411, 0.0430033132, -0.517101407, 0.566513062, -0.556669772, -0.607603252, 0.63302207, 0.766044915, -0.111616857, 0.527585089, -0.321393818, 0.786358714)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.905882, 0.905882, 0.92549)
o6.Color = Color3.new(0.905882, 0.905882, 0.92549)
o7.Parent = o1
o7.Material = Enum.Material.Metal
o7.BrickColor = BrickColor.new("Pearl")
o7.Rotation = Vector3.new(-180, -20, -180)
o7.Shape = Enum.PartType.Cylinder
o7.Size = Vector3.new(0.150000006, 0.190000325, 0.30000028)
o7.CFrame = CFrame.new(-0.425144494, -0.230940714, -1.42169642, -0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, -0.939692736)
o7.BottomSurface = Enum.SurfaceType.Smooth
o7.TopSurface = Enum.SurfaceType.Smooth
o7.Color = Color3.new(0.905882, 0.905882, 0.92549)
o7.Color = Color3.new(0.905882, 0.905882, 0.92549)
o8.Parent = o1
o8.Material = Enum.Material.Metal
o8.BrickColor = BrickColor.new("Pearl")
o8.Rotation = Vector3.new(-180, 0, -180)
o8.Shape = Enum.PartType.Cylinder
o8.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o8.CFrame = CFrame.new(-0.306690514, -0.230940714, -1.44095302, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o8.BottomSurface = Enum.SurfaceType.Smooth
o8.TopSurface = Enum.SurfaceType.Smooth
o8.Color = Color3.new(0.905882, 0.905882, 0.92549)
o8.Color = Color3.new(0.905882, 0.905882, 0.92549)
o9.Parent = o1
o9.Material = Enum.Material.Metal
o9.BrickColor = BrickColor.new("Pearl")
o9.Rotation = Vector3.new(-180, -30, -180)
o9.Shape = Enum.PartType.Cylinder
o9.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o9.CFrame = CFrame.new(-0.499924004, -0.230940714, -1.38955379, -0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, -0.866025388)
o9.BottomSurface = Enum.SurfaceType.Smooth
o9.TopSurface = Enum.SurfaceType.Smooth
o9.Color = Color3.new(0.905882, 0.905882, 0.92549)
o9.Color = Color3.new(0.905882, 0.905882, 0.92549)
o10.Parent = o1
o10.Material = Enum.Material.Metal
o10.BrickColor = BrickColor.new("Pearl")
o10.Rotation = Vector3.new(-180, 10, -180)
o10.Shape = Enum.PartType.Cylinder
o10.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o10.CFrame = CFrame.new(-0.275081873, -0.230940714, -1.44007564, -0.984807789, 0, 0.173647955, 0, 1, 0, -0.173647955, 0, -0.984807789)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.905882, 0.905882, 0.92549)
o10.Color = Color3.new(0.905882, 0.905882, 0.92549)
o11.Parent = o1
o11.Material = Enum.Material.Metal
o11.BrickColor = BrickColor.new("Pearl")
o11.Rotation = Vector3.new(-180, 50, -180)
o11.Shape = Enum.PartType.Cylinder
o11.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o11.CFrame = CFrame.new(-0.0334896371, -0.230940238, -1.30057979, -0.64278239, 0, 0.766036987, 0, 0.999998331, 0, -0.766038835, 0, -0.642783284)
o11.BottomSurface = Enum.SurfaceType.Smooth
o11.TopSurface = Enum.SurfaceType.Smooth
o11.Color = Color3.new(0.905882, 0.905882, 0.92549)
o11.Color = Color3.new(0.905882, 0.905882, 0.92549)
o12.Parent = o1
o12.Material = Enum.Material.Metal
o12.BrickColor = BrickColor.new("Pearl")
o12.Rotation = Vector3.new(-180, 50, -180)
o12.Shape = Enum.PartType.Cylinder
o12.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o12.CFrame = CFrame.new(-0.0399631709, -0.230940714, -1.3197372, -0.642788053, 0, 0.76604414, 0, 1, 0, -0.76604414, 0, -0.642788053)
o12.BottomSurface = Enum.SurfaceType.Smooth
o12.TopSurface = Enum.SurfaceType.Smooth
o12.Color = Color3.new(0.905882, 0.905882, 0.92549)
o12.Color = Color3.new(0.905882, 0.905882, 0.92549)
o13.Parent = o1
o13.Material = Enum.Material.Metal
o13.BrickColor = BrickColor.new("Pearl")
o13.Rotation = Vector3.new(-180, 60, -180)
o13.Shape = Enum.PartType.Cylinder
o13.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o13.CFrame = CFrame.new(-0.0138324406, -0.230940238, -1.27579951, -0.499996006, 0, 0.866017461, 0, 0.999998331, 0, -0.866019547, 0, -0.499996543)
o13.BottomSurface = Enum.SurfaceType.Smooth
o13.TopSurface = Enum.SurfaceType.Smooth
o13.Color = Color3.new(0.905882, 0.905882, 0.92549)
o13.Color = Color3.new(0.905882, 0.905882, 0.92549)
o14.Parent = o1
o14.Material = Enum.Material.Metal
o14.BrickColor = BrickColor.new("Pearl")
o14.Rotation = Vector3.new(-180, 40, -180)
o14.Shape = Enum.PartType.Cylinder
o14.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o14.CFrame = CFrame.new(-0.063614279, -0.230940714, -1.34072566, -0.76604414, 0, 0.642788053, 0, 1, 0, -0.642788053, 0, -0.76604414)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.905882, 0.905882, 0.92549)
o14.Color = Color3.new(0.905882, 0.905882, 0.92549)
o15.Parent = o1
o15.Material = Enum.Material.Granite
o15.BrickColor = BrickColor.new("Pearl")
o15.Rotation = Vector3.new(-180, 80, -180)
o15.Shape = Enum.PartType.Cylinder
o15.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o15.CFrame = CFrame.new(0.029994702, -0.230940714, -1.17502284, -0.173648149, 0, 0.984807849, 0, 1, 0, -0.984807849, 0, -0.173648134)
o15.BottomSurface = Enum.SurfaceType.Smooth
o15.TopSurface = Enum.SurfaceType.Smooth
o15.Color = Color3.new(0.905882, 0.905882, 0.92549)
o15.Color = Color3.new(0.905882, 0.905882, 0.92549)
o16.Parent = o1
o16.Material = Enum.Material.Metal
o16.BrickColor = BrickColor.new("Pearl")
o16.Rotation = Vector3.new(-180, 70, -180)
o16.Shape = Enum.PartType.Cylinder
o16.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o16.CFrame = CFrame.new(0.0199963208, -0.230940714, -1.20502925, -0.342019916, 0, 0.939692736, 0, 1, 0, -0.939692736, 0, -0.342019886)
o16.BottomSurface = Enum.SurfaceType.Smooth
o16.TopSurface = Enum.SurfaceType.Smooth
o16.Color = Color3.new(0.905882, 0.905882, 0.92549)
o16.Color = Color3.new(0.905882, 0.905882, 0.92549)
o17.Parent = o1
o17.Material = Enum.Material.Metal
o17.BrickColor = BrickColor.new("Pearl")
o17.Rotation = Vector3.new(-180, 70, -180)
o17.Shape = Enum.PartType.Cylinder
o17.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o17.CFrame = CFrame.new(0.0204655882, -0.230940714, -1.22524714, -0.342019916, 0, 0.939692736, 0, 1, 0, -0.939692736, 0, -0.342019886)
o17.BottomSurface = Enum.SurfaceType.Smooth
o17.TopSurface = Enum.SurfaceType.Smooth
o17.Color = Color3.new(0.905882, 0.905882, 0.92549)
o17.Color = Color3.new(0.905882, 0.905882, 0.92549)
o18.Parent = o1
o18.Material = Enum.Material.Metal
o18.BrickColor = BrickColor.new("Pearl")
o18.Rotation = Vector3.new(-180, 60, -180)
o18.Shape = Enum.PartType.Cylinder
o18.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o18.CFrame = CFrame.new(0.00542034768, -0.230940238, -1.25305629, -0.499995798, 0, 0.866017163, 0, 0.999998331, 0, -0.866018951, 0, -0.499996275)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.905882, 0.905882, 0.92549)
o18.Color = Color3.new(0.905882, 0.905882, 0.92549)
o19.Parent = o1
o19.Material = Enum.Material.Metal
o19.BrickColor = BrickColor.new("Pearl")
o19.Rotation = Vector3.new(-180, -10, -180)
o19.Shape = Enum.PartType.Cylinder
o19.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o19.CFrame = CFrame.new(-0.367298424, -0.230940714, -1.43101192, -0.984807789, 0, -0.173647955, 0, 1, 0, 0.173647955, 0, -0.984807789)
o19.BottomSurface = Enum.SurfaceType.Smooth
o19.TopSurface = Enum.SurfaceType.Smooth
o19.Color = Color3.new(0.905882, 0.905882, 0.92549)
o19.Color = Color3.new(0.905882, 0.905882, 0.92549)
o20.Parent = o1
o20.Material = Enum.Material.Metal
o20.BrickColor = BrickColor.new("Pearl")
o20.Rotation = Vector3.new(-180, -20, -180)
o20.Shape = Enum.PartType.Cylinder
o20.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o20.CFrame = CFrame.new(-0.417126, -0.230940714, -1.42499232, -0.939692736, 0, -0.342019886, 0, 1, 0, 0.342019916, 0, -0.939692736)
o20.BottomSurface = Enum.SurfaceType.Smooth
o20.TopSurface = Enum.SurfaceType.Smooth
o20.Color = Color3.new(0.905882, 0.905882, 0.92549)
o20.Color = Color3.new(0.905882, 0.905882, 0.92549)
o21.Parent = o1
o21.Material = Enum.Material.Metal
o21.BrickColor = BrickColor.new("Pearl")
o21.Rotation = Vector3.new(-180, -10, -180)
o21.Shape = Enum.PartType.Cylinder
o21.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o21.CFrame = CFrame.new(-0.387123406, -0.230940714, -1.43498683, -0.984807789, 0, -0.173647955, 0, 1, 0, 0.173647955, 0, -0.984807789)
o21.BottomSurface = Enum.SurfaceType.Smooth
o21.TopSurface = Enum.SurfaceType.Smooth
o21.Color = Color3.new(0.905882, 0.905882, 0.92549)
o21.Color = Color3.new(0.905882, 0.905882, 0.92549)
o22.Parent = o1
o22.Material = Enum.Material.Metal
o22.BrickColor = BrickColor.new("Pearl")
o22.Rotation = Vector3.new(-180, 0, -180)
o22.Shape = Enum.PartType.Cylinder
o22.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o22.CFrame = CFrame.new(-0.336014152, -0.230940714, -1.43564296, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Color = Color3.new(0.905882, 0.905882, 0.92549)
o22.Color = Color3.new(0.905882, 0.905882, 0.92549)
o23.Parent = o1
o23.Material = Enum.Material.Metal
o23.BrickColor = BrickColor.new("Pearl")
o23.Rotation = Vector3.new(-180, -40, -180)
o23.Shape = Enum.PartType.Cylinder
o23.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o23.CFrame = CFrame.new(-0.547455549, -0.230940714, -1.35062861, -0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, -0.76604414)
o23.BottomSurface = Enum.SurfaceType.Smooth
o23.TopSurface = Enum.SurfaceType.Smooth
o23.Color = Color3.new(0.905882, 0.905882, 0.92549)
o23.Color = Color3.new(0.905882, 0.905882, 0.92549)
o24.Parent = o1
o24.Material = Enum.Material.Metal
o24.BrickColor = BrickColor.new("Pearl")
o24.Rotation = Vector3.new(-180, -50, -180)
o24.Shape = Enum.PartType.Cylinder
o24.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o24.CFrame = CFrame.new(-0.587578535, -0.230940714, -1.32050014, -0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, -0.64278698)
o24.BottomSurface = Enum.SurfaceType.Smooth
o24.TopSurface = Enum.SurfaceType.Smooth
o24.Color = Color3.new(0.905882, 0.905882, 0.92549)
o24.Color = Color3.new(0.905882, 0.905882, 0.92549)
o25.Parent = o1
o25.Material = Enum.Material.Metal
o25.BrickColor = BrickColor.new("Pearl")
o25.Rotation = Vector3.new(-180, -40, -180)
o25.Shape = Enum.PartType.Cylinder
o25.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o25.CFrame = CFrame.new(-0.566609144, -0.230940714, -1.34416652, -0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, -0.76604414)
o25.BottomSurface = Enum.SurfaceType.Smooth
o25.TopSurface = Enum.SurfaceType.Smooth
o25.Color = Color3.new(0.905882, 0.905882, 0.92549)
o25.Color = Color3.new(0.905882, 0.905882, 0.92549)
o26.Parent = o1
o26.Material = Enum.Material.Metal
o26.BrickColor = BrickColor.new("Pearl")
o26.Rotation = Vector3.new(-180, -30, -180)
o26.Shape = Enum.PartType.Cylinder
o26.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o26.CFrame = CFrame.new(-0.522660017, -0.230940714, -1.37028956, -0.866025388, 0, -0.500000238, 0, 1, 0, 0.500000238, 0, -0.866025388)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.905882, 0.905882, 0.92549)
o26.Color = Color3.new(0.905882, 0.905882, 0.92549)
o27.Parent = o1
o27.BrickColor = BrickColor.new("Brick yellow")
o27.Rotation = Vector3.new(-43.3499985, -40.7599983, 57.2799988)
o27.Size = Vector3.new(0.128652215, 0.477942973, 0.178183243)
o27.CFrame = CFrame.new(0.553470433, 0.311729193, -0.933468759, 0.409435093, -0.637308717, -0.652840376, 0.854030192, 0.0160172842, 0.519976914, -0.32092908, -0.770442188, 0.550838828)
o27.BottomSurface = Enum.SurfaceType.Smooth
o27.TopSurface = Enum.SurfaceType.Smooth
o27.Color = Color3.new(0.843137, 0.772549, 0.603922)
o27.Color = Color3.new(0.843137, 0.772549, 0.603922)
o28.Parent = o27
o28.MeshId = "rbxassetid://249768539"
o28.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o28.MeshType = Enum.MeshType.FileMesh
o28.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o29.Name = "blood"
o29.Parent = o27
o29.Texture = "http://www.roblox.com/asset/?id=931617584"
o30.Name = "blood"
o30.Parent = o27
o30.Texture = "http://www.roblox.com/asset/?id=931617584"
o31.Parent = o1
o31.Material = Enum.Material.Metal
o31.BrickColor = BrickColor.new("Fossil")
o31.Shape = Enum.PartType.Cylinder
o31.Size = Vector3.new(0.768514037, 0.668364048, 0.66836381)
o31.CFrame = CFrame.new(-0.293915033, 0.0546538234, -0.457035661, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o31.BottomSurface = Enum.SurfaceType.Smooth
o31.TopSurface = Enum.SurfaceType.Smooth
o31.Color = Color3.new(0.623529, 0.631373, 0.67451)
o31.Color = Color3.new(0.623529, 0.631373, 0.67451)
o32.Parent = o1
o32.Material = Enum.Material.Metal
o32.BrickColor = BrickColor.new("Ghost grey")
o32.CanCollide = false
o32.Shape = Enum.PartType.Cylinder
o32.Size = Vector3.new(0.059471529, 0.668364048, 0.525036752)
o32.CFrame = CFrame.new(-0.690472305, 0.0643102676, -0.477482438, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o32.BottomSurface = Enum.SurfaceType.Smooth
o32.TopSurface = Enum.SurfaceType.Smooth
o32.Color = Color3.new(0.792157, 0.796079, 0.819608)
o32.Color = Color3.new(0.792157, 0.796079, 0.819608)
o33.Parent = o32
o33.Scale = Vector3.new(0.610134006, 1, 1)
o33.MeshType = Enum.MeshType.Cylinder
o33.Scale = Vector3.new(0.610134006, 1, 1)
o34.Parent = o1
o34.BrickColor = BrickColor.new("Brick yellow")
o34.Rotation = Vector3.new(11.7200003, 31.0599995, -108.099998)
o34.Size = Vector3.new(0.128652215, 0.477942973, 0.178183243)
o34.CFrame = CFrame.new(0.581687748, 0.167660549, -1.03297138, -0.266184896, 0.814256907, 0.515879214, -0.96324563, -0.204652384, -0.173997805, -0.0361029878, -0.543233991, 0.838804722)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o34.Color = Color3.new(0.843137, 0.772549, 0.603922)
o34.Color = Color3.new(0.843137, 0.772549, 0.603922)
o35.Parent = o34
o35.MeshId = "rbxassetid://249768539"
o35.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o35.MeshType = Enum.MeshType.FileMesh
o35.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o36.Name = "blood"
o36.Parent = o34
o36.Texture = "http://www.roblox.com/asset/?id=931617584"
o37.Name = "blood"
o37.Parent = o34
o37.Texture = "http://www.roblox.com/asset/?id=931617584"
o38.Parent = o1
o38.Material = Enum.Material.Metal
o38.BrickColor = BrickColor.new("Fossil")
o38.Size = Vector3.new(0.357203275, 0.496074498, 0.163377807)
o38.CFrame = CFrame.new(0.0243031736, -0.258253485, -1.01255512, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.623529, 0.631373, 0.67451)
o38.Color = Color3.new(0.623529, 0.631373, 0.67451)
o39.Parent = o1
o39.BrickColor = BrickColor.new("Brick yellow")
o39.Rotation = Vector3.new(-51.1300011, -4.36000013, 3.50999999)
o39.Size = Vector3.new(0.100213371, 0.372292936, 0.13879551)
o39.CFrame = CFrame.new(0.318050325, -0.385336965, -1.06268024, 0.995230377, -0.061045561, -0.076092273, 0.0975530371, 0.622783244, 0.776288867, 0, -0.780009329, 0.625767946)
o39.BottomSurface = Enum.SurfaceType.Smooth
o39.TopSurface = Enum.SurfaceType.Smooth
o39.Color = Color3.new(0.843137, 0.772549, 0.603922)
o39.Color = Color3.new(0.843137, 0.772549, 0.603922)
o40.Parent = o39
o40.MeshId = "rbxassetid://249768539"
o40.Scale = Vector3.new(0.0826760232, 0.212953508, 0.107729383)
o40.MeshType = Enum.MeshType.FileMesh
o40.Scale = Vector3.new(0.0826760232, 0.212953508, 0.107729383)
o41.Name = "Blood"
o41.Parent = o39
o41.Texture = "http://www.roblox.com/asset/?id=1391189545"
o41.Face = Enum.NormalId.Top
o42.Name = "blood"
o42.Parent = o39
o42.Texture = "http://www.roblox.com/asset/?id=931617584"
o43.Name = "Blood"
o43.Parent = o39
o43.Texture = "http://www.roblox.com/asset/?id=1548886865"
o44.Parent = o1
o44.Material = Enum.Material.Metal
o44.BrickColor = BrickColor.new("Ghost grey")
o44.Rotation = Vector3.new(0, 30, 0)
o44.Size = Vector3.new(0.141099036, 0.285911262, 0.18342869)
o44.CFrame = CFrame.new(-0.307278037, -0.238575354, -0.998807073, 0.866025567, 0, 0.499999762, 0, 1, 0, -0.499999762, 0, 0.866025567)
o44.BottomSurface = Enum.SurfaceType.Smooth
o44.TopSurface = Enum.SurfaceType.Smooth
o44.Color = Color3.new(0.792157, 0.796079, 0.819608)
o44.Color = Color3.new(0.792157, 0.796079, 0.819608)
o45.Parent = o1
o45.Material = Enum.Material.Granite
o45.BrickColor = BrickColor.new("Ghost grey")
o45.CanCollide = false
o45.Shape = Enum.PartType.Cylinder
o45.Size = Vector3.new(0.059471529, 0.538404047, 0.360389531)
o45.CFrame = CFrame.new(-0.70792079, 0.0654227287, -0.478947282, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o45.BottomSurface = Enum.SurfaceType.Smooth
o45.TopSurface = Enum.SurfaceType.Smooth
o45.Color = Color3.new(0.792157, 0.796079, 0.819608)
o45.Color = Color3.new(0.792157, 0.796079, 0.819608)
o46.Name = "scar"
o46.Parent = o45
o46.Texture = "http://www.roblox.com/asset/?id=262340316"
o46.Face = Enum.NormalId.Left
o47.Parent = o45
o47.Scale = Vector3.new(0.615758002, 1, 1)
o47.MeshType = Enum.MeshType.Cylinder
o47.Scale = Vector3.new(0.615758002, 1, 1)
o48.Name = "Gears of death!-gears of wars"
o48.Parent = o45
o48.Texture = "http://www.roblox.com/asset/?id=17435457"
o48.Face = Enum.NormalId.Left
o49.Parent = o1
o49.Material = "Glass"
o49.BrickColor = BrickColor.new("Really black")
o49.Shape = Enum.PartType.Ball
o49.Size = Vector3.new(0.360916525, 0.360916525, 0.360916525)
o49.CFrame = CFrame.new(-0.0591358244, 0.201999441, -0.869961679, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o49.BottomSurface = Enum.SurfaceType.Smooth
o49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o49.TopSurface = Enum.SurfaceType.Smooth
o49.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o49.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o50.Parent = o1
o50.Material = Enum.Material.Neon
o50.BrickColor = BrickColor.new("Really red")
o50.Size = Vector3.new(0.162635177, 0.162635207, 0.0883725435)
o50.CFrame = CFrame.new(-0.060615927, 0.199397847, -1.03259754, 0.999999762, 0, 0, 0, 1, 0, 0, 0, 0.999999762)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.Smooth
o50.Color = Color3.new(1, 0, 0)
o50.Color = Color3.new(1, 0, 0)
o51.Parent = o50
o51.Scale = Vector3.new(0.239999995, 0.800000012, 0.5)
o51.MeshType = Enum.MeshType.Sphere
o51.Scale = Vector3.new(0.239999995, 0.800000012, 0.5)
o52.Parent = o1
o52.Material = fpep
o52.BrickColor = BrickColor.new("Really black")
o52.Size = Vector3.new(4.75280857, 1.1882025, 2.37640452)
o52.CFrame = CFrame.new(0.00981869362, -0.0387234986, 0.340031147, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.TopSurface = Enum.SurfaceType.Smooth
o52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o53.Parent = o52
o53.MeshId = "rbxassetid://560196103"
o53.Scale = Vector3.new(7.24803305, 7.24803591, 7.24803352)----mita
o53.MeshType = Enum.MeshType.FileMesh
o53.Scale = Vector3.new(7.24803305, 7.24803591, 7.24803352)
local partSize = Vector3.new(3.533512830734253, 5.08600378036499, 3.9424831867218018)
local meshSize = Vector3.new(0.458279013633728, 0.69930499792099, 0.5172048211097717)
hairo.BrickColor = BrickColor.new("Cocoa")
hairo.Size = partSize
hairo.Anchored = false
hairo.CanCollide = false
hairo.Parent = o1
hairo.CFrame = CFrame.new(0.00981869362, -0.0387234986, 0.24031147, 1, 0, 0, 0, 1, 0, 0, 0, 1)
hairoMesh.Parent = hairo
hairoMesh.MeshId = "rbxassetid://560196103"
hairoMesh.Scale = Vector3.new(partSize.X/meshSize.X, partSize.Y/meshSize.Y, partSize.Z/meshSize.Z)
hairoMesh.MeshType = Enum.MeshType.FileMesh
o54.Name = "Part-to-Wedge Strong Joint"
o54.Parent = o52
o54.C0 = CFrame.new(2.37640429, -0.59410125, -1.18820226, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o54.C1 = CFrame.new(0.0971603394, 2.57523346, 0.726303101, 0, 0, -1, -0.859018207, -0.511945128, 0, -0.511945128, 0.859018207, 0)
o55.Name = "Part-to-Wedge Strong Joint"
o55.Parent = o52
o55.C0 = CFrame.new(2.37640429, -0.59410125, -1.18820226, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o55.C1 = CFrame.new(0.0971603394, 1.73261642, 2.06554031, 0, 0, -1, -0.403386027, -0.915029883, 0, -0.915030122, 0.403386027, 0)
o56.Name = "Part-to-Wedge Strong Joint"
o56.Parent = o52
o56.C0 = CFrame.new(2.37640429, -0.59410125, -1.18820226, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o56.C1 = CFrame.new(0.0971603394, -0.872171402, 2.60646057, 0, 0, -1, 0.582161963, -0.81307286, -0, -0.81307286, -0.582161963, 0)
o57.Name = "Part-to-Wedge Strong Joint"
o57.Parent = o52
o57.C0 = CFrame.new(2.37640429, -0.59410125, -1.18820226, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o57.C1 = CFrame.new(0.0971603394, -1.5667305, 2.30226898, 0, 0, -1, 0.78332299, -0.621614993, -0, -0.621614993, -0.78332299, 0)
o58.Parent = o1
o58.Material = Enum.Material.Metal
o58.BrickColor = BrickColor.new("Ghost grey")
o58.Rotation = Vector3.new(0, 90, 0)
o58.Size = Vector3.new(0.328983545, 0.0839168057, 0.328240871)
o58.CFrame = CFrame.new(-0.521710157, -0.0573740266, -0.610973775, 0, 0, 1, 0, 1, -0, -1, 0, 0)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.TopSurface = Enum.SurfaceType.Smooth
o58.Color = Color3.new(0.792157, 0.796079, 0.819608)
o58.Color = Color3.new(0.792157, 0.796079, 0.819608)
o59.Parent = o1
o59.BrickColor = BrickColor.new("Brick yellow")
o59.Rotation = Vector3.new(-49.1699982, -57.1899986, 18.1700001)
o59.Size = Vector3.new(0.128652215, 0.477942973, 0.178183243)
o59.CFrame = CFrame.new(0.588374972, -0.0276503712, -0.988423347, 0.514876008, -0.168974042, -0.840446591, 0.808077991, 0.42297101, 0.410006791, 0.28620401, -0.890249133, 0.354321778)
o59.BottomSurface = Enum.SurfaceType.Smooth
o59.TopSurface = Enum.SurfaceType.Smooth
o59.Color = Color3.new(0.843137, 0.772549, 0.603922)
o59.Color = Color3.new(0.843137, 0.772549, 0.603922)
o60.Parent = o59
o60.MeshId = "rbxassetid://249768539"
o60.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o60.MeshType = Enum.MeshType.FileMesh
o60.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o61.Name = "blood"
o61.Parent = o59
o61.Texture = "http://www.roblox.com/asset/?id=931617584"
o62.Name = "blood"
o62.Parent = o59
o62.Texture = "http://www.roblox.com/asset/?id=931617584"
o63.Parent = o1
o63.Material = Enum.Material.Neon
o63.BrickColor = BrickColor.new("Really red")
o63.CanCollide = false
o63.Shape = Enum.PartType.Cylinder
o63.Size = Vector3.new(0.059471529, 0.538404047, 0.43316713)
o63.CFrame = CFrame.new(-0.704586744, 0.0654227287, -0.477482438, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o63.BottomSurface = Enum.SurfaceType.Smooth
o63.TopSurface = Enum.SurfaceType.Smooth
o63.Color = Color3.new(1, 0, 0)
o63.Color = Color3.new(1, 0, 0)
o64.Parent = o63
o64.Scale = Vector3.new(0.503374219, 1, 1)
o64.MeshType = Enum.MeshType.Cylinder
o64.Scale = Vector3.new(0.503374219, 1, 1)
o65.Parent = o1
o65.Material = Enum.Material.Metal
o65.BrickColor = BrickColor.new("Ghost grey")
o65.Size = Vector3.new(0.141099036, 0.285911262, 0.18342869)
o65.CFrame = CFrame.new(-0.221130699, -0.238575354, -1.02255726, 0.999996424, 0, 0, 0, 0.999996424, 0, 0, 0, 1)
o65.BottomSurface = Enum.SurfaceType.Smooth
o65.TopSurface = Enum.SurfaceType.Smooth
o65.Color = Color3.new(0.792157, 0.796079, 0.819608)
o65.Color = Color3.new(0.792157, 0.796079, 0.819608)
o66.Parent = o1
o66.BrickColor = BrickColor.new("Brick yellow")
o66.Rotation = Vector3.new(36.2299995, 31.3199997, -146.970001)
o66.Size = Vector3.new(0.128652215, 0.477942973, 0.178183243)
o66.CFrame = CFrame.new(0.451720953, 0.0198789034, -1.12581348, -0.716209173, 0.465669036, 0.519804657, -0.697268188, -0.508801997, -0.504913628, 0.0293550082, -0.724066973, 0.689104736)
o66.BottomSurface = Enum.SurfaceType.Smooth
o66.TopSurface = Enum.SurfaceType.Smooth
o66.Color = Color3.new(0.843137, 0.772549, 0.603922)
o66.Color = Color3.new(0.843137, 0.772549, 0.603922)
o67.Parent = o66
o67.MeshId = "rbxassetid://249768539"
o67.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o67.MeshType = Enum.MeshType.FileMesh
o67.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o68.Name = "blood"
o68.Parent = o66
o68.Texture = "http://www.roblox.com/asset/?id=931617584"
o69.Name = "blood"
o69.Parent = o66
o69.Texture = "http://www.roblox.com/asset/?id=931617584"
o70.Parent = o1
o70.Material = Enum.Material.Metal
o70.BrickColor = BrickColor.new("Ghost grey")
o70.Rotation = Vector3.new(0, 90, 0)
o70.Size = Vector3.new(0.37428385, 0.285911262, 0.328240871)
o70.CFrame = CFrame.new(-0.521710157, -0.238575354, -0.633610129, 0, 0, 1, 0, 1, 0, -1, 0, 0)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.TopSurface = Enum.SurfaceType.Smooth
o70.Color = Color3.new(0.792157, 0.796079, 0.819608)
o70.Color = Color3.new(0.792157, 0.796079, 0.819608)
o71.Parent = o1
o71.Material = Enum.Material.Metal
o71.BrickColor = BrickColor.new("Ghost grey")
o71.Rotation = Vector3.new(0, 60, 0)
o71.Size = Vector3.new(0.254720837, 0.285911262, 0.18342869)
o71.CFrame = CFrame.new(-0.398064971, -0.238575354, -0.885732055, 0.500000179, 3.38592002e-14, 0.866025507, 5.16188265e-08, 1, -2.9802095e-08, -0.86602515, 5.96043037e-08, 0.500000417)
o71.BottomSurface = Enum.SurfaceType.Smooth
o71.TopSurface = Enum.SurfaceType.Smooth
o71.Color = Color3.new(0.792157, 0.796079, 0.819608)
o71.Color = Color3.new(0.792157, 0.796079, 0.819608)
o72.Parent = o1
o72.Material = Enum.Material.Metal
o72.BrickColor = BrickColor.new("Fossil")
o72.Size = Vector3.new(0.357203275, 0.237640575, 0.214618966)
o72.CFrame = CFrame.new(0.0243031736, -0.236712351, -1.03815937, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o72.BottomSurface = Enum.SurfaceType.Smooth
o72.TopSurface = Enum.SurfaceType.Smooth
o72.Color = Color3.new(0.623529, 0.631373, 0.67451)
o72.Color = Color3.new(0.623529, 0.631373, 0.67451)
o73.Parent = o1
o73.BrickColor = BrickColor.new("Brick yellow")
o73.Rotation = Vector3.new(-43.7700005, -17.4099998, 15.0200005)
o73.Size = Vector3.new(0.128652215, 0.477942973, 0.178183243)
o73.CFrame = CFrame.new(0.506683171, -0.232613936, -0.992123604, 0.921588004, -0.247348204, -0.299156249, 0.38705799, 0.643852174, 0.660030723, 0.0293550007, -0.724067211, 0.689104438)
o73.BottomSurface = Enum.SurfaceType.Smooth
o73.TopSurface = Enum.SurfaceType.Smooth
o73.Color = Color3.new(0.843137, 0.772549, 0.603922)
o73.Color = Color3.new(0.843137, 0.772549, 0.603922)
o74.Parent = o73
o74.MeshId = "rbxassetid://249768539"
o74.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o74.MeshType = Enum.MeshType.FileMesh
o74.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o75.Name = "blood"
o75.Parent = o73
o75.Texture = "http://www.roblox.com/asset/?id=931617584"
o76.Name = "blood"
o76.Parent = o73
o76.Texture = "http://www.roblox.com/asset/?id=931617584"
o77.Parent = o1
o77.Material = Enum.Material.Neon
o77.BrickColor = BrickColor.new("Really red")
o77.CanCollide = false
o77.Shape = Enum.PartType.Cylinder
o77.Size = Vector3.new(0.059471529, 0.711436391, 0.558872521)
o77.CFrame = CFrame.new(-0.683415115, 0.0643102676, -0.477482438, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o77.BottomSurface = Enum.SurfaceType.Smooth
o77.TopSurface = Enum.SurfaceType.Smooth
o77.Color = Color3.new(1, 0, 0)
o77.Color = Color3.new(1, 0, 0)
o78.Parent = o77
o78.Scale = Vector3.new(0.41219908, 1, 1)
o78.MeshType = Enum.MeshType.Cylinder
o78.Scale = Vector3.new(0.41219908, 1, 1)
o79.Parent = o1
o79.BrickColor = BrickColor.new("Brick yellow")
o79.Rotation = Vector3.new(25.8299999, 22.2700005, -155.080002)
o79.Size = Vector3.new(0.128652215, 0.477942973, 0.178183243)
o79.CFrame = CFrame.new(0.366325021, -0.167265296, -1.08495045, -0.83923012, 0.389950931, 0.378986955, -0.529039085, -0.746674716, -0.40323016, 0.125740021, -0.538901806, 0.832931161)
o79.BottomSurface = Enum.SurfaceType.Smooth
o79.TopSurface = Enum.SurfaceType.Smooth
o79.Color = Color3.new(0.843137, 0.772549, 0.603922)
o79.Color = Color3.new(0.843137, 0.772549, 0.603922)
o80.Parent = o79
o80.MeshId = "rbxassetid://249768539"
o80.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o80.MeshType = Enum.MeshType.FileMesh
o80.Scale = Vector3.new(0.106138043, 0.273385972, 0.13830106)
o81.Name = "blood"
o81.Parent = o79
o81.Texture = "http://www.roblox.com/asset/?id=931617584"
o82.Name = "blood"
o82.Parent = o79
o82.Texture = "http://www.roblox.com/asset/?id=931617584"
o83.Parent = o1
o83.Material = Enum.Material.Neon
o83.BrickColor = BrickColor.new("Really red")
o83.Size = Vector3.new(0.770103872, 1.18371618, 0.118820243)
o83.CFrame = CFrame.new(0.383739173, 0.0898411497, -0.528355241, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o83.BottomSurface = Enum.SurfaceType.Smooth
o83.TopSurface = Enum.SurfaceType.Smooth
o83.Color = Color3.new(1, 0, 0)
o83.Color = Color3.new(1, 0, 0)
o84.Parent = o1
o84.BrickColor = BrickColor.new("Brick yellow")
o84.Rotation = Vector3.new(31.8199997, 11.4099998, -175.460007)
o84.Size = Vector3.new(0.100213371, 0.372292936, 0.13879551)
o84.CFrame = CFrame.new(0.214828283, -0.260575622, -1.08495045, -0.977167606, 0.0776689127, 0.197765529, -0.171269104, -0.838780165, -0.516831517, 0.125740081, -0.538902104, 0.832930982)
o84.BottomSurface = Enum.SurfaceType.Smooth
o84.TopSurface = Enum.SurfaceType.Smooth
o84.Color = Color3.new(0.843137, 0.772549, 0.603922)
o84.Color = Color3.new(0.843137, 0.772549, 0.603922)
o85.Parent = o84
o85.MeshId = "rbxassetid://249768539"
o85.Scale = Vector3.new(0.0826760232, 0.212953508, 0.107729383)
o85.MeshType = Enum.MeshType.FileMesh
o85.Scale = Vector3.new(0.0826760232, 0.212953508, 0.107729383)
o86.Name = "blood"
o86.Parent = o84
o86.Texture = "http://www.roblox.com/asset/?id=931617584"
o87.Parent = o1
o87.Material = Enum.Material.Metal
o87.BrickColor = BrickColor.new("Fossil")
o87.Size = Vector3.new(0.356460899, 0.0928283259, 0.135900646)
o87.CFrame = CFrame.new(0.023933148, 0.0339448825, -1.02776814, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o87.BottomSurface = Enum.SurfaceType.Smooth
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0.623529, 0.631373, 0.67451)
o87.Color = Color3.new(0.623529, 0.631373, 0.67451)
o88.Parent = o1
o88.Material = fpep
o88.BrickColor = BrickColor.new("Really black")
o88.Transparency = 0.05
o88.Rotation = Vector3.new(-90, 17.1599998, -90)
o88.Size = Vector3.new(0.157436892, 0.0601527542, 0.112879165)
o88.CFrame = CFrame.new(-0.00621473789, 0.0810918212, -0.9887743, 0, 0.955504358, 0.294977129, 0, -0.294977129, 0.955504358, 1, 0, 0)
o88.BottomSurface = Enum.SurfaceType.Smooth
o88.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o88.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o89.Parent = o1
o89.Material = fpep
o89.BrickColor = BrickColor.new("Really black")
o89.Transparency = 0.05
o89.Rotation = Vector3.new(-90, -8.84000015, -90)
o89.Size = Vector3.new(0.149268016, 0.103967696, 0.291851997)
o89.CFrame = CFrame.new(-0.0412145257, -0.00533905625, -0.984700203, 0, 0.988127351, -0.153637066, 0, 0.153637066, 0.988127351, 1, 0, 0)
o89.BottomSurface = Enum.SurfaceType.Smooth
o89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o89.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o89.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o90.Name = "Wedge-to-Wedge Strong Joint"
o90.Parent = o89
o90.C0 = CFrame.new(0.0746340081, -0.0519838482, 0.145925999, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o90.C1 = CFrame.new(0.0686798096, 0.0158729553, 0.0748634338, 1, 0, 0, 0, 0.212438211, -0.97717464, 0, 0.97717464, 0.212438211)
o91.Parent = o1
o91.Material = Enum.Material.Metal
o91.BrickColor = BrickColor.new("Ghost grey")
o91.Rotation = Vector3.new(-90, 90, 0)
o91.Size = Vector3.new(0.285911173, 0.101739824, 0.22055997)
o91.CFrame = CFrame.new(-0.573515415, -0.238376036, -0.871816397, -3.38565981e-14, -2.38419489e-07, 1.00000024, -1, 0, 3.38565981e-14, 0, -1, 2.38419489e-07)
o91.BottomSurface = Enum.SurfaceType.Smooth
o91.Color = Color3.new(0.792157, 0.796079, 0.819608)
o91.Color = Color3.new(0.792157, 0.796079, 0.819608)
o92.Parent = o1
o92.Material = fpep
o92.BrickColor = BrickColor.new("Really black")
o92.Transparency = 0.05
o92.Rotation = Vector3.new(-90, -72.8799973, -90)
o92.Size = Vector3.new(0.174517289, 0.2828388, 0.0906003416)
o92.CFrame = CFrame.new(-0.0243304875, 0.385980308, -0.971325815, 0, 0.294352025, -0.955697119, 0, 0.955697119, 0.294351995, 1, 0, 0)
o92.BottomSurface = Enum.SurfaceType.Smooth
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o92.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o93.Parent = o1
o93.Material = fpep
o93.BrickColor = BrickColor.new("Really black")
o93.Transparency = 0.05
o93.Rotation = Vector3.new(-90, -67.9700012, -90)
o93.Size = Vector3.new(0.165605813, 0.0752626563, 0.216846809)
o93.CFrame = CFrame.new(0.124866307, 0.168994188, -0.992871284, 0, 0.375145912, -0.926965773, 0, 0.926965773, 0.375145912, 1, 0, 0)
o93.BottomSurface = Enum.SurfaceType.Smooth
o93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o93.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o93.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o94.Parent = o1
o94.Material = fpep
o94.BrickColor = BrickColor.new("Really black")
o94.Transparency = 0.05
o94.Rotation = Vector3.new(-90, 72.8799973, 90)
o94.Size = Vector3.new(0.174517289, 0.153723642, 0.0616379119)
o94.CFrame = CFrame.new(-0.0250527859, 0.339138269, -0.980977058, 0, -0.294352144, 0.955697238, 0, 0.955697238, 0.294352114, -1, 0, 0)
o94.BottomSurface = Enum.SurfaceType.Smooth
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o94.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o95.Parent = o1
o95.Material = fpep
o95.BrickColor = BrickColor.new("Really black")
o95.Transparency = 0.05
o95.Rotation = Vector3.new(90, -61.5499992, 90)
o95.Size = Vector3.new(0.165605813, 0.161149889, 0.0846593305)
o95.CFrame = CFrame.new(-0.159012213, 0.323048323, -0.965382516, 0, -0.476412833, -0.879221737, 0, 0.879221678, -0.476412863, 1, 0, 0)
o95.BottomSurface = Enum.SurfaceType.Smooth
o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o95.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o95.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o96.Parent = o1
o96.Material = Enum.Material.Metal
o96.BrickColor = BrickColor.new("Ghost grey")
o96.Size = Vector3.new(0.300763756, 0.0950562432, 0.1559515)
o96.CFrame = CFrame.new(-0.537125349, -0.0476641953, -0.737019002, 1.00000012, 1.13686838e-11, -7.62939453e-06, -4.20996571e-13, 1, 1.4304976e-06, 7.86781311e-06, -1.4304976e-06, 1)
o96.BottomSurface = Enum.SurfaceType.Smooth
o96.Color = Color3.new(0.792157, 0.796079, 0.819608)
o96.Color = Color3.new(0.792157, 0.796079, 0.819608)
o97.Parent = o1
o97.Material = fpep
o97.BrickColor = BrickColor.new("Really black")
o97.Transparency = 0.05
o97.Rotation = Vector3.new(-90, -78.4300003, -90)
o97.Size = Vector3.new(0.165605813, 0.0735200197, 0.126989067)
o97.CFrame = CFrame.new(0.115863681, 0.116609931, -0.992871284, 0, 0.20053108, -0.979687333, 0, 0.979687333, 0.20053108, 1, 0, 0)
o97.BottomSurface = Enum.SurfaceType.Smooth
o97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o97.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o97.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o98.Parent = o1
o98.Material = fpep
o98.BrickColor = BrickColor.new("Really black")
o98.Transparency = 0.05
o98.Rotation = Vector3.new(-90, -84.3600006, -90)
o98.CanCollide = false
o98.Size = Vector3.new(0.165605813, 0.161149889, 0.059471529)
o98.CFrame = CFrame.new(-0.101723105, 0.361626327, -0.966862619, 0, 0.0982540399, -0.995161355, 0, 0.995161355, 0.0982540399, 1, 0, 0)
o98.BottomSurface = Enum.SurfaceType.Smooth
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o98.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o99.Parent = o98
o99.Scale = Vector3.new(1, 1, 0.674301445)
o99.MeshType = Enum.MeshType.Wedge
o99.Scale = Vector3.new(1, 1, 0.674301445)
o100.Parent = o1
o100.Material = fpep
o100.BrickColor = BrickColor.new("Really black")
o100.Transparency = 0.05
o100.Rotation = Vector3.new(90, 54.4000015, 90)
o100.Size = Vector3.new(0.165605813, 0.116592333, 0.080946207)
o100.CFrame = CFrame.new(-0.240764484, 0.175418526, -0.945331454, 0, -0.582161963, 0.81307286, 0, -0.81307286, -0.582161963, 1, 0, 0)
o100.BottomSurface = Enum.SurfaceType.Smooth
o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o100.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o100.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o101.Parent = o1
o101.Material = fpep
o101.BrickColor = BrickColor.new("Really black")
o101.Transparency = 0.05
o101.Rotation = Vector3.new(90, -28.0400009, 90)
o101.Size = Vector3.new(0.165605813, 0.176002398, 0.0846593305)
o101.CFrame = CFrame.new(-0.22969088, 0.269799948, -0.966862619, 0, -0.882599473, -0.470125735, 0, 0.470125735, -0.882599473, 1, 0, 0)
o101.BottomSurface = Enum.SurfaceType.Smooth
o101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o101.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o101.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o102.Parent = o1
o102.Material = fpep
o102.BrickColor = BrickColor.new("Really black")
o102.Transparency = 0.05
o102.Rotation = Vector3.new(-90, 30.7900009, -90)
o102.Size = Vector3.new(0.165605813, 0.0750052631, 0.130702227)
o102.CFrame = CFrame.new(-0.197776899, 0.0616458952, -0.945331454, 0, 0.859018207, 0.511945128, 0, -0.511945128, 0.859018207, 1, 0, 0)
o102.BottomSurface = Enum.SurfaceType.Smooth
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o102.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o103.Parent = o1
o103.Material = fpep
o103.BrickColor = BrickColor.new("Really black")
o103.Transparency = 0.05
o103.Rotation = Vector3.new(90, -42.1800003, -90)
o103.Size = Vector3.new(0.165605813, 0.108372524, 0.13000001)
o103.CFrame = CFrame.new(0.0904573202, 0.370433152, -0.992871284, 0, 0.741073787, -0.671423733, 0, -0.671423733, -0.741073787, -1, 0, 0)
o103.BottomSurface = Enum.SurfaceType.Smooth
o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o103.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o103.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o104.Parent = o1
o104.Material = fpep
o104.BrickColor = BrickColor.new("Really black")
o104.Transparency = 0.05
o104.Rotation = Vector3.new(90, -45, 90)
o104.Size = Vector3.new(0.165605813, 0.113621846, 0.164863035)
o104.CFrame = CFrame.new(0.131686449, 0.26934725, -0.992871284, 0, -0.707106829, -0.707106829, 0, 0.707106829, -0.707106829, 1, 0, 0)
o104.BottomSurface = Enum.SurfaceType.Smooth
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o105.Parent = o1
o105.Material = fpep
o105.BrickColor = BrickColor.new("Really black")
o105.Transparency = 0.05
o105.Rotation = Vector3.new(-90, -27.6000004, -90)
o105.Size = Vector3.new(0.157436892, 0.0601527542, 0.196795896)
o105.CFrame = CFrame.new(0.0456733108, 0.0302324891, -0.9887743, 0, 0.886172771, -0.463354886, 0, 0.463354886, 0.886172771, 1, 0, 0)
o105.BottomSurface = Enum.SurfaceType.Smooth
o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o106.Parent = o1
o106.Material = Enum.Material.Metal
o106.BrickColor = BrickColor.new("Fossil")
o106.CanCollide = false
o106.Size = Vector3.new(0.356460899, 0.10990876, 0.059471529)
o106.CFrame = CFrame.new(0.023933148, -0.0651974902, -1.11911488, 1.00000012, 0, 0, 0, 1.00000012, 0, 0, 0, 1)
o106.BottomSurface = Enum.SurfaceType.Smooth
o106.Color = Color3.new(0.623529, 0.631373, 0.67451)
o106.Color = Color3.new(0.623529, 0.631373, 0.67451)
o107.Parent = o106
o107.Scale = Vector3.new(1, 1, 0.886584342)
o107.MeshType = Enum.MeshType.Wedge
o107.Scale = Vector3.new(1, 1, 0.886584342)
o108.Parent = o1
o108.Material = Enum.Material.Metal
o108.BrickColor = BrickColor.new("Ghost grey")
o108.Rotation = Vector3.new(-30, 0, 0)
o108.Size = Vector3.new(0.297050536, 0.118820287, 0.177487642)
o108.CFrame = CFrame.new(-0.535267591, -0.00101759285, -0.773991108, 1.00000048, 3.85935755e-06, -6.68459643e-06, 9.84817561e-14, 0.866025329, 0.499999911, 7.71870782e-06, -0.500000596, 0.866025746)
o108.BottomSurface = Enum.SurfaceType.Smooth
o108.Color = Color3.new(0.792157, 0.796079, 0.819608)
o108.Color = Color3.new(0.792157, 0.796079, 0.819608)
o109.Parent = o1
o109.Material = fpep
o109.BrickColor = BrickColor.new("Really black")
o109.Transparency = 0.05
o109.Rotation = Vector3.new(90, 38.4300003, 90)
o109.Size = Vector3.new(0.165605813, 0.161149889, 0.0616379231)
o109.CFrame = CFrame.new(-0.272157997, 0.196692258, -0.945331454, 0, -0.78332299, 0.621614993, 0, -0.621614993, -0.78332299, 1, 0, 0)
o109.BottomSurface = Enum.SurfaceType.Smooth
o109.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o109.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o110.Parent = o1
o110.Material = fpep
o110.BrickColor = BrickColor.new("Really black")
o110.Transparency = 0.05
o110.Rotation = Vector3.new(-90, -21.1000004, -90)
o110.Size = Vector3.new(0.137386024, 0.08015275, 0.206745058)
o110.CFrame = CFrame.new(-0.102855384, 0.0553103089, -0.978745997, 0, 0.932934642, -0.360046268, 0, 0.360046268, 0.932934642, 1, 0, 0)
o110.BottomSurface = Enum.SurfaceType.Smooth
o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o110.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o110.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o111.Parent = o1
o111.Material = Enum.Material.Metal
o111.BrickColor = BrickColor.new("Fossil")
o111.Rotation = Vector3.new(0, 0, -180)
o111.Size = Vector3.new(0.356460899, 0.0653511658, 0.142584249)
o111.CFrame = CFrame.new(0.0239369627, -0.538250864, -1.02070332, -0.999999523, 0, 0, 0, -0.999999523, 0, 0, 0, 1)
o111.BottomSurface = Enum.SurfaceType.Smooth
o111.Color = Color3.new(0.623529, 0.631373, 0.67451)
o111.Color = Color3.new(0.623529, 0.631373, 0.67451)
o112.Parent = o1
o112.Material = fpep
o112.BrickColor = BrickColor.new("Really black")
o112.Transparency = 0.05
o112.Rotation = Vector3.new(-90, -16.5300007, -90)
o112.Size = Vector3.new(0.165605813, 0.0601527542, 0.16040726)
o112.CFrame = CFrame.new(0.0622518659, 0.112485349, -0.992871284, 0, 0.958649635, -0.284588933, 0, 0.284588903, 0.958649635, 1, 0, 0)
o112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o112.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o112.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o113.Parent = o1
o113.Material = fpep
o113.BrickColor = BrickColor.new("Really black")
o113.Transparency = 0.05
o113.Rotation = Vector3.new(90, -9.43999958, 90)
o113.Size = Vector3.new(0.165605813, 0.0750052631, 0.130702227)
o113.CFrame = CFrame.new(0.0658487082, 0.297803938, -0.992871284, 0, -0.986458242, -0.164013043, 0, 0.164013043, -0.986458242, 1, 0, 0)
o113.BottomSurface = Enum.SurfaceType.Smooth
o113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o113.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o113.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o114.Parent = o1
o114.Material = Enum.Material.Metal
o114.BrickColor = BrickColor.new("Fossil")
o114.Rotation = Vector3.new(0, 0, -180)
o114.CanCollide = false
o114.Size = Vector3.new(0.356460899, 0.151495874, 0.059471529)
o114.CFrame = CFrame.new(0.023933148, -0.430568457, -1.11911488, -0.999999642, 0, 0, 0, -0.999999642, 0, 0, 0, 1)
o114.BottomSurface = Enum.SurfaceType.Smooth
o114.Color = Color3.new(0.623529, 0.631373, 0.67451)
o114.Color = Color3.new(0.623529, 0.631373, 0.67451)
o115.Parent = o114
o115.Scale = Vector3.new(1, 1, 0.886584342)
o115.MeshType = Enum.MeshType.Wedge
o115.Scale = Vector3.new(1, 1, 0.886584342)
o116.Parent = o1
o116.Material = fpep
o116.BrickColor = BrickColor.new("Really black")
o116.Transparency = 0.05
o116.Rotation = Vector3.new(-90, 66.2099991, -90)
o116.Size = Vector3.new(0.165605813, 0.116592333, 0.119562767)
o116.CFrame = CFrame.new(-0.202721938, 0.119360954, -0.945331454, 0, 0.403386027, 0.915030122, 0, -0.915029883, 0.403386027, 1, 0, 0)
o116.BottomSurface = Enum.SurfaceType.Smooth
o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o116.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o116.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o117.Parent = o1
o117.Material = Enum.Material.Metal
o117.BrickColor = BrickColor.new("Ghost grey")
o117.Rotation = Vector3.new(180, 90, 0)
o117.Size = Vector3.new(0.33863768, 0.0995119661, 0.16931878)
o117.CFrame = CFrame.new(-0.234127373, -0.42611286, -0.927502573, 0, 0, 1, 0, -1, 0, 1, 0, -0)
o117.BottomSurface = Enum.SurfaceType.Smooth
o117.Color = Color3.new(0.792157, 0.796079, 0.819608)
o117.Color = Color3.new(0.792157, 0.796079, 0.819608)
o118.Parent = o1
o118.Material = fpep
o118.BrickColor = BrickColor.new("Really black")
o118.Transparency = 0.05
o118.Rotation = Vector3.new(90, 9.43999958, -90)
o118.Size = Vector3.new(0.165605813, 0.0883725286, 0.223530427)
o118.CFrame = CFrame.new(0.051646471, 0.342491269, -0.992871284, 0, 0.986458242, 0.164013043, 0, 0.164013043, -0.986458242, -1, 0, 0)
o118.BottomSurface = Enum.SurfaceType.Smooth
o118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o118.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o118.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o119.Parent = o1
o119.Material = Enum.Material.Metal
o119.BrickColor = BrickColor.new("Ghost grey")
o119.Rotation = Vector3.new(90, 89.9700012, 90)
o119.Size = Vector3.new(0.336409777, 0.0928283259, 0.171546638)
o119.CFrame = CFrame.new(-0.235241264, -0.0574007295, -0.92640394, 0, -5.96046448e-08, 0.999999821, 0, 0.99999994, -5.96046448e-08, -0.999999762, 0, 0)
o119.BottomSurface = Enum.SurfaceType.Smooth
o119.Color = Color3.new(0.792157, 0.796079, 0.819608)
o119.Color = Color3.new(0.792157, 0.796079, 0.819608)
o120.Parent = o1
o120.Material = Enum.Material.Metal
o120.BrickColor = BrickColor.new("Pearl")
o120.Rotation = Vector3.new(-180, -50, -180)
o120.Shape = Enum.PartType.Cylinder
o120.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o120.CFrame = CFrame.new(-0.634789228, -0.230940714, -1.26740718, -0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, -0.64278698)
o120.BottomSurface = Enum.SurfaceType.Smooth
o120.TopSurface = Enum.SurfaceType.Smooth
o120.Color = Color3.new(0.905882, 0.905882, 0.92549)
o120.Color = Color3.new(0.905882, 0.905882, 0.92549)
o121.Parent = o1
o121.Material = Enum.Material.Metal
o121.BrickColor = BrickColor.new("Pearl")
o121.Rotation = Vector3.new(-180, -60, -180)
o121.Shape = Enum.PartType.Cylinder
o121.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o121.CFrame = CFrame.new(-0.681915939, -0.230940714, -1.20194697, -0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, -0.499998987)
o121.BottomSurface = Enum.SurfaceType.Smooth
o121.TopSurface = Enum.SurfaceType.Smooth
o121.Color = Color3.new(0.905882, 0.905882, 0.92549)
o121.Color = Color3.new(0.905882, 0.905882, 0.92549)
o122.Parent = o1
o122.Material = Enum.Material.Metal
o122.BrickColor = BrickColor.new("Pearl")
o122.Rotation = Vector3.new(-180, -40, -180)
o122.Shape = Enum.PartType.Cylinder
o122.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o122.CFrame = CFrame.new(-0.613800764, -0.230940714, -1.2910583, -0.76604414, 0, -0.642788053, 0, 1, 0, 0.642788053, 0, -0.76604414)
o122.BottomSurface = Enum.SurfaceType.Smooth
o122.TopSurface = Enum.SurfaceType.Smooth
o122.Color = Color3.new(0.905882, 0.905882, 0.92549)
o122.Color = Color3.new(0.905882, 0.905882, 0.92549)
o123.Parent = o1
o123.Material = Enum.Material.Metal
o123.BrickColor = BrickColor.new("Pearl")
o123.Rotation = Vector3.new(-180, -50, -180)
o123.Shape = Enum.PartType.Cylinder
o123.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o123.CFrame = CFrame.new(-0.649567366, -0.230940714, -1.24152064, -0.64278698, 0, -0.766044974, 0, 1, 0, 0.766044974, 0, -0.64278698)
o123.BottomSurface = Enum.SurfaceType.Smooth
o123.TopSurface = Enum.SurfaceType.Smooth
o123.Color = Color3.new(0.905882, 0.905882, 0.92549)
o123.Color = Color3.new(0.905882, 0.905882, 0.92549)
o124.Parent = o1
o124.Material = Enum.Material.Metal
o124.BrickColor = BrickColor.new("Pearl")
o124.Rotation = Vector3.new(-180, -60, -180)
o124.Shape = Enum.PartType.Cylinder
o124.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o124.CFrame = CFrame.new(-0.666130722, -0.230940714, -1.21458125, -0.499998987, 0, -0.866025984, 0, 1, 0, 0.866025984, 0, -0.499998987)
o124.BottomSurface = Enum.SurfaceType.Smooth
o124.TopSurface = Enum.SurfaceType.Smooth
o124.Color = Color3.new(0.905882, 0.905882, 0.92549)
o124.Color = Color3.new(0.905882, 0.905882, 0.92549)
o125.Parent = o1
o125.Material = Enum.Material.Metal
o125.BrickColor = BrickColor.new("Pearl")
o125.Rotation = Vector3.new(-180, -70, -180)
o125.Shape = Enum.PartType.Cylinder
o125.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o125.CFrame = CFrame.new(-0.693550766, -0.230940714, -1.17254329, -0.342019022, 0, -0.939693093, 0, 1, 0, 0.939693093, 0, -0.342018992)
o125.BottomSurface = Enum.SurfaceType.Smooth
o125.TopSurface = Enum.SurfaceType.Smooth
o125.Color = Color3.new(0.905882, 0.905882, 0.92549)
o125.Color = Color3.new(0.905882, 0.905882, 0.92549)
o126.Parent = o1
o126.Material = Enum.Material.Metal
o126.BrickColor = BrickColor.new("Pearl")
o126.Rotation = Vector3.new(-180, -80, -180)
o126.Shape = Enum.PartType.Cylinder
o126.Size = Vector3.new(0.179999903, 0.190000325, 0.30000028)
o126.CFrame = CFrame.new(-0.730774641, -0.230940714, -0.992558479, -0.173647001, 0, -0.984808028, 0, 1, 0, 0.984808028, 0, -0.173647001)
o126.BottomSurface = Enum.SurfaceType.Smooth
o126.TopSurface = Enum.SurfaceType.Smooth
o126.Color = Color3.new(0.905882, 0.905882, 0.92549)
o126.Color = Color3.new(0.905882, 0.905882, 0.92549)
o127.Parent = o1
o127.Material = Enum.Material.Metal
o127.BrickColor = BrickColor.new("Pearl")
o127.Rotation = Vector3.new(-180, -80, -180)
o127.Shape = Enum.PartType.Cylinder
o127.Size = Vector3.new(0.11999999, 0.190000325, 0.30000028)
o127.CFrame = CFrame.new(-0.703530073, -0.230940714, -1.12078571, -0.173647001, 0, -0.984808028, 0, 1, 0, 0.984808028, 0, -0.173647001)
o127.BottomSurface = Enum.SurfaceType.Smooth
o127.TopSurface = Enum.SurfaceType.Smooth
o127.Color = Color3.new(0.905882, 0.905882, 0.92549)
o127.Color = Color3.new(0.905882, 0.905882, 0.92549)
o128.Parent = o1
o128.Material = Enum.Material.Metal
o128.BrickColor = BrickColor.new("Pearl")
o128.Rotation = Vector3.new(-180, 20, -180)
o128.Shape = Enum.PartType.Cylinder
o128.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o128.CFrame = CFrame.new(-0.193169042, -0.230940714, -1.41640925, -0.939692378, 0, 0.342021108, 0, 1, 0, -0.342021108, 0, -0.939692378)
o128.BottomSurface = Enum.SurfaceType.Smooth
o128.TopSurface = Enum.SurfaceType.Smooth
o128.Color = Color3.new(0.905882, 0.905882, 0.92549)
o128.Color = Color3.new(0.905882, 0.905882, 0.92549)
o129.Parent = o1
o129.Material = Enum.Material.Metal
o129.BrickColor = BrickColor.new("Pearl")
o129.Rotation = Vector3.new(-180, 10, -180)
o129.Shape = Enum.PartType.Cylinder
o129.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o129.CFrame = CFrame.new(-0.239326805, -0.230940714, -1.43610835, -0.984807789, 0, 0.173647955, 0, 1, 0, -0.173647955, 0, -0.984807789)
o129.BottomSurface = Enum.SurfaceType.Smooth
o129.TopSurface = Enum.SurfaceType.Smooth
o129.Color = Color3.new(0.905882, 0.905882, 0.92549)
o129.Color = Color3.new(0.905882, 0.905882, 0.92549)
o130.Parent = o1
o130.Material = Enum.Material.Metal
o130.BrickColor = BrickColor.new("Pearl")
o130.Rotation = Vector3.new(-180, 30, -180)
o130.Shape = Enum.PartType.Cylinder
o130.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o130.CFrame = CFrame.new(-0.163753912, -0.230940714, -1.40477443, -0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, -0.866025388)
o130.BottomSurface = Enum.SurfaceType.Smooth
o130.TopSurface = Enum.SurfaceType.Smooth
o130.Color = Color3.new(0.905882, 0.905882, 0.92549)
o130.Color = Color3.new(0.905882, 0.905882, 0.92549)
o131.Parent = o1
o131.Material = Enum.Material.Metal
o131.BrickColor = BrickColor.new("Pearl")
o131.Rotation = Vector3.new(-180, 30, -180)
o131.Shape = Enum.PartType.Cylinder
o131.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o131.CFrame = CFrame.new(-0.135700628, -0.230940714, -1.39470363, -0.866025388, 0, 0.500000238, 0, 1, 0, -0.500000238, 0, -0.866025388)
o131.BottomSurface = Enum.SurfaceType.Smooth
o131.TopSurface = Enum.SurfaceType.Smooth
o131.Color = Color3.new(0.905882, 0.905882, 0.92549)
o131.Color = Color3.new(0.905882, 0.905882, 0.92549)
o132.Parent = o1
o132.Material = Enum.Material.Metal
o132.BrickColor = BrickColor.new("Pearl")
o132.Rotation = Vector3.new(-180, 40, -180)
o132.Shape = Enum.PartType.Cylinder
o132.Size = Vector3.new(0.150000006, 0.190000325, 0.30000028)
o132.CFrame = CFrame.new(-0.0704807341, -0.230940714, -1.34601283, -0.766044974, 0, 0.64278698, 0, 1, 0, -0.64278698, 0, -0.766044974)
o132.BottomSurface = Enum.SurfaceType.Smooth
o132.TopSurface = Enum.SurfaceType.Smooth
o132.Color = Color3.new(0.905882, 0.905882, 0.92549)
o132.Color = Color3.new(0.905882, 0.905882, 0.92549)
o133.Parent = o1
o133.Material = Enum.Material.Metal
o133.BrickColor = BrickColor.new("Pearl")
o133.Rotation = Vector3.new(-180, 20, -180)
o133.Shape = Enum.PartType.Cylinder
o133.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o133.CFrame = CFrame.new(-0.208355337, -0.230940714, -1.42976832, -0.939693093, 0, 0.342018992, 0, 1, 0, -0.342019022, 0, -0.939693093)
o133.BottomSurface = Enum.SurfaceType.Smooth
o133.TopSurface = Enum.SurfaceType.Smooth
o133.Color = Color3.new(0.905882, 0.905882, 0.92549)
o133.Color = Color3.new(0.905882, 0.905882, 0.92549)
o134.Parent = o1
o134.Material = Enum.Material.Metal
o134.BrickColor = BrickColor.new("Pearl")
o134.Rotation = Vector3.new(0, 89.9100037, 0)
o134.Shape = Enum.PartType.Cylinder
o134.Size = Vector3.new(0.0500000007, 0.190000325, 0.30000028)
o134.CFrame = CFrame.new(0.029994702, -0.230940238, -1.14501667, 0, 0, 0.999998689, 0, 0.999999762, 0, -0.999998927, 0, 0)
o134.BottomSurface = Enum.SurfaceType.Smooth
o134.TopSurface = Enum.SurfaceType.Smooth
o134.Color = Color3.new(0.905882, 0.905882, 0.92549)
o134.Color = Color3.new(0.905882, 0.905882, 0.92549)
mas.Parent = Torso
mas:MakeJoints()

headlocation = Instance.new("Part",Torso)
headlocation.Size = Vector3.new(1,1,1)
headlocation.Anchored = false
headlocation.CanCollide = false
headlocation.Transparency = 1
headlocation.CFrame = Head.CFrame
headlocationweld = weldBetween(headlocation,Head) headlocationweld.C0 = CFrame.new(.15,0,-.28)

local parts,last = {}
local function scan(mas)
	for _,v in pairs(mas:GetChildren()) do
		if (v:IsA("BasePart")) then
			if (last) then
				local w = Instance.new("Weld")
				w.Name = ("%s_Weld"):format(v.Name)
				w.Part0,w.Part1 = last,headlocation
				w.C0 = last.CFrame:inverse()
				w.Parent = last
			end
			last = v
			table.insert(parts,v)
		end
		scan(v)
	end
end
scan(mas)
for _,v in pairs(parts) do
	v.CanCollide = false
	v.Anchored = false
	v.Parent = Torso
	v.Locked = true
end

mas = Instance.new("Model",Torso) 
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Decal")
o5 = Instance.new("Decal")
o6 = Instance.new("Part")
o7 = Instance.new("SpecialMesh")
o8 = Instance.new("Decal")
o9 = Instance.new("Decal")
o10 = Instance.new("Part")
o11 = Instance.new("SpecialMesh")
o12 = Instance.new("Decal")
o13 = Instance.new("Decal")
o14 = Instance.new("Part")
o15 = Instance.new("SpecialMesh")
o16 = Instance.new("Decal")
o17 = Instance.new("Decal")
o18 = Instance.new("Part")
o19 = Instance.new("SpecialMesh")
o20 = Instance.new("Decal")
o21 = Instance.new("Decal")
o22 = Instance.new("Part")
o23 = Instance.new("SpecialMesh")
o24 = Instance.new("Decal")
o25 = Instance.new("Decal")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Decal")
o29 = Instance.new("Decal")
o30 = Instance.new("Part")
o31 = Instance.new("SpecialMesh")
o32 = Instance.new("Decal")
o33 = Instance.new("Decal")
o34 = Instance.new("Part")
o35 = Instance.new("SpecialMesh")
o36 = Instance.new("Decal")
o37 = Instance.new("Decal")
o38 = Instance.new("Part")
o39 = Instance.new("SpecialMesh")
o40 = Instance.new("Decal")
o41 = Instance.new("Decal")
o42 = Instance.new("Part")
o43 = Instance.new("SpecialMesh")
o44 = Instance.new("Decal")
o45 = Instance.new("Decal")
o46 = Instance.new("WedgePart")
o47 = Instance.new("WedgePart")
o48 = Instance.new("WedgePart")
o49 = Instance.new("WedgePart")
o50 = Instance.new("WedgePart")
o51 = Instance.new("WedgePart")
o52 = Instance.new("WedgePart")
o53 = Instance.new("WedgePart")
o54 = Instance.new("WedgePart")
o55 = Instance.new("WedgePart")
o56 = Instance.new("WedgePart")
o57 = Instance.new("WedgePart")
o58 = Instance.new("WedgePart")
o59 = Instance.new("WedgePart")
o60 = Instance.new("WedgePart")
o61 = Instance.new("WedgePart")
o62 = Instance.new("WedgePart")
o63 = Instance.new("WedgePart")
o64 = Instance.new("WedgePart")
o65 = Instance.new("WedgePart")
o66 = Instance.new("ManualWeld")
o67 = Instance.new("WedgePart")
o68 = Instance.new("WedgePart")
o69 = Instance.new("WedgePart")
o70 = Instance.new("WedgePart")
o71 = Instance.new("WedgePart")
o72 = Instance.new("WedgePart")
o73 = Instance.new("WedgePart")
o74 = Instance.new("WedgePart")
o75 = Instance.new("Part")
o76 = Instance.new("SpecialMesh")
o77 = Instance.new("Decal")
o78 = Instance.new("Decal")
o1.Parent = mas
o2.Parent = o1
o2.BrickColor = BrickColor.new("Brick yellow")
o2.Rotation = Vector3.new(-32.1399994, -71.3899994, 62.3400002)
o2.CanCollide = false
o2.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o2.CFrame = CFrame.new(0.288165987, 0.233504996, -0.203161001, 0.148169845, -0.282718629, -0.94769603, 0.984039664, -0.0534129813, 0.169790596, -0.0986218676, -0.957721233, 0.270290673)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(0.843137, 0.772549, 0.603922)
o2.Color = Color3.new(0.843137, 0.772549, 0.603922)
o3.Parent = o2
o3.MeshId = "rbxassetid://249768539"
o3.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o3.MeshType = Enum.MeshType.FileMesh
o3.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o4.Name = "blood"
o4.Parent = o2
o4.Texture = "http://www.roblox.com/asset/?id=931617584"
o5.Name = "blood"
o5.Parent = o2
o5.Texture = "http://www.roblox.com/asset/?id=931617584"
o6.Parent = o1
o6.BrickColor = BrickColor.new("Brick yellow")
o6.Rotation = Vector3.new(2.97000003, 56.2400017, -109.599998)
o6.CanCollide = false
o6.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o6.CFrame = CFrame.new(0.154969007, 0.0694729984, -0.321128994, -0.186450347, 0.523485303, 0.831391275, -0.955221534, -0.294515073, -0.0287843943, 0.229787737, -0.799524188, 0.554952383)
o6.BottomSurface = Enum.SurfaceType.Smooth
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.843137, 0.772549, 0.603922)
o6.Color = Color3.new(0.843137, 0.772549, 0.603922)
o7.Parent = o6
o7.MeshId = "rbxassetid://249768539"
o7.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o7.MeshType = Enum.MeshType.FileMesh
o7.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o8.Name = "blood"
o8.Parent = o6
o8.Texture = "http://www.roblox.com/asset/?id=931617584"
o9.Name = "blood"
o9.Parent = o6
o9.Texture = "http://www.roblox.com/asset/?id=931617584"
o10.Parent = o1
o10.BrickColor = BrickColor.new("Brick yellow")
o10.Rotation = Vector3.new(-52.8800011, -49.2999992, 0.280000001)
o10.CanCollide = false
o10.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o10.CFrame = CFrame.new(0.214535996, -0.572005987, -0.230968997, 0.652161717, -0.00322008133, -0.758081019, 0.607437193, 0.600512028, 0.520020366, 0.453558415, -0.799618185, 0.3935844)
o10.BottomSurface = Enum.SurfaceType.Smooth
o10.TopSurface = Enum.SurfaceType.Smooth
o10.Color = Color3.new(0.843137, 0.772549, 0.603922)
o10.Color = Color3.new(0.843137, 0.772549, 0.603922)
o11.Parent = o10
o11.MeshId = "rbxassetid://249768539"
o11.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o11.MeshType = Enum.MeshType.FileMesh
o11.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o12.Name = "blood"
o12.Parent = o10
o12.Texture = "http://www.roblox.com/asset/?id=931617584"
o13.Name = "blood"
o13.Parent = o10
o13.Texture = "http://www.roblox.com/asset/?id=931617584"
o14.Parent = o1
o14.BrickColor = BrickColor.new("Brick yellow")
o14.Rotation = Vector3.new(-53.0299988, -19.4500008, 0.200000003)
o14.CanCollide = false
o14.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o14.CFrame = CFrame.new(0.132192999, -0.600040972, -0.251677006, 0.942952752, -0.00324210525, -0.332928777, 0.268053234, 0.600496531, 0.753370702, 0.197477937, -0.799629867, 0.567104816)
o14.BottomSurface = Enum.SurfaceType.Smooth
o14.TopSurface = Enum.SurfaceType.Smooth
o14.Color = Color3.new(0.843137, 0.772549, 0.603922)
o14.Color = Color3.new(0.843137, 0.772549, 0.603922)
o15.Parent = o14
o15.MeshId = "rbxassetid://249768539"
o15.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o15.MeshType = Enum.MeshType.FileMesh
o15.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o16.Name = "blood"
o16.Parent = o14
o16.Texture = "http://www.roblox.com/asset/?id=931617584"
o17.Name = "blood"
o17.Parent = o14
o17.Texture = "http://www.roblox.com/asset/?id=931617584"
o18.Parent = o1
o18.BrickColor = BrickColor.new("Brick yellow")
o18.Rotation = Vector3.new(30.4400005, 42.5800018, -145.919998)
o18.CanCollide = false
o18.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o18.CFrame = CFrame.new(0.0076009999, -0.116474003, -0.332437992, -0.609825969, 0.412648767, 0.676642597, -0.767095804, -0.521927834, -0.373056829, 0.199216306, -0.746544063, 0.634821415)
o18.BottomSurface = Enum.SurfaceType.Smooth
o18.TopSurface = Enum.SurfaceType.Smooth
o18.Color = Color3.new(0.843137, 0.772549, 0.603922)
o18.Color = Color3.new(0.843137, 0.772549, 0.603922)
o19.Parent = o18
o19.MeshId = "rbxassetid://249768539"
o19.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o19.MeshType = Enum.MeshType.FileMesh
o19.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o20.Name = "blood"
o20.Parent = o18
o20.Texture = "http://www.roblox.com/asset/?id=931617584"
o21.Name = "blood"
o21.Parent = o18
o21.Texture = "http://www.roblox.com/asset/?id=931617584"
o22.Parent = o1
o22.BrickColor = BrickColor.new("Brick yellow")
o22.Rotation = Vector3.new(47.7099991, 15.7299995, -170.910004)
o22.CanCollide = false
o22.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o22.CFrame = CFrame.new(-0.0523650013, -0.234758005, -0.331945986, -0.950449705, 0.15210861, 0.271146238, -0.304389536, -0.632757545, -0.712025821, 0.0632647946, -0.759273231, 0.647699773)
o22.BottomSurface = Enum.SurfaceType.Smooth
o22.TopSurface = Enum.SurfaceType.Smooth
o22.Color = Color3.new(0.843137, 0.772549, 0.603922)
o22.Color = Color3.new(0.843137, 0.772549, 0.603922)
o23.Parent = o22
o23.MeshId = "rbxassetid://249768539"
o23.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o23.MeshType = Enum.MeshType.FileMesh
o23.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o24.Name = "blood"
o24.Parent = o22
o24.Texture = "http://www.roblox.com/asset/?id=931617584"
o25.Name = "blood"
o25.Parent = o22
o25.Texture = "http://www.roblox.com/asset/?id=931617584"
o26.Parent = o1
o26.BrickColor = BrickColor.new("Brick yellow")
o26.Rotation = Vector3.new(-74.0199966, -47.3800011, -15.6000004)
o26.CanCollide = false
o26.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o26.CFrame = CFrame.new(0.335884988, -0.412057012, -0.19585, 0.652163386, 0.182035729, -0.735906243, 0.607434809, 0.455313295, 0.650944352, 0.45355913, -0.87153095, 0.186362624)
o26.BottomSurface = Enum.SurfaceType.Smooth
o26.TopSurface = Enum.SurfaceType.Smooth
o26.Color = Color3.new(0.843137, 0.772549, 0.603922)
o26.Color = Color3.new(0.843137, 0.772549, 0.603922)
o27.Parent = o26
o27.MeshId = "rbxassetid://249768539"
o27.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o27.MeshType = Enum.MeshType.FileMesh
o27.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o28.Name = "blood"
o28.Parent = o26
o28.Texture = "http://www.roblox.com/asset/?id=931617584"
o29.Name = "blood"
o29.Parent = o26
o29.Texture = "http://www.roblox.com/asset/?id=931617584"
o30.Parent = o1
o30.BrickColor = BrickColor.new("Brick yellow")
o30.Rotation = Vector3.new(-51.3600006, -59.8699989, 4.25)
o30.CanCollide = false
o30.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o30.CFrame = CFrame.new(0.321060002, -0.356105, -0.149893999, 0.500637174, -0.0371985435, -0.864864647, 0.719944894, 0.572655916, 0.392122924, 0.480679452, -0.818960249, 0.313471794)
o30.BottomSurface = Enum.SurfaceType.Smooth
o30.TopSurface = Enum.SurfaceType.Smooth
o30.Color = Color3.new(0.843137, 0.772549, 0.603922)
o30.Color = Color3.new(0.843137, 0.772549, 0.603922)
o31.Parent = o30
o31.MeshId = "rbxassetid://249768539"
o31.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o31.MeshType = Enum.MeshType.FileMesh
o31.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o32.Name = "blood"
o32.Parent = o30
o32.Texture = "http://www.roblox.com/asset/?id=931617584"
o33.Name = "blood"
o33.Parent = o30
o33.Texture = "http://www.roblox.com/asset/?id=931617584"
o34.Parent = o1
o34.BrickColor = BrickColor.new("Brick yellow")
o34.Rotation = Vector3.new(36.2299995, 31.3199997, -146.970001)
o34.CanCollide = false
o34.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o34.CFrame = CFrame.new(0.0942300037, 0.010338, -0.318636, -0.716210067, 0.465674877, 0.519809842, -0.697274446, -0.508806169, -0.50491631, 0.0293560196, -0.724071145, 0.689110041)
o34.BottomSurface = Enum.SurfaceType.Smooth
o34.TopSurface = Enum.SurfaceType.Smooth
o34.Color = Color3.new(0.843137, 0.772549, 0.603922)
o34.Color = Color3.new(0.843137, 0.772549, 0.603922)
o35.Parent = o34
o35.MeshId = "rbxassetid://249768539"
o35.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o35.MeshType = Enum.MeshType.FileMesh
o35.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o36.Name = "blood"
o36.Parent = o34
o36.Texture = "http://www.roblox.com/asset/?id=931617584"
o37.Name = "blood"
o37.Parent = o34
o37.Texture = "http://www.roblox.com/asset/?id=931617584"
o38.Parent = o1
o38.BrickColor = BrickColor.new("Brick yellow")
o38.Rotation = Vector3.new(-7.80000019, 43.4900017, -94.8099976)
o38.CanCollide = false
o38.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o38.CFrame = CFrame.new(0.133160993, 0.197182998, -0.288870007, -0.0607874393, 0.722971261, 0.688207388, -0.979459882, -0.176038221, 0.0984117091, 0.192298546, -0.668084681, 0.718816459)
o38.BottomSurface = Enum.SurfaceType.Smooth
o38.TopSurface = Enum.SurfaceType.Smooth
o38.Color = Color3.new(0.843137, 0.772549, 0.603922)
o38.Color = Color3.new(0.843137, 0.772549, 0.603922)
o39.Parent = o38
o39.MeshId = "rbxassetid://249768539"
o39.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o39.MeshType = Enum.MeshType.FileMesh
o39.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o40.Name = "blood"
o40.Parent = o38
o40.Texture = "http://www.roblox.com/asset/?id=931617584"
o41.Name = "blood"
o41.Parent = o38
o41.Texture = "http://www.roblox.com/asset/?id=931617584"
o42.Parent = o1
o42.BrickColor = BrickColor.new("Brick yellow")
o42.Rotation = Vector3.new(-79.5199966, -57.8100014, -19.9799995)
o42.CanCollide = false
o42.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o42.CFrame = CFrame.new(0.453296006, -0.244239002, -0.0776759982, 0.500665963, 0.182031512, -0.846292138, 0.719926655, 0.455308318, 0.523847044, 0.480676353, -0.871534705, 0.0969076827)
o42.BottomSurface = Enum.SurfaceType.Smooth
o42.TopSurface = Enum.SurfaceType.Smooth
o42.Color = Color3.new(0.843137, 0.772549, 0.603922)
o42.Color = Color3.new(0.843137, 0.772549, 0.603922)
o43.Parent = o42
o43.MeshId = "rbxassetid://249768539"
o43.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o43.MeshType = Enum.MeshType.FileMesh
o43.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o44.Name = "blood"
o44.Parent = o42
o44.Texture = "http://www.roblox.com/asset/?id=931617584"
o45.Name = "blood"
o45.Parent = o42
o45.Texture = "http://www.roblox.com/asset/?id=931617584"
o46.Parent = o1
o46.Material = fpep
o46.BrickColor = BrickColor.new("Really black")
o46.Transparency = 0.61000001430511
o46.Rotation = Vector3.new(-95.8300018, -37.7599983, -110.860001)
o46.CanCollide = false
o46.Size = Vector3.new(0.369640619, 0.367589623, 0.192960203)
o46.CFrame = CFrame.new(0.468300998, 0.164245993, 0.107268997, -0.281521827, 0.738813281, -0.612300992, -0.121896401, 0.605401993, 0.78654027, 0.951787889, 0.296062797, -0.0803744942)
o46.BottomSurface = Enum.SurfaceType.Smooth
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o47.Parent = o1
o47.Material = fpep
o47.BrickColor = BrickColor.new("Really black")
o47.Transparency = 0.61000001430511
o47.Rotation = Vector3.new(81.9599991, -34.3800011, -89.4700012)
o47.CanCollide = false
o47.Size = Vector3.new(0.537574828, 0.298816502, 0.0746065527)
o47.CFrame = CFrame.new(0.277025998, -0.528155982, 0.0335830003, 0.00770444702, 0.825233579, -0.564749539, -0.14510715, -0.557870269, -0.817153811, -0.989392519, 0.0882439315, 0.115448952)
o47.BottomSurface = Enum.SurfaceType.Smooth
o47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o47.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o47.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o48.Parent = o1
o48.Material = fpep
o48.BrickColor = BrickColor.new("Really black")
o48.Transparency = 0.61000001430511
o48.Rotation = Vector3.new(79.2799988, 78.2799988, 95.9199982)
o48.CanCollide = false
o48.Size = Vector3.new(0.577559173, 0.217248499, 0.0634109527)
o48.CFrame = CFrame.new(0.0428300016, -0.625756979, 0.0219919998, -0.0209742114, -0.2021171, 0.979142845, 0.0856866017, -0.97611928, -0.199661613, 0.996107996, 0.0797115117, 0.0377912596)
o48.BottomSurface = Enum.SurfaceType.Smooth
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o48.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o49.Parent = o1
o49.Material = fpep
o49.BrickColor = BrickColor.new("Really black")
o49.Transparency = 0.61000001430511
o49.Rotation = Vector3.new(-91.2300034, 44.7000008, 92.0699997)
o49.CanCollide = false
o49.Size = Vector3.new(0.579158545, 0.359592974, 0.119389035)
o49.CFrame = CFrame.new(0.0936610028, 0.0645330027, -0.00822599977, -0.0256445333, -0.710382044, 0.703357279, 0.00388100743, 0.70351696, 0.710678697, -0.999670088, 0.0209547654, -0.0152848288)
o49.BottomSurface = Enum.SurfaceType.Smooth
o49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o49.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o49.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o50.Parent = o1
o50.Material = fpep
o50.BrickColor = BrickColor.new("Really black")
o50.Transparency = 0.61000001430511
o50.Rotation = Vector3.new(88.1299973, -68.5199966, 93.2699966)
o50.CanCollide = false
o50.Size = Vector3.new(0.577559173, 0.594700694, 0.116190307)
o50.CFrame = CFrame.new(0.0585500002, 0.0186500009, -0.000379000005, -0.0209032148, -0.365541786, -0.930566669, 0.0856756419, 0.926694512, -0.365940988, 0.996110439, -0.0873756632, 0.0119476877)
o50.BottomSurface = Enum.SurfaceType.Smooth
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o50.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o51.Parent = o1
o51.Material = fpep
o51.BrickColor = BrickColor.new("Really black")
o51.Transparency = 0.61000001430511
o51.Rotation = Vector3.new(-92.0199966, 56.9599991, 92.6800003)
o51.CanCollide = false
o51.Size = Vector3.new(0.561565399, 0.174065605, 0.0650103092)
o51.CFrame = CFrame.new(0.106633, 0.155452996, 0.000584000023, -0.025530532, -0.544633627, 0.838292599, 0.0039540194, 0.83850807, 0.544889271, -0.999672771, 0.0172258615, -0.0192545727)
o51.BottomSurface = Enum.SurfaceType.Smooth
o51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o51.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o51.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o52.Parent = o1
o52.Material = fpep
o52.BrickColor = BrickColor.new("Really black")
o52.Transparency = 0.61000001430511
o52.Rotation = Vector3.new(-100.290001, 73.9300003, 103.260002)
o52.CanCollide = false
o52.Size = Vector3.new(0.580757856, 0.178863913, 0.149777159)
o52.CFrame = CFrame.new(-0.0237920005, -0.302661985, -0.0131949997, -0.0635129437, -0.269421548, 0.960931957, 0.0430303104, 0.961244106, 0.272349, -0.997059584, 0.0586463213, -0.049458418)
o52.BottomSurface = Enum.SurfaceType.Smooth
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o53.Parent = o1
o53.Material = fpep
o53.BrickColor = BrickColor.new("Really black")
o53.Transparency = 0.61000001430511
o53.Rotation = Vector3.new(-83.5500031, 46.5999985, -104.269997)
o53.CanCollide = false
o53.Size = Vector3.new(0.443211824, 0.348397046, 0.132183939)
o53.CFrame = CFrame.new(0.288031012, -0.531958997, 0.0450909995, -0.169315025, 0.665907025, 0.726575792, 0.0690153316, -0.727403283, 0.682742536, 0.983149529, 0.165742055, 0.0772013217)
o53.BottomSurface = Enum.SurfaceType.Smooth
o53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o53.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o53.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o54.Parent = o1
o54.Material = fpep
o54.BrickColor = BrickColor.new("Really black")
o54.Transparency = 0.61000001430511
o54.Rotation = Vector3.new(90.8300018, 17.0100002, -54.9300003)
o54.CanCollide = false
o54.Size = Vector3.new(0.294470191, 0.385182619, 0.119953051)
o54.CFrame = CFrame.new(0.442530006, -0.205317006, 0.127810001, 0.549506903, 0.782623172, 0.292498022, 0.179969192, 0.230993271, -0.956174195, -0.815883577, 0.578060269, -0.0139154941)
o54.BottomSurface = Enum.SurfaceType.Smooth
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Parent = o1
o55.Material = fpep
o55.BrickColor = BrickColor.new("Really black")
o55.Transparency = 0.61000001430511
o55.Rotation = Vector3.new(55.0299988, 65.0999985, -49.0900002)
o55.CanCollide = false
o55.Size = Vector3.new(0.505587399, 0.164469346, 0.136982113)
o55.CFrame = CFrame.new(0.139244005, 0.257393986, 0.0168699995, 0.275725871, 0.318157166, 0.907062948, 0.0535777658, 0.937088311, -0.344979495, -0.959748983, 0.143716663, 0.24133113)
o55.BottomSurface = Enum.SurfaceType.Smooth
o55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Parent = o1
o56.Material = fpep
o56.BrickColor = BrickColor.new("Really black")
o56.Transparency = 0.61000001430511
o56.Rotation = Vector3.new(-71.0299988, 66.2600021, -114.870003)
o56.CanCollide = false
o56.Size = Vector3.new(0.443211824, 0.183661669, 0.125786409)
o56.CFrame = CFrame.new(0.273189992, -0.430655986, 0.0354209989, -0.169324011, 0.36533469, 0.915353417, 0.0690063238, -0.922093511, 0.380785316, 0.983148515, 0.127640426, 0.130920559)
o56.BottomSurface = Enum.SurfaceType.Smooth
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o57.Parent = o1
o57.Material = fpep
o57.BrickColor = BrickColor.new("Really black")
o57.Transparency = 0.61000001430511
o57.Rotation = Vector3.new(90, -14.2200003, -63.8699989)
o57.CanCollide = false
o57.Size = Vector3.new(0.0927636698, 0.318008959, 0.0921996906)
o57.CFrame = CFrame.new(0.468192011, -0.314610988, -0.0116210002, 0.426843613, 0.870328486, -0.24565205, -0.108169273, -0.220559478, -0.96936518, -0.897840679, 0.440335631, -1.22748315e-06)
o57.BottomSurface = Enum.SurfaceType.Smooth
o57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o57.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o57.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58.Parent = o1
o58.Material = fpep
o58.BrickColor = BrickColor.new("Really black")
o58.Transparency = 0.61000001430511
o58.Rotation = Vector3.new(-91.2900009, 45.7700005, 92.1100006)
o58.CanCollide = false
o58.Size = Vector3.new(0.580757856, 0.349996805, 0.0906003416)
o58.CFrame = CFrame.new(0.0214060005, -0.111786, -0.00785399973, -0.0256485045, -0.697055817, 0.716566443, 0.00386799127, 0.716731906, 0.697349608, -0.999670088, 0.0206577219, -0.0156873558)
o58.BottomSurface = Enum.SurfaceType.Smooth
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Parent = o1
o59.Material = fpep
o59.BrickColor = BrickColor.new("Really black")
o59.Transparency = 0.61000001430511
o59.Rotation = Vector3.new(82.6100006, 64.0500031, 89.3099976)
o59.CanCollide = false
o59.Size = Vector3.new(0.579158545, 0.258832216, 0.0634109527)
o59.CFrame = CFrame.new(-0.0123110004, -0.619129002, 0.0236629993, 0.00524165854, -0.437584311, 0.899168849, 0.139229983, -0.890103757, -0.43398881, 0.990252912, 0.12746565, 0.0562584549)
o59.BottomSurface = Enum.SurfaceType.Smooth
o59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o60.Parent = o1
o60.Material = fpep
o60.BrickColor = BrickColor.new("Really black")
o60.Transparency = 0.61000001430511
o60.Rotation = Vector3.new(-91.2300034, 44.7000008, 92.0699997)
o60.CanCollide = false
o60.Size = Vector3.new(0.580757856, 0.193258181, 0.140180886)
o60.CFrame = CFrame.new(0.103624001, -0.0117450003, -0.00956999976, -0.0256445333, -0.710382223, 0.703357279, 0.00388101488, 0.703517079, 0.710678935, -0.999670208, 0.0209548064, -0.0152848065)
o60.BottomSurface = Enum.SurfaceType.Smooth
o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o61.Parent = o1
o61.Material = fpep
o61.BrickColor = BrickColor.new("Really black")
o61.Transparency = 0.61000001430511
o61.Rotation = Vector3.new(82.1600037, -49.2900009, -89.3300018)
o61.CanCollide = false
o61.Size = Vector3.new(0.56316483, 0.241239116, 0.111392155)
o61.CFrame = CFrame.new(0.194328994, -0.55378902, 0.0237659998, 0.00764844147, 0.652154505, -0.758055449, -0.145167112, -0.749326944, -0.646104872, -0.989384353, 0.114985406, 0.0889401361)
o61.BottomSurface = Enum.SurfaceType.Smooth
o61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o61.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o61.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o62.Parent = o1
o62.Material = fpep
o62.BrickColor = BrickColor.new("Really black")
o62.Transparency = 0.61000001430511
o62.Rotation = Vector3.new(-99.25, -64.0500031, 89)
o62.CanCollide = false
o62.Size = Vector3.new(0.583956659, 0.140478551, 0.0746065825)
o62.CFrame = CFrame.new(-0.0515360013, -0.628784001, 0.022357, 0.00764844194, -0.437557995, -0.899164259, -0.145174116, -0.89015007, 0.431941062, -0.989383221, 0.127231285, -0.0703294501)
o62.BottomSurface = Enum.SurfaceType.Smooth
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o62.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o63.Parent = o1
o63.Material = fpep
o63.BrickColor = BrickColor.new("Really black")
o63.Transparency = 0.61000001430511
o63.Rotation = Vector3.new(-95.6200027, -30.5900002, -102.919998)
o63.CanCollide = false
o63.Size = Vector3.new(0.470401198, 0.29721722, 0.170569003)
o63.CFrame = CFrame.new(0.380764008, 0.234044001, 0.0925009996, -0.192490786, 0.839066148, -0.508848965, -0.0177033842, 0.515490055, 0.856721997, 0.981145918, 0.173917517, -0.0843721032)
o63.BottomSurface = Enum.SurfaceType.Smooth
o63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o63.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o63.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o64.Parent = o1
o64.Material = fpep
o64.BrickColor = BrickColor.new("Really black")
o64.Transparency = 0.61000001430511
o64.Rotation = Vector3.new(77.3799973, 32.7799988, -31.9599991)
o64.CanCollide = false
o64.Size = Vector3.new(0.0815680996, 0.513132453, 0.156174645)
o64.CFrame = CFrame.new(0.531111002, -0.00474199979, 0.142056003, 0.713326573, 0.445074022, 0.541374266, 0.332574666, 0.464984208, -0.82048738, -0.61690414, 0.765316963, 0.183663815)
o64.BottomSurface = Enum.SurfaceType.Smooth
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o64.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o65.Parent = o1
o65.Material = fpep
o65.BrickColor = BrickColor.new("Really black")
o65.Transparency = 0.61000001430511
o65.Rotation = Vector3.new(90, -25.1599998, -90)
o65.CanCollide = false
o65.Size = Vector3.new(0.142344311, 0.188459784, 0.136982143)
o65.CFrame = CFrame.new(0.411656559, -0.380420327, -0.0655137971, 7.22706318e-07, 0.905150235, -0.425107121, -9.48086381e-07, -0.42511183, -0.905150414, -1.00000715, 5.58793545e-07, 1.26473606e-06)
o65.BottomSurface = Enum.SurfaceType.Smooth
o65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o65.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o65.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o66.Name = "Wedge-to-Wedge Strong Joint"
o66.Parent = o65
o66.C0 = CFrame.new(0.0711721554, -0.0942298919, 0.0684910715, 1, 0, 0, 0, 0, -1, 0, 1, 0)
o66.C1 = CFrame.new(0.0772354081, -0.180161446, 0.0501061305, 0.946585834, -0.318929851, -0.0475419722, -0.315769702, -0.946697891, 0.0636683851, -0.0653134957, -0.0452550575, -0.99683857)
o67.Parent = o1
o67.Material = fpep
o67.BrickColor = BrickColor.new("Really black")
o67.Transparency = 0.61000001430511
o67.Rotation = Vector3.new(86, -37.4300003, 91.5100021)
o67.CanCollide = false
o67.Size = Vector3.new(0.577559173, 0.524328291, 0.130584687)
o67.CFrame = CFrame.new(0, 0, 0, -0.0209302008, -0.793865979, -0.607742369, 0.0856426656, 0.604221821, -0.79221034, 0.996112645, -0.0686290264, 0.0553424656)
o67.BottomSurface = Enum.SurfaceType.Smooth
o67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o67.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o67.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o68.Parent = o1
o68.Material = fpep
o68.BrickColor = BrickColor.new("Really black")
o68.Transparency = 0.61000001430511
o68.Rotation = Vector3.new(80.3199997, 67.1500015, -62.6199989)
o68.CanCollide = false
o68.Size = Vector3.new(0.249502212, 0.612293899, 0.101795956)
o68.CFrame = CFrame.new(0.299401999, -0.244654, -0.00995900016, 0.178612351, 0.344818145, 0.921526015, 0.268467456, 0.883969367, -0.382804602, -0.946591914, 0.315770596, 0.0653144941)
o68.BottomSurface = Enum.SurfaceType.Smooth
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o68.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o69.Parent = o1
o69.Material = fpep
o69.BrickColor = BrickColor.new("Really black")
o69.Transparency = 0.61000001430511
o69.Rotation = Vector3.new(96.8499985, -50.0400009, 102.089996)
o69.CanCollide = false
o69.Size = Vector3.new(0.174517289, 0.2316432, 0.0906003416)
o69.CFrame = CFrame.new(-0.0382749997, -0.135123, -0.205486998, -0.134492666, -0.628019691, -0.766495287, 0.0428021848, 0.769123316, -0.637677848, 0.989996612, -0.118569657, -0.0765596405)
o69.BottomSurface = Enum.SurfaceType.Smooth
o69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o69.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o69.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o70.Parent = o1
o70.Material = fpep
o70.BrickColor = BrickColor.new("Really black")
o70.Transparency = 0.61000001430511
o70.Rotation = Vector3.new(82.8199997, -69.3600006, -88.7600021)
o70.CanCollide = false
o70.Size = Vector3.new(0.56316483, 0.188459784, 0.111392155)
o70.CFrame = CFrame.new(0.117403001, -0.584910989, 0.0277309995, 0.00765342917, 0.352387547, -0.935829222, -0.145168096, -0.925554335, -0.349701434, -0.989384055, 0.138528049, 0.0440720581)
o70.BottomSurface = Enum.SurfaceType.Smooth
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o70.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o71.Parent = o1
o71.Material = fpep
o71.BrickColor = BrickColor.new("Really black")
o71.Transparency = 0.61000001430511
o71.Rotation = Vector3.new(-88.1100006, 28.9699993, 85.9100037)
o71.CanCollide = false
o71.Size = Vector3.new(0.561565399, 0.353195399, 0.0890009254)
o71.CFrame = CFrame.new(0.0242059994, 0.230694994, -0.00237399992, 0.0624100603, -0.872684479, 0.484291881, -0.00171591877, 0.485147715, 0.874439597, -0.998055875, -0.0554040596, 0.0287799183)
o71.BottomSurface = Enum.SurfaceType.Smooth
o71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o72.Parent = o1
o72.Material = fpep
o72.BrickColor = BrickColor.new("Really black")
o72.Transparency = 0.61000001430511
o72.Rotation = Vector3.new(55.0299988, 65.0999985, -49.0900002)
o72.CanCollide = false
o72.Size = Vector3.new(0.505587399, 0.257233024, 0.103395291)
o72.CFrame = CFrame.new(0.179382995, 0.291195989, 0.0302820001, 0.275725871, 0.318157166, 0.907062948, 0.0535777658, 0.937088311, -0.344979495, -0.959748983, 0.143716663, 0.24133113)
o72.BottomSurface = Enum.SurfaceType.Smooth
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o72.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o73.Parent = o1
o73.Material = fpep
o73.BrickColor = BrickColor.new("Really black")
o73.Transparency = 0.61000001430511
o73.Rotation = Vector3.new(93.1399994, -35.7999992, 99.5400009)
o73.CanCollide = false
o73.Size = Vector3.new(0.174517289, 0.290820003, 0.124187171)
o73.CFrame = CFrame.new(-0.0556689985, -0.179975003, -0.205886006, -0.134486601, -0.799838006, -0.584965467, 0.0428091623, 0.585091889, -0.809846163, 0.989997029, -0.133954078, -0.0444457792)
o73.BottomSurface = Enum.SurfaceType.Smooth
o73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o73.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o73.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o74.Parent = o1
o74.Material = fpep
o74.BrickColor = BrickColor.new("Really black")
o74.Transparency = 0.61000001430511
o74.Rotation = Vector3.new(-100.25, -77.3399963, -95.4599991)
o74.CanCollide = false
o74.Size = Vector3.new(0.519981742, 0.22364606, 0.0730071887)
o74.CFrame = CFrame.new(0.174909994, 0.285625994, 0.00799900014, -0.0208662059, 0.218239263, -0.975678265, 0.0856756046, 0.97269237, 0.215743139, 0.996111274, -0.0790899545, -0.038993407)
o74.BottomSurface = Enum.SurfaceType.Smooth
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o74.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o75.Parent = o1
o75.BrickColor = BrickColor.new("Brick yellow")
o75.Rotation = Vector3.new(-47.5699997, 4.96000004, 2.20000005)
o75.CanCollide = false
o75.Size = Vector3.new(0.0643261075, 0.238971487, 0.0890916213)
o75.CFrame = CFrame.new(-0.0225120001, -0.633243978, -0.257045001, 0.995524406, -0.0382913053, 0.0864685476, -0.037851274, 0.676618457, 0.735370994, -0.086664483, -0.735347688, 0.672135592)
o75.BottomSurface = Enum.SurfaceType.Smooth
o75.TopSurface = Enum.SurfaceType.Smooth
o75.Color = Color3.new(0.843137, 0.772549, 0.603922)
o75.Color = Color3.new(0.843137, 0.772549, 0.603922)
o76.Parent = o75
o76.MeshId = "rbxassetid://249768539"
o76.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o76.MeshType = Enum.MeshType.FileMesh
o76.Scale = Vector3.new(0.0530690588, 0.136693045, 0.0691505298)
o77.Name = "blood"
o77.Parent = o75
o77.Texture = "http://www.roblox.com/asset/?id=931617584"
o78.Name = "blood"
o78.Parent = o75
o78.Texture = "http://www.roblox.com/asset/?id=931617584"
mas.Parent = Torso
mas:MakeJoints()

headlocation2 = Instance.new("Part",Torso)
headlocation2.Size = Vector3.new(.05,.05,.05)
headlocation2.Anchored = false
headlocation2.CanCollide = false
headlocation2.Transparency = 1
headlocation2.CFrame = Head.CFrame
headlocationweld2 = weldBetween(headlocation2,Head) headlocationweld2.C0 = CFrame.new(-.14,-.19,.49)

local parts,last = {}
local function scan(mas)
	for _,v in pairs(mas:GetChildren()) do
		if (v:IsA("BasePart")) then
			if (last) then
				local w = Instance.new("Weld")
				w.Name = ("%s_Weld"):format(v.Name)
				w.Part0,w.Part1 = last,headlocation2
				w.C0 = last.CFrame:inverse()
				w.Parent = last
			end
			last = v
			table.insert(parts,v)
		end
		scan(v)
	end
end
scan(mas)
for _,v in pairs(parts) do
	v.CanCollide = false
	v.Anchored = false
	v.Parent = Torso
	v.Locked = true
	v.Transparency = 0
end
headlocation2.Transparency = 1

Head.BrickColor = BrickColor.new("Khaki")
Torso.BrickColor = Head.BrickColor
LeftArm.BrickColor = Head.BrickColor
RightArm.BrickColor = Head.BrickColor
LeftLeg.BrickColor = Head.BrickColor
RightLeg.BrickColor = Head.BrickColor
doomtheme.Volume = 5
doomtheme:Play()
SOUND(portal,1923787357,6,false,math.random(9,11)/10,10)
for i = 1, 15 do---monkey
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("Part") and v.Name ~= "ext" and v ~= Head and v ~= Root and v.BrickColor ~= "Crimson" then
			v.Transparency = v.Transparency - .1
		end
	end
	Head.BrickColor = BrickColor.new("Khaki")
	Torso.BrickColor = Head.BrickColor
	LeftArm.BrickColor = Head.BrickColor
	RightArm.BrickColor = Head.BrickColor
	LeftLeg.BrickColor = Head.BrickColor
	RightLeg.BrickColor = Head.BrickColor
	portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
	LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.3,0.9,-0.9)*CFrame.Angles(math.rad(-121.9),math.rad(-13.5),math.rad(36.5))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3,1.1,1.5)*CFrame.Angles(math.rad(68.7),math.rad(3),math.rad(10.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,0.8,-0.1)*CFrame.Angles(math.rad(-118.8),math.rad(-0.2),math.rad(-16.9))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.1,2.1,1)*CFrame.Angles(math.rad(18.7),math.rad(7.5),math.rad(-18.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
	ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-1.25,-4)*CFrame.Angles(math.rad(35.6),math.rad(-0.1),math.rad(-0.3))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.15)
	swait()
end
debounce = false
attacking = false
ws = 80
coroutine.wrap(function()
	for i = 1, 30 do
		txc = txc + .35
		portalsound.Volume = portalsound.Volume - .1
		portal.Size = portal.Size - Vector3.new(.5,.5,0)
		portal.CFrame = portal.CFrame * CFrame.Angles(0,0,math.rad(0+txc))
		swait()
	end
	portal.Transparency = 1
	portalpic.Transparency = 1
	portalpic2.Transparency = 1
	wait(10)
	portal.Parent = nil
end)()


coroutine.wrap(function()
	while wait(.1) do
		if overlord then
			local randsom = Instance.new("Part",Torso)
			randsom.Size = Vector3.new(1,1,1)
			randsom.Anchored = true
			randsom.CanCollide = false
			randsom.Transparency = 1
			randsom.CFrame = Root.CFrame * CFrame.new(math.random(-6,6),math.random(-6,6),math.random(-6,6))
			local randsom2 = Instance.new("Part",Torso)
			randsom2.Size = Vector3.new(1,1,1)
			randsom2.Anchored = true
			randsom2.CanCollide = false
			randsom2.Transparency = 1
			randsom2.CFrame = Root.CFrame * CFrame.new(math.random(-6,6),math.random(-6,6),math.random(-6,6))
			littlebolt(Torso,randsom2.Position,randsom.Position,randsom,BrickColor.new("Crimson"),.25,"Neon",5)
			randsom:Destroy()
			randsom2:Destroy()
		end
	end
end)()

coroutine.wrap(function()
	for i,v in pairs(Character:GetChildren()) do
		if v.Name == "Animate" then
		end
	end
end)()

checks1 = coroutine.wrap(function() -------Checks
	while true do
		if Root.Velocity.Magnitude < 5 then
			position = "Idle"
		elseif Root.Velocity.Magnitude > 5 then
			position = "Walking"
		else
		end
		wait()
	end
end)
checks1()

immortal = {}
for i,v in pairs(Character:GetDescendants()) do
	if v:IsA("BasePart") and v.Name ~= "lmagic" and v.Name ~= "rmagic" then
		if v ~= Root and v ~= Torso and v ~= Head and v ~= RightArm and v ~= LeftArm and v ~= RightLeg and v.Name ~= "lmagic" and v.Name ~= "rmagic" and v ~= LeftLeg then
			v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(immortal,{v,v.Parent,v.Material,v.Color,v.Transparency})
	elseif v:IsA("JointInstance") then
		table.insert(immortal,{v,v.Parent,nil,nil,nil})
	end
end
for e = 1, #immortal do
	if immortal[e] ~= nil then
		local STUFF = immortal[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if levitate then
			if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= eyo1 and PART.Name ~= eyo2 and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			PART.AncestryChanged:connect(function()
				PART.Parent = PARENT
			end)
		else
			if PART.ClassName == "Part" and PART ~= Root and PART.Name ~= "lmagic" and PART.Name ~= "rmagic" then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			PART.AncestryChanged:connect(function()
				PART.Parent = PARENT
			end)
		end
	end
end
function immortality()
	for e = 1, #immortal do
		if immortal[e] ~= nil then
			local STUFF = immortal[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART == Root then
				PART.Material = MATERIAL
				PART.Color = COLOR
				PART.Transparency = TRANSPARENCY
			end
			if PART.Parent ~= PARENT then
				hum:Remove()
				PART.Parent = PARENT
				hum = Instance.new("Humanoid",Character)
				hum.Name = "noneofurbusiness"
			end
		end
	end
end
coroutine.wrap(function()
	while true do
		hpheight = 2 + .5 * math.sin(sine/16)
		hum.HipHeight = hpheight
		Head.Transparency = 1
		Head.BrickColor = BrickColor.new("Khaki")
		Torso.BrickColor = Head.BrickColor
		LeftArm.BrickColor = Head.BrickColor
		RightArm.BrickColor = Head.BrickColor
		LeftLeg.BrickColor = Head.BrickColor
		RightLeg.BrickColor = Head.BrickColor
		hum:SetStateEnabled("Dead",false) hum:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
		if Neck == nil then
			immortality()
		end
		swait()
	end
end)()

OrgnC0 = Neck.C0 * CFrame.new(0,0,.35)
local movelimbs = coroutine.wrap(function()
	while RunSrv.Stepped:wait() do
		TrsoLV = Torso.CFrame.lookVector
		Dist = nil
		Diff = nil
		if not MseGuide then
			print("Failed to recognize")
		else
			local _, Point = workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), workspace, false, true)
			Dist = (Head.CFrame.p-Point).magnitude
			Diff = Head.CFrame.Y-Point.Y
			HEADLERP.C0 = CFrame.new(0, -1.85, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
			Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*.6), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .25)
		end
	end
end)
movelimbs()

local anims = coroutine.wrap(function()
	while true do
		settime = 0.05
		sine = sine + change
		sine2 = sine2 + change2
		if position == "Walking" and not attacking then
			change = 1
			walking = true
			ws = 80
			local plant2 = hum.MoveDirection*Torso.CFrame.LookVector
			local plant3 = hum.MoveDirection*Torso.CFrame.RightVector
			local plant = plant2.Z + plant2.X
			local plant4 = plant3.Z + plant3.X
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.1,1.5,0.9)*CFrame.Angles(math.rad(-46.4 - .5 * math.sin(sine/16)),math.rad(-44.4 - .5 * math.sin(sine/16)),math.rad(18.8 + 1 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.2,1.5 - .05 * math.sin(sine/16),1.5)*CFrame.Angles(math.rad(23.8 + 4 * math.sin(sine/16)),math.rad(-42.3 + 4 * math.sin(sine/16)),math.rad(5.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7,1,-0.2)*CFrame.Angles(math.rad(23.3 + 2 * math.sin(sine/16)),math.rad(-5.2 + 2 * math.sin(sine/16)),math.rad(-24.7))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.2,2.3,0.3)*CFrame.Angles(math.rad(7.8 + 1 * math.sin(sine/16)),math.rad(16.2 - 1 * math.sin(sine/16)),math.rad(-16.8))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(plant- -plant/5)*-41.6,math.rad(plant4- 46.2),math.rad(-plant4 - plant4*15) + Root.RotVelocity.Y / 30)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		elseif position == "Idle" and not attacking then
			change = 1
			ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(.1*math.sin(sine/18),0,.1*math.sin(sine/21))*CFrame.Angles(math.rad(-7.1 + 1.5 * math.sin(sine/16)),math.rad(-46.1 + 0 * math.sin(sine/16)),math.rad(0.1))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6,0.7-.15*math.sin(sine/16),0.7)*CFrame.Angles(math.rad(11.6 - 5 * math.sin(sine/16)),math.rad(-33.3),math.rad(27 - 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4,2.4,0.3 + .1*math.sin(sine/16))*CFrame.Angles(math.rad(-20.7 + 4 * math.sin(sine/16)),math.rad(-47 + 1 * math.sin(sine/16)),math.rad(-0.2))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.95,0.6-.22*math.sin(sine/16),-0.2)*CFrame.Angles(math.rad(13.9 - 3 * math.sin(sine/16)),math.rad(-1.8),math.rad(-19.7 + 4 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
			RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4 - .1 * math.sin(sine/16),2,1.2 - .1*math.sin(sine/16))*CFrame.Angles(math.rad(27.1 - 4 * math.sin(sine/16)),math.rad(32.4),math.rad(-12.3 + 3 * math.sin(sine/16)))*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.25)
		end
		swait()
	end
end)
anims()
warn("Welcome to a brutal nightmare. Made by Supr14")
