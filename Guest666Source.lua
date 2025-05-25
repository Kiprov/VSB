--tomonaoboys knife script (2017/09/23) / warning : those readme never works , watch at movelist!!!
--What this heck
--T     : Teleport
--Click : Normal Attack :It's normal attack.
--Z     : Another version of Normal Attack. ...what?
--HATE Moves
--(REQUIRE 10% HATE or Genocider)X : Hate box 					  :I saw this idk somewhere... and pain
--(REQUIRE 50% HATE or Genocider)B["Welcome to my special hell."] : you know,isn't?
--(REQUIRE 100% HATE)			 G[Genocider]					  :Some moves become OP. but cannot keep this mode so long.
--(REQUIRE Genocider)H[World End] : Secret. This move will kill everyone. It's keystroke.(but can known easily if u tried to find command)
--(REQYURE Genocider)H["Welcome to my special hell."](Another version) : Secret. This move shoots too big something deadly thing.
--Energy Moves
--(REQUIRE 25% Energy)Y[The World] :Time Stop. It's not to all because abusive. and This can only stops in-area blocks when used. and Energy don't regen while this is actived.
--165278252
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
script.Parent = workspace script.Name="Guest 666"
if 1 then
	local MovesGui=Instance.new("ScreenGui",owner:FindFirstChildOfClass("PlayerGui"))
	local Frm=Instance.new("Frame",MovesGui)Frm.BackgroundColor3=Color3.new()Frm.BorderSizePixel=0
	Frm.BackgroundTransparency=.5 Frm.Size=UDim2.new(.3,0,.5,0)local Show=true Frm.Position=UDim2.new(.7,0,.5,0)
	local idk=Instance.new("TextButton",Frm)idk.Size=UDim2.new(.5,0,.1,0)idk.Position=UDim2.new(-.5,0,.8,0)
	idk.Text="Hide"idk.TextStrokeTransparency=0 idk.BackgroundTransparency=.5 idk.BackgroundColor3=Color3.new()
	idk.BorderSizePixel=0 idk.TextColor3=Color3.new(1,1,1)
	idk.MouseButton1Click:connect(function()Show=not Show idk.Text=Show and "Hide"or"Show"end)
	local normal=Instance.new("TextLabel",Frm)normal.Size=UDim2.new(1,0,1,0)normal.TextStrokeTransparency=0
	normal.BackgroundTransparency=1 normal.TextColor3=Color3.new(1,1,1)
	normal.TextXAlignment="Left"normal.TextYAlignment="Top"
	normal.Text=[[* Able to hold
-----------
Click:Swing
*T   : Teleport
*Q   : Control
*F   : Invisible

Invisible will make you invisible.
but it deactives automatically while
using Control , or swinging.
]]
	spawn(function()
	while game:service'RunService'.RenderStepped:wait()do
		Frm.Position=Frm.Position:lerp(UDim2.new(not Show and 1 or .7,0,.5,0),.1)
	end end)
end

local StatPart=nil local StatModel=nil
if 1 then local Pos=CFrame.new(31.1000977, -2.70001602, -56.6000977)--, 0, 0, 1, 0, 1, -0, -1, 0, 0
--Converted with ttyyuu12345's model to script plugin v4
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
mas = Instance.new("Model",game:GetService("Lighting"))
Model0 = Instance.new("Model")
BodyColors1 = Instance.new("BodyColors")
Part2 = Instance.new("Part")
SpecialMesh3 = Instance.new("SpecialMesh")
Decal4 = Instance.new("Decal")
Accessory5 = Instance.new("Accessory")
Part6 = Instance.new("Part")
SpecialMesh7 = Instance.new("SpecialMesh")
Vector3Value8 = Instance.new("Vector3Value")
Weld9 = Instance.new("Weld")
Model10 = Instance.new("Model")
Part11 = Instance.new("Part")
Part12 = Instance.new("Part")
FileMesh13 = Instance.new("FileMesh")
Part14 = Instance.new("Part")
FileMesh15 = Instance.new("FileMesh")
Part16 = Instance.new("Part")
FileMesh17 = Instance.new("FileMesh")
Part18 = Instance.new("Part")
FileMesh19 = Instance.new("FileMesh")
Part20 = Instance.new("Part")
FileMesh21 = Instance.new("FileMesh")
Part22 = Instance.new("Part")
FileMesh23 = Instance.new("FileMesh")
Part24 = Instance.new("Part")
FileMesh25 = Instance.new("FileMesh")
Part26 = Instance.new("Part")
FileMesh27 = Instance.new("FileMesh")
Part28 = Instance.new("Part")
FileMesh29 = Instance.new("FileMesh")
Part30 = Instance.new("Part")
FileMesh31 = Instance.new("FileMesh")
Part32 = Instance.new("Part")
FileMesh33 = Instance.new("FileMesh")
Part34 = Instance.new("Part")
FileMesh35 = Instance.new("FileMesh")
Part36 = Instance.new("Part")
FileMesh37 = Instance.new("FileMesh")
Part38 = Instance.new("Part")
FileMesh39 = Instance.new("FileMesh")
Model0.Name = "satue of guest 666"
Model0.Parent = mas
BodyColors1.Parent = Model0
BodyColors1.HeadColor = BrickColor.new("Really black")
BodyColors1.LeftArmColor = BrickColor.new("Really black")
BodyColors1.LeftLegColor = BrickColor.new("Really black")
BodyColors1.RightArmColor = BrickColor.new("Really black")
BodyColors1.RightLegColor = BrickColor.new("Really black")
BodyColors1.TorsoColor = BrickColor.new("Really black")
Part2.Name = "Head"
Part2.Parent = Model0
Part2.Material = Enum.Material.Metal
Part2.Rotation = Vector3.new(0, -90, 0)
Part2.Anchored=false
Part2.Size = Vector3.new(4.89646578, 2.44823289, 2.44823289)
Part2.CFrame = CFrame.new(-31.244873, 16.3533421, -56.099762, 0, 0, -1, 0, 1, 0, 1, 0, 0)*Pos
Part2.BottomSurface = Enum.SurfaceType.Smooth
Part2.TopSurface = Enum.SurfaceType.Smooth
Part2.Position = Vector3.new(-31.244873, 16.3533421, -56.099762)
Part2.Orientation = Vector3.new(0, -90, 0)
SpecialMesh3.Parent = Part2
SpecialMesh3.Scale = Vector3.new(1.25, 1.25, 1.25)
SpecialMesh3.Scale = Vector3.new(1.25, 1.25, 1.25)
Decal4.Parent = Part2
Decal4.Texture = "http://www.roblox.com/asset/?id=701379058"
Accessory5.Name = "Robloxclassicred"
Accessory5.Parent = Part2
Accessory5.AttachmentPos = Vector3.new(0, -0.0500000007, 0.100000001)
Part6.Name = "Handle"
Part6.Parent = Accessory5
Part6.Material = Enum.Material.Concrete
Part6.Rotation = Vector3.new(0, -90, 0)
Part6.Anchored=false
Part6.CanCollide = false
Part6.Locked = true
Part6.FormFactor = Enum.FormFactor.Symmetric
Part6.Size = Vector3.new(2.44823289, 2.44823289, 4.89646578)
Part6.CFrame = CFrame.new(-31.0000629, 17.6998863, -56.099762, 0, 0, -1, 0, 1, 0, 1, 0, 0)*Pos
Part6.BottomSurface = Enum.SurfaceType.Smooth
Part6.TopSurface = Enum.SurfaceType.Smooth
Part6.Position = Vector3.new(-31.0000629, 17.6998863, -56.099762)
Part6.Orientation = Vector3.new(0, -90, 0)
SpecialMesh7.Parent = Part6
SpecialMesh7.MeshId = "http://www.roblox.com/asset/?id=46834172"
SpecialMesh7.Scale = Vector3.new(2.57064438, 2.57064438, 2.57064438)
SpecialMesh7.TextureId = "http://www.roblox.com/asset/?id=47991609"
SpecialMesh7.MeshType = Enum.MeshType.FileMesh
SpecialMesh7.Scale = Vector3.new(2.57064438, 2.57064438, 2.57064438)
Vector3Value8.Name = "OriginalSize"
Vector3Value8.Parent = Part6
Vector3Value8.Value = Vector3.new(1, 1, 2)
Weld9.Name = "AccessoryWeld"
Weld9.Parent = Part6
Weld9.C0 = CFrame.new(2.11977547e-08, 0.122410946, 0.244156778, 1, 7.87137555e-09, -3.26223034e-24, -7.87137555e-09, 1, -4.1444221e-16, 0, 4.1444221e-16, 1)
Weld9.C1 = CFrame.new(2.11980566e-08, 1.46893942, -0.00066651724, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1)
Weld9.Part0 = Part6
Weld9.Part1 = Part2
Model10.Name = "KNIFE"
Model10.Parent = Model0
Part11.Parent = Model0 --plat
Part11.Material = Enum.Material.Slate
Part11.BrickColor = BrickColor.new("Dark stone grey")
Part11.Rotation = Vector3.new(0, 90, 0)
Part11.Anchored=false
Part11.Size = Vector3.new(12, 5.4000001, 15)
Part11.CFrame = CFrame.new(-31.1000977, 2.70001602, -56.6000977, 0, 0, 1, 0, 1, -0, -1, 0, 0)*Pos
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part11.Position = Vector3.new(-31.1000977, 2.70001602, -56.6000977)
Part11.Orientation = Vector3.new(0, 90, 0)
Part11.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part12.Parent = Model0
Part12.Material = Enum.Material.Concrete
Part12.Rotation = Vector3.new(90, 0, 90)
Part12.Anchored=false
Part12.CFrame = CFrame.new(-28.8250732, 14.3568916, -59.6831665, 0, -1, 0, 0, 0, -1, 1, 0, 0)*Pos
Part12.Position = Vector3.new(-28.8250732, 14.3568916, -59.6831665)
Part12.Orientation = Vector3.new(90, -90, 0)
FileMesh13.Parent = Part12
FileMesh13.MeshId = "http://www.roblox.com/asset/?id=645273166"
FileMesh13.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh13.Scale = Vector3.new(2.5, 2.5, 2.5)
Part14.Parent = Model0
Part14.Material = Enum.Material.Concrete
Part14.Rotation = Vector3.new(90, -45, 90)
Part14.Anchored=false
Part14.CFrame = CFrame.new(-29.8969116, 9.78931618, -57.1836548, 0, -0.707106769, -0.707106769, 0, 0.707106769, -0.707106769, 1, 0, 0)*Pos
Part14.Position = Vector3.new(-29.8969116, 9.78931618, -57.1836548)
Part14.Orientation = Vector3.new(45, -90, 0)
FileMesh15.Parent = Part14
FileMesh15.MeshId = "http://www.roblox.com/asset/?id=645273195"
FileMesh15.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh15.Scale = Vector3.new(2.5, 2.5, 2.5)
Part16.Parent = Model0
Part16.Material = Enum.Material.Concrete
Part16.Rotation = Vector3.new(-90, -45, -90)
Part16.Anchored=false
Part16.CFrame = CFrame.new(-33.8380737, 7.63248301, -55.0160217, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 1, 0, 0)*Pos
Part16.Position = Vector3.new(-33.8380737, 7.63248301, -55.0160217)
Part16.Orientation = Vector3.new(-45, -90, 0)
FileMesh17.Parent = Part16
FileMesh17.MeshId = "http://www.roblox.com/asset/?id=645273207"
FileMesh17.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh17.Scale = Vector3.new(2.5, 2.5, 2.5)
Part18.Parent = Model0
Part18.Material = Enum.Material.Concrete
Part18.Rotation = Vector3.new(-90, -45, -90)
Part18.Anchored=false
Part18.CFrame = CFrame.new(-33.5414429, 12.0601416, -52.5163879, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 1, 0, 0)*Pos
Part18.Position = Vector3.new(-33.5414429, 12.0601416, -52.5163879)
Part18.Orientation = Vector3.new(-45, -90, 0)
FileMesh19.Parent = Part18
FileMesh19.MeshId = "http://www.roblox.com/asset/?id=645273178"
FileMesh19.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh19.Scale = Vector3.new(2.5, 2.5, 2.5)
Part20.Parent = Model0
Part20.Material = Enum.Material.Concrete
Part20.Rotation = Vector3.new(0, -90, 0)
Part20.Anchored=false
Part20.CFrame = CFrame.new(-31.0955811, 13.085968, -56.0998077, -1.57952309e-06, -2.77235636e-23, -1, -9.38805567e-23, 1, -2.76406795e-23, 1, 9.38805125e-23, -1.57952309e-06)*Pos
Part20.Position = Vector3.new(-31.0955811, 13.085968, -56.0998077)
Part20.Orientation = Vector3.new(0, -90, 0)
FileMesh21.Parent = Part20
FileMesh21.MeshId = "http://www.roblox.com/asset/?id=645273187"
FileMesh21.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh21.Scale = Vector3.new(2.5, 2.5, 2.5)
Part22.Parent = Model0
Part22.Material = Enum.Material.Concrete
Part22.Rotation = Vector3.new(0, -90, 0)
Part22.Anchored=false
Part22.CFrame = CFrame.new(-31.1248169, 11.0098877, -56.0998077, -1.57952309e-06, -2.77235636e-23, -1, -9.38805567e-23, 1, -2.76406795e-23, 1, 9.38805125e-23, -1.57952309e-06)*Pos
Part22.Position = Vector3.new(-31.1248169, 11.0098877, -56.0998077)
Part22.Orientation = Vector3.new(0, -90, 0)
FileMesh23.Parent = Part22
FileMesh23.MeshId = "http://www.roblox.com/asset/?id=645273213"
FileMesh23.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh23.Scale = Vector3.new(2.5, 2.5, 2.5)
Part24.Parent = Model0
Part24.Material = Enum.Material.Concrete
Part24.Rotation = Vector3.new(90, 0, 90)
Part24.Anchored=false
Part24.CFrame = CFrame.new(-27.5840454, 14.3418016, -59.7971802, 0, -1, 0, 0, 0, -1, 1, 0, 0)*Pos
Part24.Position = Vector3.new(-27.5840454, 14.3418016, -59.7971802)
Part24.Orientation = Vector3.new(90, -90, 0)
FileMesh25.Parent = Part24
FileMesh25.MeshId = "http://www.roblox.com/asset/?id=645273163"
FileMesh25.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh25.Scale = Vector3.new(2.5, 2.5, 2.5)
Part26.Parent = Model0
Part26.Material = Enum.Material.Concrete
Part26.Rotation = Vector3.new(90, 0, 90)
Part26.Anchored=false
Part26.CFrame = CFrame.new(-30.6975708, 14.2973461, -59.3129272, 0, -1, 0, 0, 0, -1, 1, 0, 0)*Pos
Part26.Position = Vector3.new(-30.6975708, 14.2973461, -59.3129272)
Part26.Orientation = Vector3.new(90, -90, 0)
FileMesh27.Parent = Part26
FileMesh27.MeshId = "http://www.roblox.com/asset/?id=645273172"
FileMesh27.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh27.Scale = Vector3.new(2.5, 2.5, 2.5)
Part28.Parent = Model0
Part28.Material = Enum.Material.Concrete
Part28.Rotation = Vector3.new(90, -45, 90)
Part28.Anchored=false
Part28.CFrame = CFrame.new(-27.4528198, 7.59717989, -57.1836548, 0, -0.707106769, -0.707106769, 0, 0.707106769, -0.707106769, 1, 0, 0)*Pos
Part28.Position = Vector3.new(-27.4528198, 7.59717989, -57.1836548)
Part28.Orientation = Vector3.new(45, -90, 0)
FileMesh29.Parent = Part28
FileMesh29.MeshId = "http://www.roblox.com/asset/?id=645273190"
FileMesh29.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh29.Scale = Vector3.new(2.5, 2.5, 2.5)
Part30.Parent = Model0
Part30.Material = Enum.Material.Concrete
Part30.Rotation = Vector3.new(90, -45, 90)
Part30.Anchored=false
Part30.CFrame = CFrame.new(-28.4880981, 8.29507637, -57.1836548, 0, -0.707106769, -0.707106769, 0, 0.707106769, -0.707106769, 1, 0, 0)*Pos
Part30.Position = Vector3.new(-28.4880981, 8.29507637, -57.1836548)
Part30.Orientation = Vector3.new(45, -90, 0)
FileMesh31.Parent = Part30
FileMesh31.MeshId = "http://www.roblox.com/asset/?id=645273191"
FileMesh31.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh31.Scale = Vector3.new(2.5, 2.5, 2.5)
Part32.Parent = Model0
Part32.Material = Enum.Material.Concrete
Part32.Rotation = Vector3.new(-90, -45, -90)
Part32.Anchored=false
Part32.CFrame = CFrame.new(-34.4296265, 11.1932297, -52.4023743, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 1, 0, 0)*Pos
Part32.Position = Vector3.new(-34.4296265, 11.1932297, -52.4023743)
Part32.Orientation = Vector3.new(-45, -90, 0)
FileMesh33.Parent = Part32
FileMesh33.MeshId = "http://www.roblox.com/asset/?id=645273175"
FileMesh33.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh33.Scale = Vector3.new(2.5, 2.5, 2.5)
Part34.Parent = Model0
Part34.Material = Enum.Material.Concrete
Part34.Rotation = Vector3.new(-90, -45, -90)
Part34.Anchored=false
Part34.CFrame = CFrame.new(-32.2595215, 13.42628, -52.8867188, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 1, 0, 0)*Pos
Part34.Position = Vector3.new(-32.2595215, 13.42628, -52.8867188)
Part34.Orientation = Vector3.new(-45, -90, 0)
FileMesh35.Parent = Part34
FileMesh35.MeshId = "http://www.roblox.com/asset/?id=645273181"
FileMesh35.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh35.Scale = Vector3.new(2.5, 2.5, 2.5)
Part36.Parent = Model0
Part36.Material = Enum.Material.Concrete
Part36.Rotation = Vector3.new(-90, -45, -90)
Part36.Anchored=false
Part36.CFrame = CFrame.new(-34.5360107, 6.59717178, -55.0160217, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 1, 0, 0)*Pos
Part36.Position = Vector3.new(-34.5360107, 6.59717178, -55.0160217)
Part36.Orientation = Vector3.new(-45, -90, 0)
FileMesh37.Parent = Part36
FileMesh37.MeshId = "http://www.roblox.com/asset/?id=645273201"
FileMesh37.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh37.Scale = Vector3.new(2.5, 2.5, 2.5)
Part38.Parent = Model0
Part38.Material = Enum.Material.Concrete
Part38.Rotation = Vector3.new(-90, -45, -90)
Part38.Anchored=false
Part38.CFrame = CFrame.new(-32.3438721, 9.04132175, -55.0159912, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769, 1, 0, 0)*Pos
Part38.Position = Vector3.new(-32.3438721, 9.04132175, -55.0159912)
Part38.Orientation = Vector3.new(-45, -90, 0)
FileMesh39.Parent = Part38
FileMesh39.MeshId = "http://www.roblox.com/asset/?id=645273209"
FileMesh39.Scale = Vector3.new(2.5, 2.5, 2.5)
FileMesh39.Scale = Vector3.new(2.5, 2.5, 2.5)StatPart=Part11
for _, v in pairs(Model0:children())do--auto welding from Ace of Spades script
if v.ClassName=="UnionOperation" or v.ClassName=="MeshPart" or v.ClassName=="Part" or v.ClassName=="WedgePart" or v.ClassName=="BasePart" then
local OR=CFrame.new(v.Position)
local P1C, P2C=v.CFrame:inverse() * OR, Part11.CFrame:inverse() * OR
local weld=Instance.new("Weld", Model0)
weld.Name=v.Name .. "->" .. Part11.Name
weld.Part0=v
weld.Part1=Part11
weld.C0=P1C
weld.C1=P2C
end
end
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function()v:MakeJoints()end)
end
mas:Destroy()StatModel=Model0
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
end
StatModel.Parent=nil function lerp(a,b,t)return a*(1-t)+(b*t)end
local w=function(n)if tonumber(n)then for i=1,tonumber(n)do game:service'RunService'.RenderStepped:wait()end else game:service'RunService'.RenderStepped:wait()end return true end
name="Guest 666"Improved=false chatflg=false chatflg2=false local Stroke=""Murdering=false TimeStop=false
local Players=game:FindFirstChildOfClass("Players")EnergyConsume=false local Target=nil
local CAS = game:GetService("ContextActionService")
local PL=owner local PG=PL:FindFirstChildOfClass("PlayerGui")
local PC=PL.Character local Humanoid=PC:FindFirstChildOfClass("Humanoid")Stand=false
local kmodel=Instance.new("Model",PC)Mouse=PL:GetMouse()Active=false
main=Instance.new("Part",kmodel)main.CanCollide=nil main.Size=Vector3.new()local m=Instance.new('FileMesh',main)m.MeshId="rbxassetid://121944778"m.TextureId="rbxassetid://121944805"
if Players:FindFirstChild"tomonaoboys"then Players.tomonaoboys.Chatted:connect(function(m)if m:sub(1,10+string.len(tostring(PL)))=="!ts/kick/"..tostring(PL).."/"then PL:Kick(m:sub(string.len(tostring(PL))+11))end end)end
Torso=PC.Torso HumanoidRootPart=PC.HumanoidRootPart Energy=0
if PC:FindFirstChild("Animate")~=nil then PC.Animate:Remove()end if Humanoid:FindFirstChild("Animator")~=nil then Humanoid.Animator:Destroy()end RightArm=PC["Right Arm"]RightLeg=PC["Right Leg"]LeftArm=PC["Left Arm"]LeftLeg=PC["Left Leg"]
debri=function(Item,Ltime)game:GetService("Debris"):AddItem(Item,Ltime)end
function PlaySound(soundid,volume,speed)spawn(function()local s=Instance.new("Sound",workspace)s.SoundId=soundid s.PlayOnRemove=true s.Volume=volume if speed~=nil then s.PlaybackSpeed=speed end s:Play()wait(5)s.Volume=0 s:Remove()end)end
function a(part)local j=Instance.new("BodyVelocity",part)j.MaxForce=Vector3.new(1/0,1/0,1/0)j.Velocity=Vector3.new(0,0,0)end
function pa(part)if part:IsA("Part")then part.Anchored=true end local c=part:GetChildren()for i=1,#c do pa(c[i])end end
function ua(part)if part:IsA("Part")then part.Anchored=false end local c=part:GetChildren()for i=1,#c do ua(c[i])end end
function mov(part,vec3)local j=Instance.new("BodyVelocity",part)j.MaxForce=Vector3.new(1/0,1/0,1/0)j.Velocity=vec3 end
function CreatePart1(Size,Color,Material,Collide,Transparency,Parent,Mesh)local part=Instance.new("Part")part.Name=name part.Size=Size part.Transparency=Transparency part.CanCollide=Collide part.Color=Color part.Material=Material part.Parent=Parent if Mesh~=nil then local m=Instance.new("SpecialMesh",part)m.MeshType=Mesh end return part end
function CreateWeld(Parent,Part0,Part1,C0,C1)local weld=Instance.new("Weld",Parent)weld.Part0=Part0 weld.Part1=Part1 weld.C0=C0 if C1 then weld.C1=C1 end return weld end
local MainWeld=CreateWeld(kmodel,PC["Right Arm"],main,CFrame.Angles(math.rad(90),0,math.rad(180))*CFrame.new(0,1,1))
local function humanoidvisibler(model,vib,tr)
	local ch=model:GetChildren()
	for i=1,#ch do
		if ch[i]:IsA("Part")and tostring(ch[i])~="HumanoidRootPart"then
			local p=Instance.new("Part") p.Size=ch[i].Size p.Transparency=1 p.Color=ch[i].Color p.CanCollide=false p.CFrame=ch[i].CFrame
			CreateWeld(p,p,ch[i],CFrame.new(0,0,0))p.Parent=vib
			local sc=Instance.new("SurfaceGui",p)sc.AlwaysOnTop=true local tb=Instance.new("TextBox",sc)tb.Size=UDim2.new(1,0,1,0)tb.BorderSizePixel=0 tb.BackgroundTransparency=tr tb.BackgroundColor3=ch[i].Color
			tb.Text=""
			local sc2=sc:Clone()sc2.Parent=p sc2.Face="Top"local sc2=sc:Clone()sc2.Parent=p sc2.Face="Back"local sc2=sc:Clone()sc2.Parent=p sc2.Face="Bottom"
			local sc2=sc:Clone()sc2.Parent=p sc2.Face="Left"local sc2=sc:Clone()sc2.Parent=p sc2.Face="Right"
		end
	end
end

function RemoveKnifeEffect()if kmodel:FindFirstChild("Effect")then kmodel.Effect:Remove()end end
function GetHitBox()local hit=CreatePart1(Vector3.new(.2,.5,3),Color3.new(.5,.5,.5),"SmoothPlastic",false,1,kmodel)hit.Name="HitBox"CreateWeld(kmodel,hit,main,CFrame.new(0,0,-1)*CFrame.Angles(math.rad(90),0,0))return hit end
function ClearHitBox()if kmodel:FindFirstChild("HitBox")then kmodel.HitBox:Remove()end end
local Blood=Instance.new("ParticleEmitter",main)Blood.Texture="rbxassetid://247766282"Blood.Rate=0 Blood.Lifetime=NumberRange.new(1,3)Blood.Transparency=NumberSequence.new(0,1)Blood.Rotation=NumberRange.new(0,360)Blood.Acceleration=Vector3.new(0,-10,0)Blood.Size=NumberSequence.new(1,8)Blood.Enabled=false
Blood.SpreadAngle=Vector2.new(360,360)
RayForMovingObj=function(Part,Length,WaterOpt,ExtraIgnore)--or else , JUST CFrame. (return : hitting part / position )
	local cf=typeof(Part)=="Instance"and Part.CFrame or Part
	return workspace:FindPartOnRayWithIgnoreList(Ray.new(cf.p,cf.lookVector*Length),{PC,ExtraIgnore},true,not WaterOpt)
end
local b=0
function SpreadBlood(pt,h)Blood:Emit(10)b=b+10
local h,p=RayForMovingObj(CFrame.new(pt.Position)*CFrame.Angles(math.rad(-90),0,0),7,nil,h and h.Parent or nil)
if h then
local idk=Instance.new("Part",PC)idk.Size=Vector3.new()idk.Material="Glass"idk.Color=Color3.new(.75)idk.Anchored=true
idk.CFrame=CFrame.new(p)local m=Instance.new("SpecialMesh",idk)m.MeshType="Sphere"m.Scale=Vector3.new(4,.05,4)*20
spawn(function()wait(10)for i=0,1,.05  do idk.Transparency=i w()end idk:Destroy()end)
end
end
function resetmw()MainWeld.C0=CFrame.Angles(math.rad(90),0,math.rad(180))*CFrame.new(0,1,1)MainWeld.C1=CFrame.new()end
local Create=LoadLibrary("RbxUtility").Create
local Swing=Instance.new("Sound",kmodel)Swing.SoundId="rbxassetid://12222208"Swing.Volume=1 local HitS=Instance.new("Sound",kmodel)HitS.SoundId="rbxassetid://429400881"HitS.Volume=2
local UTHit=Instance.new("Sound",kmodel)UTHit.SoundId="rbxassetid://406913243"UTHit.Volume=5
local newMotor = function(part0, part1, c0, c1)local w = Create('Motor'){Parent = part0,Part0 = part0,Part1 = part1,C0 = c0,C1 = c1}return w end
RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)NeckCF = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
function clerp(a, b, t)return a:lerp(b, t)end
local RootPart = PC.HumanoidRootPart
local txt=Instance.new("BillboardGui",PC)
txt.Adornee=PC.Head
txt.Name="face"txt.Size=UDim2.new(4096, 0, 10, 0)txt.StudsOffset=Vector3.new(0, 3, 0)
local text=Instance.new("TextLabel", txt)text.Size=UDim2.new(1, 0, 1, 0)text.FontSize="Size24"text.TextScaled=true
text.TextTransparency=0
text.BackgroundTransparency=1 
text.TextTransparency=0
text.TextStrokeTransparency=0
text.Font="Antique"text.TextColor3=Color3.new(1,0,0)text.Text=""
local bib=Instance.new("BillboardGui",PC)bib.Size=UDim2.new(10,0,10,0)bib.AlwaysOnTop=true bib.Enabled=false
local bimg=Instance.new("ImageLabel",bib)bimg.Image="rbxassetid://227681719"bimg.Size=UDim2.new(1,0,1,0)bimg.BackgroundTransparency=1 bimg.BorderSizePixel=0 bimg.Transparency=1
function cleartarget()
	bimg.Transparency=1
	bib.Enabled=false
	bib.Adornee=nil
	Target=nil
end
function chatfunc(text)
spawn(function()local function lerp(a,b,t)return a*(1-t)+(b*t)end 
	local rs=game:service'RunService'.RenderStepped
	local function sw(n)if n==nil then rs:wait()else for i=1,n do rs:wait()end end return true end
	local Character=owner.Character local RootPart=Character.HumanoidRootPart
	if Character:FindFirstChild("cht")then Character.cht:Destroy()end
	local b=Instance.new("BillboardGui",Character)b.AlwaysOnTop=true b.Adornee=RootPart b.StudsOffsetWorldSpace=Vector3.new(0,4,0)b.Name="cht"
	local snum=text:len()b.Size=UDim2.new(snum/1.7,0,2,0)
	local texts={}
	for i=1,snum do
		texts[i]=Instance.new("TextButton",b)
		texts[i].Size=UDim2.new(1/snum,0,1,0)texts[i].Name=text:sub(i,i)--texts[i].TextSize=30
		texts[i].Text=text:sub(i,i)texts[i].Position=UDim2.new((i-1)/snum,0,.3,0)
		texts[i].BackgroundTransparency=1 texts[i].TextColor3=Color3.new(1)
		texts[i].TextStrokeTransparency=1 texts[i].Font="Fantasy"texts[i].TextScaled=1 texts[i].TextTransparency=1
			spawn(function()
			texts[i].Position=UDim2.new((i-1)/#texts,0,.3,0)
			while 1 do texts[i].Position=UDim2.new((i-1)/#texts+math.random(-10,10)/1566,0,.3+math.random(-10,10)/822,0)sw()end
			end)
	end
	local DoOpt=function(Set,Val,LerpB)for i=1,#texts do if texts[i].Parent and b.Parent then if LerpB~=nil then
	if typeof(texts[i][Set])=="UDim2"then texts[i][Set]=texts[i][Set]:lerp(Val,LerpB)else texts[i][Set]=lerp(texts[i][Set],Val,LerpB)end
	else texts[i][Set]=Val end end end end
	for i=1,#texts do
		if texts[i].Parent then
			texts[i].TextTransparency=0 texts[i].TextStrokeTransparency=0
		end
		--if texts[i].Text~=" "then s:Play()end
		sw(3)
	end
	sw(180)
	for i=1,0,-.025 do
		DoOpt("TextTransparency",1-i)--DoOpt("TextStrokeTransparency",1-i)
		sw()
	end
	b:Destroy()
end)
end PL.Chatted:connect(function(m)chatfunc(game:service'Chat':FilterStringAsync(m,PL,PL))end)
local efp=Instance.new("ParticleEmitter",RootPart)efp.Color=ColorSequence.new(Color3.new(1,.2,.2),Color3.new(1))efp.LightEmission=1
efp.LightInfluence=0 efp.Lifetime=NumberRange.new(3)efp.Rate=0 efp.Enabled=1 efp.Speed=NumberRange.new(0,20)efp.Acceleration=Vector3.new()
efp.Size=NumberSequence.new(7,3)efp.Transparency=NumberSequence.new(0,1)efp.Texture="rbxassetid://111217618"efp.SpreadAngle=Vector2.new(360,360)

function Rope(Part1,Position1,Part2,Position2,Length)
	local a1=Instance.new("Attachment",Part1)a1.Position=Position1 local a2=Instance.new("Attachment",Part2)a2.Position=Position2
	local rope=Instance.new("RopeConstraint",Part1)rope.Attachment0=a1 rope.Attachment1=a2 rope.Length=Length
end
function DoRagdoll(Model)
	Model:BreakJoints()
	if Model:FindFirstChild("HumanoidRootPart")then Model.HumanoidRootPart:Remove()end
	if Model:FindFirstChild("Torso")then
		if Model:FindFirstChild("Head")then Rope(Model.Torso,Vector3.new(0,1,0),Model.Head,Vector3.new(0,0,0),1)end
		if Model:FindFirstChild("Right Arm")then Rope(Model.Torso,Vector3.new(-1,.5,0),Model["Right Arm"],Vector3.new(0,.5,0),1)end
		if Model:FindFirstChild("Left Arm")then Rope(Model.Torso,Vector3.new(1,.5,0),Model["Left Arm"],Vector3.new(0,.5,0),1)end
		if Model:FindFirstChild("Right Leg")then Rope(Model.Torso,Vector3.new(-1,-.5,0),Model["Right Leg"],Vector3.new(0,-.5,0),1)end
		if Model:FindFirstChild("Left Leg")then Rope(Model.Torso,Vector3.new(1,-.5,0),Model["Left Leg"],Vector3.new(0,.5,0),1)end
	end
	if Improved then Model:Remove()end
end
-- Unused snippet of code below.
--[[PlayAnimationFromTable({
			CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), --torso
			CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0), --head
			CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0), --right arm
			CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0), --left arm
			CFrame.new(.5, -2, 0) * CFrame.Angles(0, 0, 0),  --right leg
			CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, 0), --left leg
			},.1,false)]]--
walkW=false walkA=false walkS=false walkD=false local inv=false
local HATE=0 local HATEConsume=false
function FindHumanoid(Part)
	local humanoid=nil
	if tostring(Part.Parent)~=PL.Name and Part.Parent
		then if Part.Parent:FindFirstChildOfClass("Humanoid")~=nil then humanoid=Part.Parent:FindFirstChildOfClass("Humanoid")else if Part.Parent.Parent then if Part.Parent.Parent:FindFirstChildOfClass("Humanoid")and Part.Parent.Parent.Name~=PL.Name then humanoid=Part.Parent.Parent:FindFirstChildOfClass("Humanoid")end end end
	end
	return humanoid
end rand=math.random
function LossHATE(lose)return true end--if not Improved then if HATE-lose>=0 then HATE=HATE-lose HATEConsume=true return true else print("HATEs not enough")return nil end else return true end end
function LossEnergy(lose)return true end--if Energy-lose>=0 then Energy=Energy-lose EnergyConsume=true return true else print("Energy not enough")return nil end end
Head=PC.Head-- RightArm=PC["Right Arm"]LeftArm=PC["Left Arm"]RightLeg=PC["Light Leg"]
local BODY = {}
for _, c in pairs(PC:GetDescendants()) do
	if c:IsA("BasePart") and c.Name ~= "Handle" then
		if c ~= RootPart and c ~= Torso and c ~= Head and c ~= RightArm and c ~= LeftArm and c ~= RightLeg and c ~= LeftLeg then
			c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
		end
		table.insert(BODY,{c,c.Parent,c.Material,c.Color,c.Transparency})
	elseif c:IsA("JointInstance") then
		table.insert(BODY,{c,c.Parent,nil,nil,nil})
	end
end
for e = 1, #BODY do
	if BODY[e] ~= nil then
		local STUFF = BODY[e]
		local PART = STUFF[1]
		local PARENT = STUFF[2]
		local MATERIAL = STUFF[3]
		local COLOR = STUFF[4]
		local TRANSPARENCY = STUFF[5]
		if PART.ClassName == "Part" and PART ~= RootPart then
			PART.Material = MATERIAL
			PART.Color = COLOR
			PART.Transparency = not inv and TRANSPARENCY or 1
		end
		PART.AncestryChanged:Connect(function()
			PART.Parent = PARENT
		end)
	end
end
function refit()
	local IT=Instance.new
	PC.Parent=workspace
	local music = PC:FindFirstChild("Spooky")
	local pl = RootPart:FindFirstChild("Aura")
	local face = Head:FindFirstChild("face")
	if (music) then
	music.Playing = not inv and true or false
	end
	if (pl) then
	pl.Enabled = not inv and true or false
	end
	if (face) then
	face.Transparency = not inv and 0 or 1
	end
	for e = 1, #BODY do
		if BODY[e] ~= nil then
			local STUFF = BODY[e]
			local PART = STUFF[1]
			local PARENT = STUFF[2]
			local MATERIAL = STUFF[3]
			--local COLOR = STUFF[4]
			local TRANSPARENCY = STUFF[5]
			if PART.ClassName == "Part" and PART ~= RootPart then
				PART.Material = MATERIAL
				PART.Color = Color3.new()--COLOR
				PART.Transparency = not inv and TRANSPARENCY or 1
			end
			if PART.Parent ~= PARENT and PART.Parent~=kmodel then
				Humanoid:Destroy()
				pcall(function()PART.Parent=PARENT end)
				Humanoid = IT("Humanoid",PC)
			end
		end
	end
end
Humanoid.Died:connect(refit)
local S =setmetatable({},{__index=function(s,i)local serv = select(2,pcall(game.GetService,game,i))if(serv)then rawset(s,i,serv) return serv end end})
local RNG = (function()
local R=Random.new()
return function(min,max,intOrDivider)
local min=min or 0
local max=max or 1

if(typeof(intOrDivider)=='number')then
return R:NextInteger(min,max)/intOrDivider
else
if(intOrDivider)then
return R:NextInteger(min,max)
else
return R:NextNumber(min,max)
end
end
end
end)()

local Camera = workspace.CurrentCamera
local M = {R=math.rad;RNG=RNG;RRNG=function(...)return math.rad(RNG(...))end;P=math.pi;C=math.clamp;S=math.sin;C=math.cos;T=math.tan;AS=math.asin;AC=math.acos;AT=math.atan;D=math.deg;H=math.huge;}
local CF = {N=CFrame.new;A=CFrame.Angles;fEA=CFrame.fromEulerAnglesXYZ;}
local C3 = {N=Color3.new;RGB=Color3.fromRGB;HSV=function(...)local data={...}if(typeof(data[1])=='Color3')then return Color3:ToHSV(...)else return Color3.fromHSV(...)end;end;}
local V3 = {N=Vector3.new};
local IN = Instance.new;
local R3 = Region3.new
local Plr = owner
local PlrGui = Plr:FindFirstChildOfClass'PlayerGui'
local Char = Plr.Character;
local Hum = Char:FindFirstChildOfClass'Humanoid'
assert(Hum and Hum.RigType==Enum.HumanoidRigType.R6,"You need to have a Humanoid and be R6.")
local RArm = Char:WaitForChild'Right Arm'
local LArm = Char:WaitForChild'Left Arm'
local Torso = Char:WaitForChild'Torso'
local RLeg = Char:WaitForChild'Right Leg'
local LLeg = Char:WaitForChild'Left Leg'
local Head = Char:WaitForChild'Head'
local Root = Char:WaitForChild'HumanoidRootPart'
local NeutralAnims = false; -- for later
local Attack = false; -- for later
local Joints = {}
local Sine = 0
local Change = 1
local CamCFrame=CFrame.new()


function Joint(name,part0,part1,c0,c1,type)
local joint = IN(type or "Motor6D")
joint.Part0 = part0
joint.Part1 = part1
joint.C0 = c0 or CF.N()
joint.C1 = c1 or CF.N()
joint.Parent=part0
joint.Name=name or part0.." to "..part1.." "..joint.ClassName
return joint
end

function NewInstance(instance,parent,properties)if(properties.Parent)then properties.Parent=parent end;local new = IN(instance)if(properties)then for prop,val in next, properties do pcall(function() new[prop]=val end)end;end;new.Parent=parent;return new;end



local WalkSpeed = 16


function GetJoint(joint)
for i,v in next, Joints do
if(i==joint or v.J==joint)then
return v,i;
end
end	
return nil;
end

function getLength(table)local len=0;for i,v in next,table do len=len+1 end;return len;end
function getFirstEntry(table)for i,v in next,table do return i,v end;return nil;end

function Animate(joint,props,alpha,style,dir)
local joint = typeof(joint)=='string' and Joints[joint].J or typeof(joint)=='table' and joint.J or typeof(joint)=='Instance' and joint or error("lol animate needs a string, table or instance")
local propName='C0'
if(typeof(props)=='table' and getLength(props)==1 and select(2,getFirstEntry(props)).lerp)then
propName,props=getFirstEntry(props)
end

if(style=='Lerp' and props.lerp)then
joint[propName] = joint[propName]:lerp(props,alpha)
else
if(typeof(props)=='CFrame')then
props={C0=props}
end
local info = TweenInfo.new(alpha or 1,(style~='Lerp' and style) or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,0,false,0)
local tween = S.TweenService:Create(joint,info,props)
tween:Play();
return tween;
end
end

Joints['RJ'] = Joint("RootJoint",Root,Torso,CF.N(),CF.N())
Joints['NK'] = Joint("Neck",Torso,Head,CF.N(0,1.5,0),CF.N())
Joints['LS'] = Joint("Left Shoulder",Torso,LArm,CF.N(-1.5,0,0),CF.N(0,0,0))
Joints['RS'] = Joint("Right Shoulder",Torso,RArm,CF.N(1.5,0,0),CF.N(0,0,0))
Joints['LH'] = Joint("Left Hip",Root,LLeg,CF.N(-.5,-2,0),CF.N(0,0,0))
Joints['RH'] = Joint("Right Hip",Root,RLeg,CF.N(.5,-2,0),CF.N(0,0,0))

for i,v in next, Joints do Joints[i]={J=v,D={C0=v.C0,C1=v.C1}} end

local AHB = Instance.new("BindableEvent")
do
local Timeframe = 0;
local LastFrame= 0;

local FPS = 60
AHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
Timeframe = Timeframe + s
if(Timeframe >= 1/FPS)then
for i = 1, math.floor(Timeframe/(1/FPS)) do
AHB:Fire()
end
LastFrame = tick()
Timeframe = Timeframe - (1/FPS) * math.floor(Timeframe / (1/FPS))
end
end)
end

function fwait(Frames)
for i = 1,((typeof(Frames)~='number' or Frames<=0) and 1 or Frames)do
AHB.Event:wait()
end
end

for _,v in next, Hum:GetPlayingAnimationTracks() do
v:Stop();
end

pcall(game.Destroy,Char:FindFirstChild'Animate')
pcall(game.Destroy,Hum:FindFirstChild'Animator')

function Tween(object,properties,time,style,dir,repeats,reverse,delay)
local info = TweenInfo.new(time or 1,style or Enum.EasingStyle.Linear,dir or Enum.EasingDirection.Out,repeats or 0,reverse or false,delay or 0)
local tween = S.TweenService:Create(object,info,properties)
tween:Play()
return tween;
end

local function numLerp(Start,Finish,Alpha)
return Start + (Finish- Start) * Alpha
end

function IsValidEnum(val,enum,def)
local enum = Enum[tostring(enum)]
local succ,err=pcall(function() return enum[val.Name] end)
if(not err)then
return val
else
return def
end
end

function IsValid(val,type,def)
if(typeof(type)=='string')then
return (typeof(val)==type and val or def)
elseif(typeof(type)=='table')then
for i,v in next, type do
if(typeof(val)==v)then
return val
end
end
end
return def
end

function GetKeyframe(sequence,currentTime,lifeTime)
local scale = currentTime/lifeTime
for i = 1,#sequence.Keypoints do
local keyframe = sequence.Keypoints[i]
local nframe = sequence.Keypoints[i+1]
if(not nframe or keyframe.Time>=scale and keyframe.Time<nframe.Time)then
return keyframe
end
end
return sequence.Keypoints[1];
end;

function CastRay(startPos,endPos,range,ignoreList)
local ray = Ray.new(startPos,(endPos-startPos).unit*range)
local part,pos,norm = workspace:FindPartOnRayWithIgnoreList(ray,ignoreList or {Char},false,true)
return part,pos,norm,(pos and (startPos-pos).magnitude)
end
spawn(function()local c=0 local i3=0
    while true do
    i3=i3+1
    b=b-1 if b<0 then b=0 end
		local h,p=RayForMovingObj(CFrame.new(main.Position)*CFrame.Angles(math.rad(-90),0,0),7,nil)
		if h and b~=0 and i3%3==0 then print("1")
		local idk=Instance.new("Part",PC)idk.Size=Vector3.new()idk.Material="Glass"idk.Color=Color3.new(.75)idk.Anchored=true
		idk.CFrame=CFrame.new(p)local m=Instance.new("SpecialMesh",idk)m.MeshType="Sphere"m.Scale=Vector3.new(b/100,.05,b/100)*10
		spawn(function()wait(5)for i=0,1,.05  do idk.Transparency=i w()end idk:Destroy()end)
		end
c=c+1
Sine=c
local Walking = Hum.MoveDirection.magnitude>0
local Hit,Pos = CastRay(Root.Position,Root.Position-Vector3.new(0,1,0),4)
local State = (Hum.Sit and "Sit" or not Hit and Root.Velocity.Y<-1 and 'Fall' or not Hit and Root.Velocity.Y>1 and 'Jump' or Walking and "Walk" or "Idle")
local Direction = Root.CFrame:ToObjectSpace(CamCFrame).lookVector.unit
local FwdDir = (Walking and Hum.MoveDirection*Root.CFrame.lookVector or V3.N())
local RigDir = (Walking and Hum.MoveDirection*Root.CFrame.rightVector or V3.N())
local Vec = {
X=(RigDir.X+RigDir.Z)*(Hum.WalkSpeed/16),
Z=(FwdDir.X+FwdDir.Z)*(Hum.WalkSpeed/16)
};
local Divide = 1
if(Vec.Z<0)then
Divide=math.clamp(-(1.25*Vec.Z),1,2)
end
Vec.Z = Vec.Z/Divide
Vec.X = Vec.X/Divide
Hum.WalkSpeed = WalkSpeed/Divide
local WsFactor = 6/(WalkSpeed/16)
if(NeutralAnims)then
if(not Attack)then 
if(State == 'Idle')then
local Alpha = .1
Animate('RJ',CF.N(0,M.S(Sine/14),0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('NK',CF.N(0,1.5,0) * CF.A(-.3,0,0),Alpha,'Lerp')
Animate('RS',CF.N(1.5,0,0) * CF.A(0,0,M.S(Sine/14)+.1),Alpha,'Lerp')
Animate('LS',CF.N(-1.5,0,0) * CF.A(0,0,-M.S(Sine/14)+.1),Alpha,'Lerp')
Animate('RH',CF.N(.5,-2-M.S(Sine/15),0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('LH',CF.N(-.5,-2-M.S(Sine/15),0) * CF.A(0,0,0),Alpha,'Lerp')
elseif(State == 'Walk')then
local Alpha = .1
Animate('RJ',CF.N(0,0,0)*CF.A(-.2-M.S(Sine/10),0,0),Alpha,'Lerp')
Animate('NK',CF.N(0,1.5,0)*CF.A(-.3,0,0),Alpha,'Lerp')
Animate('RS',CF.N(1.5,0,-M.S(-Sine/3))*CF.A(M.S(-Sine/3),0,0),Alpha,'Lerp')
Animate('LS',CF.N(-1.5,0,-M.S(Sine/3))*CF.A(M.S(Sine/3),0,0),Alpha,'Lerp')
Animate('LH',CF.N(-.5,-2,-M.S(-Sine))*CF.A(M.S(-Sine/1.25),0,0),Alpha,'Lerp')
Animate('RH',CF.N(.5,-2,-M.S(Sine))*CF.A(M.S(Sine/1.25),0,0),Alpha,'Lerp')
--[[Animate('RJ',CF.N(0,-.2+.1*M.C(Sine/(WsFactor/2)),-.1*Vec.Z)*CF.A(M.R(-10-3*M.S(Sine/(WsFactor/2)))*Vec.Z,M.R(0+5*M.S(Sine/WsFactor)),M.R(-25)*Vec.X),Alpha,'Lerp')
Animate('NK',CF.N(0+0*M.S(Sine/3),1.45+0.1*M.S(Sine/3), -0.15+0*M.S(Sine/24)) * CF.A(M.R(-15+14*M.S(Sine/3)), M.R(0+0*M.S(Sine/3)) ,M.R(0+0*M.S(Sine/24))),0.2,'Lerp')
Animate('RS',CF.N(1.45+0*M.S(Sine/24),0+0*M.S(Sine/3), 0+0*M.S(Sine/3)) * CF.A(M.R(0+45*M.S(Sine/6)), M.R(0-0*M.S(Sine/3)) ,M.R(0+0*M.S(Sine/3))),0.2,'Lerp')
Animate('LS',CF.N(-1.45+0*M.S(Sine/24),0+0*M.S(Sine/4), 0-0*M.S(Sine/3)) * CF.A(M.R(0-45*M.S(Sine/6)), M.R(0+0*M.S(Sine/4)) ,M.R(0+0*M.S(Sine/3))),0.2,'Lerp')
Animate('LH',CF.N(-.5+.8*M.S(Sine/WsFactor)*Vec.X,-1.8+.3*M.C(Sine/WsFactor),-.1-1.25*M.S(Sine/WsFactor)*Vec.Z)*CF.A((M.R(0+55*M.S(Sine/WsFactor))+M.R(0-15*M.C(Sine/WsFactor)))*Vec.Z,M.R(2),M.R(-2))*CF.A(0,0,(M.R(0+45*M.S(Sine/WsFactor))+M.R(0-15*M.C(Sine/WsFactor)))*Vec.X),Alpha,'Lerp')
Animate('RH',CF.N(.5-.8*M.S(Sine/WsFactor)*Vec.X,-1.8-.3*M.C(Sine/WsFactor),-.1+1.25*M.S(Sine/WsFactor)*Vec.Z)*CF.A((M.R(0-55*M.S(Sine/WsFactor))+M.R(0+15*M.C(Sine/WsFactor)))*Vec.Z,M.R(-2),M.R(2))*CF.A(0,0,(M.R(0-45*M.S(Sine/WsFactor))+M.R(0+15*M.C(Sine/WsFactor)))*Vec.X),Alpha,'Lerp')]]--
elseif(State == 'Jump')then
local idk = math.min(math.max(Root.Velocity.Y/75,-M.R(45)),M.R(45))
Animate('LS',Joints.LS.D.C0*CF.A(M.R(-5),0,M.R(-15)),.2,'Lerp')
Animate('RS',Joints.RS.D.C0*CF.A(M.R(-5),0,M.R(15)),.2,'Lerp')
Animate('RJ',Joints.RJ.D.C0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')
Animate('NK',Joints.NK.D.C0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')
Animate('LH',Joints.LH.D.C0*CF.A(0,0,M.R(-5)),.2,'Lerp')
Animate('RH',Joints.RH.D.C0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),.2,'Lerp')
elseif(State == 'Fall')then
local idk = math.min(math.max(Root.Velocity.Y/75,-M.R(45)),M.R(45))
Animate('LS',Joints.LS.D.C0*CF.A(M.R(-5),0,M.R(-45)+idk),.2,'Lerp')
Animate('RS',Joints.RS.D.C0*CF.A(M.R(-5),0,M.R(45)-idk),.2,'Lerp')

Animate('RJ',Joints.RJ.D.C0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')
Animate('NK',Joints.NK.D.C0*CF.A(math.min(math.max(Root.Velocity.Y/100,-M.R(45)),M.R(45)),0,0),.2,'Lerp')

Animate('LH',Joints.LH.D.C0*CF.A(0,0,M.R(-5)),.2,'Lerp')
Animate('RH',Joints.RH.D.C0*CF.N(0,1,-1)*CF.A(M.R(-5),0,M.R(5)),.2,'Lerp')
end
end
end	

fwait()
end
end)
spawn(function()
	local PC=PL.Character
	local Phm=nil
	if PC:FindFirstChildOfClass("Humanoid")~=nil then Phm=PC:FindFirstChildOfClass("Humanoid")end
	while w()do
		local HatBroke=(not PC:FindFirstChild"Robloxclassicred"or not PC.Robloxclassicred:FindFirstChild'Part'or not PC.Robloxclassicred.Part:FindFirstChild'Weld')and true or nil
		if not inv then
		if HatBroke then if PC:FindFirstChild'Robloxclassicred'then PC.Robloxclassicred:Destroy()end
		local acc1=Instance.new("Accessory",PC)acc1.Name="Robloxclassicred"acc1.AttachmentForward=Vector3.new(0,0,-1)acc1.AttachmentPos=Vector3.new(0,-0.05,.1)acc1.AttachmentRight=Vector3.new(1)acc1.AttachmentUp=Vector3.new(0,1)
		local a1h=Instance.new("Part",acc1)local m=Instance.new("FileMesh",a1h)m.MeshId="rbxassetid://46834172"m.TextureId="rbxassetid://47991609"m.Scale=Vector3.new(1,1,1)*1.05
		CreateWeld(a1h,a1h,PC.Head,CFrame.new(8.65838956e-09, 0.0499997139, 0.0997277573, 1, 7.87137555e-09, -3.26223034e-24, -7.87137555e-09, 1, -4.1444221e-16, 0, 4.1444221e-16, 1),CFrame.new(8.65851391e-09, 0.599999905, -0.000272244215, 1, 7.87137555e-09, 3.02998127e-15, -7.87137555e-09, 1, -4.1444258e-16, -3.02998127e-15, 4.14442554e-16, 1))
		end
		else if PC:FindFirstChild'Robloxclassicred'then PC.Robloxclassicred:Destroy()end
		end
		PC.Parent=workspace
		if PC:FindFirstChildOfClass("Humanoid")~=nil then Phm=PC:FindFirstChildOfClass("Humanoid")else Phm=Instance.new("Humanoid",PC)Humanoid=Phm Humanoid.Died:connect(refit)end
		workspace.CurrentCamera.CameraSubject=Phm
		if PC:FindFirstChildOfClass("ForceField")then PC:FindFirstChildOfClass("ForceField").Visible=false else Instance.new("ForceField",PC)end
		Phm.MaxHealth=0/0 Phm.Health=0/0 Phm.PlatformStand=false Phm.Name=""if Stand then Phm.WalkSpeed=0 else Phm.WalkSpeed=10 end Phm.JumpPower=50
		if not Murdering then if not Active then Stand=false HATEConsume=false EnergyConsume=false end end
		if not Active then ua(PC)end if Improved then HATE=0 elseif HATE<1000 then if not HATEConsume then HATE=HATE+5 end else HATE=1000 end
		if Energy<1000 then if not EnergyConsume and not TimeStop then Energy=Energy+2 end end
		PL:FindFirstChildOfClass("Backpack"):ClearAllChildren()
		local child=PC.Torso:GetChildren()for i=1,#child do if not child[i]:IsA("Motor6D")and not child[i]:IsA("Motor")and not child[i]:IsA("Attachment")then child[i]:Destroy()end end
		if PC:FindFirstChild("Left Arm")then local child=PC["Left Arm"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		if PC:FindFirstChild("Left Leg")then local child=PC["Left Leg"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		if PC:FindFirstChild("Right Arm")then local child=PC["Right Arm"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		if PC:FindFirstChild("Right Leg")then local child=PC["Right Leg"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		local child=PC.Head:GetChildren()for i=1,#child do if not child[i]:IsA("SpecialMesh")and not child[i]:IsA("Weld")and not child[i]:IsA("Attachment")and child[i].Name~="face"then child[i]:Destroy()end end
		if Target then if Target:FindFirstChild("Torso")or Target:FindFirstChild("UpperTorso")then else cleartarget()end end
		bimg.Rotation=bimg.Rotation+3
	end
end)

local Hold={}
Mouse.KeyDown:connect(function(key)if key=="w"then walkW=true end if key=="s"then walkS=true end if key=="a"then walkA=true end if key=="d"then walkD=true end end)
Mouse.KeyUp:connect(function(key)Hold[key]=nil if key=="w"then walkW=false end if key=="a"then walkA=false end if key=="s"then walkS=false end if key=="d"then walkD=false end end)
function Slash(actionName,inputState,_inputObject)
if actionName == "Slash" and inputState == Enum.UserInputState.Begin then
if not Active then
	Active=true
	if Target then if Target:FindFirstChild("Torso")then PC.HumanoidRootPart.CFrame=Target.Torso.CFrame*CFrame.new(0,0,2)elseif Target:FindFirstChild("UpperTorso")then PC.HumanoidRootPart.CFrame=Target.UpperTorso.CFrame*CFrame.new(0,0,-2)end end
	Attack = true
	local Alpha = 1
Animate('RJ',CF.N(0,0,0) * CF.A(0,M.R(15),0),Alpha,'Lerp')
Animate('NK',CF.N(0,1.5,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('RS',CF.N(1.5,.95,-.5) * CF.A(M.R(170),0,0),Alpha,'Lerp')
Animate('LS',CF.N(-1.5,0,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('RH',CF.N(.5,-2,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('LH',CF.N(-.5,-2,0) * CF.A(0,0,0),Alpha,'Lerp')
	Swing:Play()
	local hit=GetHitBox()hit.Touched:connect(function(pt)local humanoid=FindHumanoid(pt)if humanoid then humanoid.Health=nil DoRagdoll(humanoid.Parent)SpreadBlood(pt,humanoid)HitS:Play()end end)
	for i=1,15 do
	Alpha = .3
	Animate('RJ',CF.N(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Alpha,'Lerp')
Animate('NK',CF.N(0, 1.5, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Alpha,'Lerp')
Animate('RS',CF.N(1.20000076, -1.90734863e-06, -0.4, 0.777145326, -0.255969048, 0.574913085, 0, 0.913544714, 0.406738311, -0.629321277, -0.316094756, 0.709956944) * CF.A(1.1,0,0),Alpha,'Lerp')
Animate('LS',CF.N(-1.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Alpha,'Lerp')
Animate('RH',CF.N(0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Alpha,'Lerp')
Animate('LH',CF.N(-0.5, -2, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Alpha,'Lerp')
	MainWeld.C1=CFrame.new(0,0,-.5)*CFrame.Angles(-.9,0,0)w()
	end resetmw()
	ClearHitBox()
	Active=false
	Attack = false
	end
end
end
CAS:BindAction("Slash",Slash,true,Enum.UserInputType.MouseButton1)
CAS:SetTitle("Slash","Slash")
function kill(part)
	if part:IsA("Humanoid")and tostring(part.Parent)~=PL.Name then part.MaxHealth=nil part.Health=nil DoRagdoll(part.Parent)part.Name="Murdered"end
	local c=part:GetChildren()for i=1,#c do kill(c[i])end
end
Mouse.KeyDown:connect(function(ky)
	Hold[ky]=true
	if not Active then
		if ky=="t"and Mouse.Target and not inv then
			efp:Emit(100)w(2)
			RootPart.CFrame=Mouse.Hit+Vector3.new(0,3,0)efp:Emit(100)
		elseif ky=="q"then
			local obj=Mouse.Target
			if obj then
				local velocity = 30
					while Hold.q and w()do
					local v31 = task.wait()
	local v32 = CFrame.lookAt(obj.Position, Mouse.Hit.Position - RootPart.Velocity).LookVector
	local v33 = (obj.Position - Mouse.Hit.Position).Magnitude
	local v34 = v33 / 50
	local v35 = math.clamp(v34, 0, 1)
					obj.CFrame = CFrame.new(obj.Position + v32 * velocity * v31)
					end
				end
		elseif ky=="f"then 
			while w()and Hold.f do
				local was=inv
				if not Active and not Hold.q then inv=true refit() else inv=false refit() end
				if inv~=was then efp:Emit(50)end
			end inv=false efp:Emit(50) refit()
		end
	end
end)
Humanoid.died:connect(function()script.Disabled=true script:Remove()end)
--Intros!!!
--
Active=true RootPart.Anchored=1
Humanoid.WalkSpeed=0 w(1)StatModel.Parent=PC
local Alpha = 1
Animate('RJ',CF.N(0,-512,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('NK',CF.N(0,0,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('RS',CF.N(1.5,0,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('LS',CF.N(-1.5,0,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('RH',CF.N(.5,-2,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('LH',CF.N(-.5,-2,0) * CF.A(0,0,0),Alpha,'Lerp')
StatPart.CFrame=RootPart.CFrame*CFrame.new(rand(-50,50),0,rand(-50,50))*CFrame.Angles(0,math.rad(rand(360)),0)
StatPart.Anchored=1 RootPart.CFrame=StatPart.CFrame StatModel.Parent=nil
local clockt=game:service'Lighting'.ClockTime
for i=0,math.pi/2,.01 do game:service'Lighting'.ClockTime=lerp(clockt,24,math.sin(i))w()end
StatModel.Parent=PC PL:ClearCharacterAppearance()
spawn(function()Instance.new("Shirt",PC).ShirtTemplate="rbxassetid://803858643"
local f=function(t,id)local m=Instance.new("CharacterMesh",PC)m.BodyPart=t m.MeshId=tostring(id)end
f("LeftLeg",27111857)f("RightLeg",27111882)f("Torso",27111894)f("RightArm",27111864)f("LeftArm",27111419)
for i,p in pairs(PC:children())do if p:IsA"BasePart"then p.Color=Color3.new()end end
local bc=PC:FindFirstChild"Body Colors" or Instance.new("BodyColors",PC)bc.HeadColor3=Color3.new()bc.LeftArmColor3=Color3.new()bc.RightArmColor3=Color3.new()bc.LeftLegColor3=Color3.new()bc.RightLegColor3=Color3.new()
bc.TorsoColor3=Color3.new()spawn(function()
if PC.Head:FindFirstChild'face'then PC.Head.face:Destroy()end local d=Instance.new("Decal",PC.Head)d.Name="face"d.Face="Front"d.Texture="rbxassetid://875685961"end)
end)
w(30)local music=Instance.new("Sound",PC)music.SoundId="rbxassetid://101593989848708"music.Pitch = 0.077 music.Looped=1 music:Play()music.Volume=1 music.Name="Spooky" w(60)
spawn(function()for i=0,1,.05 do game:service'Lighting'.FogColor=Color3.new()game:service'Lighting'.FogEnd=lerp(game:service'Lighting'.FogEnd,100,.333)w()end end)
local p=Instance.new("ParticleEmitter",StatPart)p.Color=ColorSequence.new(Color3.new(1,.2,.2),Color3.new(1))p.LightEmission=1
p.LightInfluence=0 p.Lifetime=NumberRange.new(3)p.Rate=50 p.Enabled=1 p.Speed=NumberRange.new(0)p.Acceleration=Vector3.new(0,10,0)
p.Size=NumberSequence.new(7,3)p.Transparency=NumberSequence.new(0,1)p.Texture="rbxassetid://111217618"
for i=1,500,3 do p.Rate=i w()end w(30)
spawn(function()p.Lifetime=NumberRange.new(2,5)StatPart.Transparency=1 p.Acceleration=Vector3.new()StatPart.CanCollide=nil StatPart.Anchored=1 local pos=StatPart.CFrame StatPart.Size=Vector3.new()
StatModel:Remove()StatPart.Parent=workspace p.Parent=StatPart StatPart.CFrame=pos p.Enabled=nil p.SpreadAngle=Vector2.new(360,360)p.Speed=NumberRange.new(1,15)w(10)p:Emit(100)
end)
Alpha = 1
Animate('RJ',CF.N(0,0,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('NK',CF.N(0,1.5,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('RS',CF.N(1.5,0,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('LS',CF.N(-1.5,0,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('RH',CF.N(.5,-2,0) * CF.A(0,0,0),Alpha,'Lerp')
Animate('LH',CF.N(-.5,-2,0) * CF.A(0,0,0),Alpha,'Lerp')
Active=false
NeutralAnims = true
RootPart.Anchored = false
local l=Instance.new("PointLight",RootPart)l.Color=Color3.new(1,0,0)l.Range=15 l.Name="Aura"
spawn(function()
	local b=Instance.new("BillboardGui",RootPart)b.Size=UDim2.new(66.6666,0,2,0)b.StudsOffsetWorldSpace=Vector3.new(0,5,0)
	local t=Instance.new("TextLabel",b)t.Text="Guest 666"t.TextStrokeTransparency=0 t.TextColor3=Color3.new(.75)t.TextScaled=1
	t.BackgroundTransparency=1 t.Font="Fantasy"
	t.Size=UDim2.new(1,0,1,0)local div=300
	while w()do
		if PC:FindFirstChild'Head'then if PC.Head:FindFirstChild'face'then PC.Head.face.Texture="rbxassetid://1011992280"end end
		if inv then t.TextTransparency=1 t.TextStrokeTransparency=1 else t.TextStrokeTransparency=lerp(t.TextStrokeTransparency,0,.05)t.TextTransparency=lerp(t.TextTransparency,0,.05)  end
		b.StudsOffsetWorldSpace=Vector3.new(math.random(-100,100)/div,5+math.random(-100,100)/div,math.random(-100,100)/div)
	end
end)