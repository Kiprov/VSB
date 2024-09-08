script.Parent = owner.Character
local KD = Instance.new("RemoteEvent",script)
KD.Name = "KD"
local KU = KD:Clone()
KU.Name = "KU"
KU.Parent = script
local B1D = KD:Clone()
B1D.Name = "B1D"
B1D.Parent = script
local B1U = KD:Clone()
B1U.Name = "B1U"
B1U.Parent = script
local B2D = KD:Clone()
B2D.Name = "B2D"
B2D.Parent = script
local B2U = KD:Clone()
B2U.Name = "B2U"
B2U.Parent = script
local MouseBE = KD:Clone()
MouseBE.Name = "Mouse"
MouseBE.Parent = script
local Converter = {}

local KDEv = Instance.new("BindableEvent")
local KUEv = Instance.new("BindableEvent")
local B1DEv = Instance.new("BindableEvent")
local B1UEv = Instance.new("BindableEvent")
local B2DEv = Instance.new("BindableEvent")
local B2UEv = Instance.new("BindableEvent")
local Plr = owner

function Converter:GetPlayer()
	return Plr
end

script.KD.OnServerEvent:Connect(function(p,Key)
	if p~=Plr then return end
	KDEv:Fire(Key)
end)
script.KU.OnServerEvent:Connect(function(p,Key)
	if p~=Plr then return end
	KUEv:Fire(Key)
end)
script.B1D.OnServerEvent:Connect(function(p)
	if p~=Plr then return end
	B1DEv:Fire()
end)
script.B1U.OnServerEvent:Connect(function(p)
	if p~=Plr then return end
	B1UEv:Fire()
end)
script.B2D.OnServerEvent:Connect(function(p)
	if p~=Plr then return end
	B2DEv:Fire()
end)
script.B2U.OnServerEvent:Connect(function(p)
	if p~=Plr then return end
	B2UEv:Fire()
end)

Converter.Hit = CFrame.new()
Converter.Target = nil
Converter.Origin = Vector3.new()
Converter.X = 0
Converter.Y = 0


Converter.KeyUp = KUEv.Event
Converter.KeyDown = KDEv.Event
Converter.Button1Down = B1DEv.Event
Converter.Button1Up = B1UEv.Event
Converter.Button2Down = B2DEv.Event
Converter.Button2Up = B2UEv.Event

script.Mouse.OnServerEvent:Connect(function(p,Hit,Target,Origin,X,Y)
	if p~=Plr then return end
	Converter.Hit = Hit
	Converter.Target = Target
	Converter.Origin = Origin
	Converter.X = X
	Converter.Y = Y
end)

NLS([==[
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UIS = game:GetService("UserInputService")
local Signals = {}

local RCPs = RaycastParams.new()
local Camera = workspace.CurrentCamera
local Char = Player.Character
local IgnoreFolder
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	Camera = workspace.CurrentCamera
	RCPs.FilterDescendantsInstances={Camera,Char,IgnoreFolder}
end)
Player:GetPropertyChangedSignal("Character"):Connect(function()
	Char = Player.Character
	RCPs.FilterDescendantsInstances={Camera,Char,IgnoreFolder}
end)

RCPs.FilterDescendantsInstances={Camera,Char,IgnoreFolder}

Mouse.Button1Down:connect(function()
	Signals.B1D={script.Parent.B1D}
end)
Mouse.Button1Up:connect(function()
	Signals.B1U={script.Parent.B1U}
end)
Mouse.Button2Down:connect(function()
	Signals.B2D={script.Parent.B2D}
end)
Mouse.Button2Up:connect(function()
	Signals.B2U={script.Parent.B2U}
end)


Mouse.KeyDown:connect(function(Key)
	Signals.KD={script.Parent.KD,Key}
end)

Mouse.KeyUp:connect(function(Key)
	Signals.KU={script.Parent.KU,Key}
end)

local RS = game:GetService("RunService").Heartbeat
while true do
	RS:wait()
	RS:wait()
	if script:IsDescendantOf(Char) then
		IgnoreFolder=workspace:FindFirstChild("SG_Projectiles")
		RCPs.FilterDescendantsInstances={Camera,Player.Character,IgnoreFolder}
		local MP = UIS:GetMouseLocation()
		local CameraRay = Camera:ViewportPointToRay(MP.X,MP.Y)
		local MouseRaycast = workspace:Raycast(CameraRay.Origin,CameraRay.Direction*5000,RCPs)
		if MouseRaycast==nil then
			MouseRaycast={Position=CameraRay.Origin+CameraRay.Direction*5000,Normal=-CameraRay.Direction}
		elseif MouseRaycast.Instance:IsA("BasePart") then
			local Filter = RCPs.FilterDescendantsInstances
			while not MouseRaycast.Instance.CanCollide and MouseRaycast.Instance.Transparency>=0.25 do
				table.insert(Filter,MouseRaycast.Instance)
				RCPs.FilterDescendantsInstances=Filter
				MouseRaycast=workspace:Raycast(CameraRay.Origin,CameraRay.Direction*5000,RCPs)
				if MouseRaycast==nil then
					MouseRaycast={Position=CameraRay.Origin+CameraRay.Direction*5000,Normal=-CameraRay.Direction}
					break
				end
			end
		end
		
		
		script.Parent.Mouse:FireServer(CFrame.new(MouseRaycast.Position)*CFrame.new(Vector3.new(),MouseRaycast.Normal),MouseRaycast.Instance,Mouse.Origin,MP.X,MP.Y)
		for _,v in pairs(Signals)do
			v[1]:FireServer(v[2])
		end
	end
	Signals={}
end
]==],script)

LoadLibrary=function(lib)
	if(lib:lower()=="rbxutility")then
		return setmetatable({
			Create = function(ty)
				return function(data)
					local obj = Instance.new(ty)
					for k, v in pairs(data) do
						if type(k) == 'number' then
							v.Parent = obj
						else
							obj[k] = v
						end
					end
					return obj
				end
			end
		},{__index=function(_,v) return ({})[v] end})
	else
		return {}
	end
  end

me = Converter:GetPlayer()

mouse = Converter
 
char = me.Character
 
selected = false
 
attacking = false
 
hurt = false
 
grabbed = nil
 
mode = "drop"
 
bloodcolors = {"Really red", "Bright red"}
 
 
 
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
 
part.Parent = parent
 
part.formFactor = form
 
part.CanCollide = collide
 
part.Transparency = tran
 
part.Reflectance = ref
 
part.Size = Vector3.new(x,y,z)
 
part.BrickColor = BrickColor.new(color)
 
part.TopSurface = 0
 
part.BottomSurface = 0
 
part.Anchored = anchor
 
part.Locked = true
 
part:BreakJoints()
 
end
 
 
function weld(w, p, p1, a, b, c, x, y, z)
 
w.Parent = p
 
w.Part0 = p
 
w.Part1 = p1
 
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
 
end
 
 
function mesh(mesh, parent, x, y, z, type)
 
mesh.Parent = parent
 
mesh.Scale = Vector3.new(x, y, z)
 
mesh.MeshType = type
 
end
 
 
function remgui()
 
for _,v in pairs(me.PlayerGui:GetChildren()) do
 
if v.Name == "Modeshow" then
 
v:remove()
 
end
 
end
 
end
 
 
function inform(text,delay)
 
remgui()
 
local sc = Instance.new("ScreenGui")
 
sc.Parent = me.PlayerGui
 
sc.Name = "Modeshow"
 
local bak = Instance.new("Frame",sc)
 
bak.BackgroundColor3 = Color3.new(1,1,1)
 
bak.Size = UDim2.new(0.94,0,0.1,0)
 
bak.Position = UDim2.new(0.03,0,0.037,0)
 
bak.BorderSizePixel = 0
 
local gi = Instance.new("TextLabel",sc)
 
gi.Size = UDim2.new(0.92,0,0.09,0)
 
gi.BackgroundColor3 = Color3.new(0,0,0)
 
gi.Position = UDim2.new(0.04,0,0.042,0)
 
gi.TextColor3 = Color3.new(1,1,1)
 
gi.FontSize = "Size12"
 
gi.Text = text
 
coroutine.resume(coroutine.create(function()
 
wait(delay)
 
sc:remove()
 
end))
 
end
 
 
if char:findFirstChild("Bricks",true) then
 
char:findFirstChild("Bricks",true):remove()
 
end
 
 
bricks = Instance.new("Model",me.Character)
 
bricks.Name = "Bricks"
 
 
--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------
 
 
rarm = char:findFirstChild("Right Arm")
 
larm = char:findFirstChild("Left Arm")
 
lleg = char:findFirstChild("Left Leg")
 
torso = char:findFirstChild("Torso")
 
hum = char:findFirstChild("Humanoid")
 
 
righthold = Instance.new("Part")
 
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
 
w11 = Instance.new("Weld")
 
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)
 
 
lefthold = Instance.new("Part")
 
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
 
w12 = Instance.new("Weld")
 
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)
 
 
hold = Instance.new("Part")
 
prop(hold, bricks, false, 0, 0, 0.2, 0.4, 0.7, "Really red", false, "Custom")
 
oh = Instance.new("Weld")
 
weld(oh, lleg, hold, -math.pi/1.4, 0, math.rad(35), 0.55, -0.9, 0.3)
 
 
knife = Instance.new("Part")
 
prop(knife, bricks, false, 0, 0, 0.35, 1.1, 0.5, "Really black", false, "Custom")
 
orr = Instance.new("Weld")
 
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
 
ar = Instance.new("Weld")
 
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)
 
 
 
blade = Instance.new("Part")
 
prop(blade, bricks, false, 0, 0, 0.1, 1.5, 0.4, "Medium grey", false, "Custom")
 
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
 
w2 = Instance.new("Weld")
 
weld(w2, knife, blade, 0, 0, 0, 0, -1.2, 0)
 
 
blade2 = Instance.new("Part")
 
prop(blade2, bricks, false, 0, 0, 0.1, 0.5, 0.4, "Medium grey", false, "Custom")
 
local mew = Instance.new("SpecialMesh",blade2)
 
mew.MeshType = "Wedge"
 
mew.Scale = Vector3.new(0.3,1,1)
 
w3 = Instance.new("Weld")
 
weld(w3, blade, blade2, 0, 0, 0, 0, -1, 0)
 
 
 
 
 
rb = Instance.new("Part")
 
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
 
w13 = Instance.new("Weld")
 
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)
 
 
lb = Instance.new("Part")
 
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
 
w14 = Instance.new("Weld")
 
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)
 
 
rw = Instance.new("Weld")
 
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)
 
 
lw = Instance.new("Weld")
 
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)
 
 
grabweld = nil
 
platlol = nil
 
lolhum = nil
 
 
function touch(h)
 
if hurt then
 
if grabbed == nil then
 
local hu = h.Parent:findFirstChild("Humanoid")
 
local head = h.Parent:findFirstChild("Head")
 
local torz = h.Parent:findFirstChild("Torso")
 
if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
 
if hu.Health > 0 then
 
grabbed = torz
 
hu.PlatformStand = true
 
local w = Instance.new("Weld")
 
weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
 
grabweld = w
 
lolhum = hu
 
local lolxd = true
 
platlol = lolxd
 
hu.Changed:connect(function(prop)
 
if prop == "PlatformStand" and platlol then
 
hu.PlatformStand = true
 
end
 
end)
 
end
 
end
 
end
 
end
 
end
 
 
righthold.Touched:connect(touch)
 
lefthold.Touched:connect(touch)
 
 
function bleed(part,po)
 
local lol1 = math.random(5,30)/100
 
local lol2 = math.random(5,30)/100
 
local lol3 =math.random(5,30)/100
 
local lol4 = math.random(1,#bloodcolors)
 
local p = Instance.new("Part")
 
prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
 
p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
 
p.Velocity = Vector3.new(math.random(-190,190)/10,math.random(-190,190)/10,math.random(-190,190)/10)
 
p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
 
coroutine.resume(coroutine.create(function()
 
wait(3)
 
p:remove()
 
end))
 
end
 
 
if script.Parent.className ~= "Tool" then
 
h = Instance.new("Tool",me.Backpack)
h.RequiresHandle = false
h.ToolTip = "The first release of grab knife? I can't tell."
h.CanBeDropped = false
h.Name = "Grab"
 
script.Parent = h
 
end
 
 
bin = script.Parent
 
 
function select()
 
orr.Part1 = nil
 
ar.Part1 = knife
 
end
 
 
function desel()
 
repeat wait() until attacking == false
 
orr.Part1 = knife
 
ar.Part1 = nil
 
end

mouse.Button1Down:connect(function()
 
if attacking == false then
 
attacking = true
 
lw.Part1 = larm
 
rw.Part1 = rarm
 
hurt = true
 
for i=1, 8 do
 
rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
 
lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
 
wait()
 
end
 
wait(1)
 
hurt = false
 
if grabbed == nil then
 
for i=1, 4 do
 
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
 
wait()
 
end
 
lw.C0 = CFrame.new(0,0,0)
 
rw.C0 = CFrame.new(0,0,0)
 
lw.Part1 = nil
 
rw.Part1 = nil
 
attacking = false
 
end
 
elseif hurt == false and grabbed ~= nil and mode == "drop" then
 
grabweld:remove()
 
grabweld = nil
 
platlol = false
 
grabbed = nil
 
lolhum.PlatformStand = false
 
lolhum = nil
 
for i=1, 4 do
 
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
 
wait()
 
end
 
lw.C0 = CFrame.new(0,0,0)
 
rw.C0 = CFrame.new(0,0,0)
 
lw.Part1 = nil
 
rw.Part1 = nil
 
attacking = false
 
platlol = nil
 
elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
 
grabweld:remove()
 
grabweld = nil
 
local bf = Instance.new("BodyForce",grabbed)
 
bf.force = torso.CFrame.lookVector * 8500
 
bf.force = bf.force + Vector3.new(0,7400,0)
 
coroutine.resume(coroutine.create(function()
 
wait(0.12)
 
bf:remove()
 
end))
 
for i=1, 6 do
 
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
 
lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
 
wait()
 
end
 
for i=1, 4 do
 
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
 
lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
 
wait()
 
end
 
wait(0.2)
 
platlol = false
 
grabbed = nil
 
lolhum.PlatformStand = false
 
lolhum = nil
 
for i=1, 4 do
 
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
 
wait()
 
end
 
lw.C0 = CFrame.new(0,0,0)
 
rw.C0 = CFrame.new(0,0,0)
 
lw.Part1 = nil
 
rw.Part1 = nil
 
attacking = false
 
platlol = nil
 
elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "kill" then
 
for i=1, 5 do
 
lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
 
wait()
 
end
 
local ne = grabbed:findFirstChild("Neck")
 
coroutine.resume(coroutine.create(function()
 
local duh = grabbed
 
local duh2 = grabbed.Parent.Head
 
local lolas = lolhum
 
duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
 
for i=1, 60 do
 
wait()
 
local hm = math.random(1,9)
 
pcall(function()
 
if hm == 1 then
 
duh2.Sound.Pitch = math.random(90,110)/100
 
duh2.Sound:play()
 
end
 
end)
 
if hm > 0 and hm < 3 then
 
bleed(duh,1)
 
bleed(duh2,-0.5)
 
end
 
end
 
lolas.Health = 0
 
for i=1, 85 do
 
wait()
 
local hm = math.random(1,9)
 
pcall(function()
 
if hm == 1 then
 
duh2.Sound.Pitch = math.random(90,110)/100
 
duh2.Sound:play()
 
end
 
end)
 
if hm > 0 and hm < 3 then
 
bleed(duh,1)
 
bleed(duh2,-0.5)
 
end
 
end
 
end))
 
for i=1, 3 do
 
lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
 
if ne ~= nil then
 
grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
 
end
 
wait()
 
end
 
grabweld:remove()
 
grabweld = nil
 
for i=1, 4 do
 
lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
 
wait()
 
end
 
for i=1, 4 do
 
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
 
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
 
wait()
 
end
 
lw.C0 = CFrame.new(0,0,0)
 
rw.C0 = CFrame.new(0,0,0)
 
lw.Part1 = nil
 
rw.Part1 = nil
 
platlol = false
 
grabbed = nil
 
lolhum = nil
 
attacking = false
 
platlol = nil
 
end
 
end)

mouse.KeyDown:connect(function(kai)
 
key = kai:lower()
 
if key == "q" then
 
mode = "drop"
 
inform("Mode: Drop",2)
 
elseif key == "e" then
 
mode = "throw"
 
inform("Mode: Throw",2)
 
elseif key == "f" then
 
mode = "kill"
 
inform("Mode: Kill",2)
 
end
 
end)
 
bin.Equipped:connect(select)
 
bin.Unequipped:connect(desel)
 
 
char.Humanoid.Died:connect(function()
 
pcall(function()
 
grabweld:remove()
 
grabweld = nil
 
grabbed = nil
 
platlol = false
 
platlol = nil
 
end)
 
end)
 
 
inform("Grab script loaded succesfully.",2)