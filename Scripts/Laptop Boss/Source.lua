--made by kip
script.Parent = game.ServerScriptService
wait(1 / 60)
local http = game:GetService("HttpService")
local header = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/Scripts/Laptop%20Boss/Phases/"
local phases = {}
for i = 2,6 do
local source = http:RequestAsync({
	Url = header..tostring(i)..".lua",
	Method = "GET"
})
phases[i] = source.Body
end
_G.Phases = phases
warn("originally made by Dion(@Dionnooo), edited and fixed by kiprovka26. A fixed version of Laptop Boss + FULL edition.")
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
script.Parent = Model0
Part1 = Instance.new("Part")
Decal2 = Instance.new("Decal")
Decal3 = Instance.new("Decal")
Decal4 = Instance.new("Decal")
Decal5 = Instance.new("Decal")
Decal6 = Instance.new("Decal")
Decal7 = Instance.new("Decal")
Decal8 = Instance.new("Decal")
Decal9 = Instance.new("Decal")
Decal10 = Instance.new("Decal")
Part11 = Instance.new("Part")
Decal12 = Instance.new("Decal")
Part13 = Instance.new("Part")
Script14 = Instance.new("Script")
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
Sound26 = Instance.new("Sound")
Sound27 = Instance.new("Sound")
Sound28 = Instance.new("Sound")
Sound29 = Instance.new("Sound")
Sound31 = Instance.new("Sound")
Sound33 = Instance.new("Sound")
Sound34 = Instance.new("Sound")
Sound35 = Instance.new("Sound")
Sound36 = Instance.new("Sound")
Sound37 = Instance.new("Sound")
Sound39 = Instance.new("Sound")
Sound41 = Instance.new("Sound")
Sound43 = Instance.new("Sound")
Sound44 = Instance.new("Sound")
Sound45 = Instance.new("Sound")
Model46 = Instance.new("Model")
_G.Model1 = Model46
WedgePart47 = Instance.new("WedgePart")
WedgePart48 = Instance.new("WedgePart")
WedgePart49 = Instance.new("WedgePart")
WedgePart50 = Instance.new("WedgePart")
WedgePart51 = Instance.new("WedgePart")
WedgePart52 = Instance.new("WedgePart")
WedgePart53 = Instance.new("WedgePart")
WedgePart54 = Instance.new("WedgePart")
WedgePart55 = Instance.new("WedgePart")
WedgePart56 = Instance.new("WedgePart")
WedgePart57 = Instance.new("WedgePart")
WedgePart58 = Instance.new("WedgePart")
WedgePart59 = Instance.new("WedgePart")
WedgePart60 = Instance.new("WedgePart")
WedgePart61 = Instance.new("WedgePart")
WedgePart62 = Instance.new("WedgePart")
WedgePart63 = Instance.new("WedgePart")
WedgePart64 = Instance.new("WedgePart")
WedgePart65 = Instance.new("WedgePart")
Model0.Name = "leppie"
Model0.Parent = mas
Model0.PrimaryPart = Part11
Part1.Name = "Screen"
Part1.Parent = Model0
Part1.CFrame = CFrame.new(0.000140000004, -31.3689041, -34.280407, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part1.Orientation = Vector3.new(0, 180, 0)
Part1.Position = Vector3.new(0.00014000000373926014, -31.36890411376953, -34.2804069519043)
Part1.Rotation = Vector3.new(180, 0, 180)
Part1.Color = Color3.new(0.458824, 0, 0)
Part1.Size = Vector3.new(75.87995910644531, 55.93002700805664, 1.3599876165390015)
Part1.Anchored = true
Part1.BottomSurface = Enum.SurfaceType.Smooth
Part1.BrickColor = BrickColor.new("Maroon")
Part1.TopSurface = Enum.SurfaceType.Smooth
Part1.brickColor = BrickColor.new("Maroon")
Decal2.Name = "face"
Decal2.Parent = Part1
Decal2.Texture = "rbxassetid://90662479"
Decal3.Name = "eyes"
Decal3.Parent = Part1
Decal3.Texture = "rbxassetid://90662469"
Decal4.Name = "mouth"
Decal4.Parent = Part1
Decal5.Name = "breek2"
Decal5.Parent = Part1
Decal5.Texture = "rbxassetid://247628574"
Decal5.Transparency = 1
Decal6.Name = "breek"
Decal6.Parent = Part1
Decal6.Texture = "rbxassetid://1186442668"
Decal6.Transparency = 1
Decal7.Name = "breek3"
Decal7.Parent = Part1
Decal7.Texture = "rbxassetid://58159420"
Decal7.Transparency = 1
Decal8.Name = "breek4"
Decal8.Parent = Part1
Decal8.Texture = "rbxassetid://6552137211"
Decal8.Transparency = 1
Decal9.Name = "breek5"
Decal9.Parent = Part1
Decal9.Texture = "rbxassetid://6117188429"
Decal9.Transparency = 1
Decal10.Name = "breek6"
Decal10.Parent = Part1
Decal10.Texture = "rbxassetid://90120724992465"
Decal10.Transparency = 1
Part11.Name = "Keyboard"
Part11.Parent = Model0
Part11.CFrame = CFrame.new(0.000140000004, -61.8652878, 0.474956989, -1, 0, 0, 0, 1, 0, 0, 0, -1)
Part11.Orientation = Vector3.new(0, 180, 0)
Part11.Position = Vector3.new(0.00014000000373926014, -61.86528778076172, 0.4749569892883301)
Part11.Rotation = Vector3.new(180, 0, 180)
Part11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part11.Size = Vector3.new(79.12997436523438, 1, 69.22998809814453)
Part11.Anchored = true
Part11.BottomSurface = Enum.SurfaceType.Smooth
Part11.BrickColor = BrickColor.new("Really black")
Part11.TopSurface = Enum.SurfaceType.Smooth
Part11.brickColor = BrickColor.new("Really black")
Decal12.Parent = Part11
Decal12.Texture = "http://www.roblox.com/asset/?id=244679164"
Decal12.Face = Enum.NormalId.Top
Part13.Name = "Toppart"
Part13.Parent = Model0
Part13.CFrame = CFrame.new(0.000140000004, -31.3689041, -34.4079094, 1, 0, 0, 0, -1, 0, 0, 0, -1)
Part13.Orientation = Vector3.new(0, 180, 180)
Part13.Position = Vector3.new(0.00014000000373926014, -31.36890411376953, -34.40790939331055)
Part13.Rotation = Vector3.new(180, 0, 0)
Part13.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
Part13.Size = Vector3.new(79.12997436523438, 60.32002639770508, 1.3599876165390015)
Part13.Anchored = true
Part13.BottomSurface = Enum.SurfaceType.Smooth
Part13.BrickColor = BrickColor.new("Really black")
Part13.TopSurface = Enum.SurfaceType.Smooth
Part13.brickColor = BrickColor.new("Really black")
Script14.Parent = Model0
table.insert(cors,sandbox(Script14,function()
	local base = workspace:FindFirstChild("Baseplate") or workspace:FindFirstChild("Base")
	_G.base = base
	local originColor,originSize,originMaterial,originBottomSurface,originTopSurface,originPos = base.Color, base.Size, base.Material, base.BottomSurface, base.TopSurface, base.Position
	_G.baseStuff = {originColor,originSize,originMaterial,originBottomSurface,originTopSurface,originPos}
	local tween = game.TweenService:Create(base, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),{Color = Color3.new(0.388235, 0.372549, 0.384314), Size = Vector3.new(512,20,512), Position = Vector3.new(0,-10,0)})
	tween:Play()
	base.TopSurface = "Studs"
	base.BottomSurface = "Inlet"
	base.Material = "Plastic"
	wait(1)
	leppie = script.Parent
	keyboard = script.Parent.Keyboard
	screen = script.Parent.Screen
	top = script.Parent.Toppart
	eyes = leppie.Screen.eyes
	face = leppie.Screen.face
	mouth = leppie.Screen.mouth
	attacks = nil
	-- Grenade Object
	Part0 = Instance.new("Part")
	SpecialMesh1 = Instance.new("SpecialMesh")
	Trail2 = Instance.new("Trail")
	Sound3 = Instance.new("Sound")
	Part0.Name = "Grenade"
	Part0.CFrame = CFrame.new(50.0461273, 235.312012, 25.2450256, -0.820756614, -0.0315764733, -0.570404649, -0.561576366, -0.138633698, 0.815728188, -0.104835078, 0.98984015, 0.0960519761)
	Part0.Orientation = Vector3.new(-54.659000396728516, -80.44100189208984, -103.86699676513672)
	Part0.Position = Vector3.new(50.04612731933594, 235.31201171875, 25.245025634765625)
	Part0.Rotation = Vector3.new(-83.28399658203125, -34.77799987792969, 177.7969970703125)
	Part0.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
	Part0.Velocity = Vector3.new(0.04646467790007591, 0.00033079436980187893, 0.03081972524523735)
	Part0.Size = Vector3.new(1.4374983310699463, 2.299997091293335, 1.4374983310699463)
	Part0.BrickColor = BrickColor.new("Really black")
	Part0.RotVelocity = Vector3.new(-0.00016878932365216315, 0.010219017043709755, 0.000870788237079978)
	Part0.brickColor = BrickColor.new("Really black")
	Part0.FormFactor = Enum.FormFactor.Plate
	Part0.formFactor = Enum.FormFactor.Plate
	SpecialMesh1.Parent = Part0
	SpecialMesh1.MeshId = "http://www.roblox.com/Asset/?id=10207236"
	SpecialMesh1.Scale = Vector3.new(0.24437472224235535, 0.24437469244003296, 0.24437472224235535)
	SpecialMesh1.VertexColor = Vector3.new(255, 255, 255)
	SpecialMesh1.MeshType = Enum.MeshType.FileMesh
	Trail2.Parent = Part0
	Trail2.Attachment0 = nil
	Trail2.Attachment1 = nil
	Trail2.Color = ColorSequence.new(Color3.new(0, 0, 0),Color3.new(0, 0, 0))
	Trail2.LightInfluence = 1
	Trail2.Transparency = NumberSequence.new(0.5,0.6124999523162842,0.7124999761581421,1)
	Trail2.Lifetime = 0.10000000149011612
	Sound3.Parent = Part0
	Sound3.EmitterSize = 24
	Sound3.MinDistance = 24
	Sound3.SoundId = "http://www.roblox.com/asset/?id=326088041"
	Sound3.Volume = 3
	-- Main
	local GRENADE = Part0:Clone()
	Effects = workspace.Terrain
	IT = Instance.new
	CF = CFrame.new
	VT = Vector3.new
	RAD = math.rad
	C3 = Color3.new
	UD2 = UDim2.new
	BRICKC = BrickColor.new
	ANGLES = CFrame.Angles
	EULER = CFrame.fromEulerAnglesXYZ
	COS = math.cos
	ACOS = math.acos
	SIN = math.sin
	ASIN = math.asin
	ABS = math.abs
	MRANDOM = math.random
	FLOOR = math.floor
	SIZE = 3
	-- Functions
	function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
		return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
	end
	function PositiveAngle(NUMBER)
		if NUMBER >= 0 then
			NUMBER = 0
		end
		return NUMBER
	end
	function NegativeAngle(NUMBER)
		if NUMBER <= 0 then
			NUMBER = 0
		end
		return NUMBER
	end
	function Swait(NUMBER)
		wait(NUMBER)
	end
	function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
		local NEWMESH = IT(MESH)
		if MESH == "SpecialMesh" then
			NEWMESH.MeshType = MESHTYPE
			if MESHID ~= "nil" and MESHID ~= "" then
				NEWMESH.MeshId = "http://www.roblox.com/asset/?id=" .. MESHID
			end
			if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
				NEWMESH.TextureId = "http://www.roblox.com/asset/?id=" .. TEXTUREID
			end
		end
		NEWMESH.Offset = OFFSET or VT(0, 0, 0)
		NEWMESH.Scale = SCALE
		NEWMESH.Parent = PARENT
		return NEWMESH
	end
	function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
		local NEWPART = IT("Part")
		NEWPART.formFactor = FORMFACTOR
		NEWPART.Reflectance = REFLECTANCE
		NEWPART.Transparency = TRANSPARENCY
		NEWPART.CanCollide = false
		NEWPART.Locked = true
		NEWPART.Anchored = true
		if ANCHOR == false then
			NEWPART.Anchored = false
		end
		NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
		NEWPART.Name = NAME
		NEWPART.Size = SIZE
		NEWPART.Position = Vector3.zero
		NEWPART.Material = MATERIAL
		NEWPART:BreakJoints()
		NEWPART.Parent = PARENT
		return NEWPART
	end
	local weldBetween = function(a, b)
		local weldd = Instance.new("ManualWeld")
		weldd.Part0 = a
		weldd.Part1 = b
		weldd.C0 = CFrame.new()
		weldd.C1 = b.CFrame:inverse() * a.CFrame
		weldd.Parent = a
		return weldd
	end
	function QuaternionFromCFrame(cf)
		local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
		local trace = m00 + m11 + m22
		if trace > 0 then
			local s = math.sqrt(1 + trace)
			local recip = 0.5 / s
			return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
		else
			local i = 0
			if m00 < m11 then
				i = 1
			end
			if m22 > (i == 0 and m00 or m11) then
				i = 2
			end
			if i == 0 then
				local s = math.sqrt(m00 - m11 - m22 + 1)
				local recip = 0.5 / s
				return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
			elseif i == 1 then
				local s = math.sqrt(m11 - m22 - m00 + 1)
				local recip = 0.5 / s
				return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
			elseif i == 2 then
				local s = math.sqrt(m22 - m00 - m11 + 1)
				local recip = 0.5 / s
				return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
			end
		end
	end
	function QuaternionToCFrame(px, py, pz, x, y, z, w)
		local xs, ys, zs = x + x, y + y, z + z
		local wx, wy, wz = w * xs, w * ys, w * zs
		local xx = x * xs
		local xy = x * ys
		local xz = x * zs
		local yy = y * ys
		local yz = y * zs
		local zz = z * zs
		return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
	end
	function QuaternionSlerp(a, b, t)
		local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
		local startInterp, finishInterp
		if cosTheta >= 1.0E-4 then
			if 1 - cosTheta > 1.0E-4 then
				local theta = ACOS(cosTheta)
				local invSinTheta = 1 / SIN(theta)
				startInterp = SIN((1 - t) * theta) * invSinTheta
				finishInterp = SIN(t * theta) * invSinTheta
			else
				startInterp = 1 - t
				finishInterp = t
			end
		elseif 1 + cosTheta > 1.0E-4 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
		return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
	end
	function Clerp(a, b, t)
		local qa = {
			QuaternionFromCFrame(a)
		}
		local qb = {
			QuaternionFromCFrame(b)
		}
		local ax, ay, az = a.x, a.y, a.z
		local bx, by, bz = b.x, b.y, b.z
		local _t = 1 - t
		return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
	end
	function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
		local frame = IT("Frame")
		frame.BackgroundTransparency = TRANSPARENCY
		frame.BorderSizePixel = BORDERSIZEPIXEL
		frame.Position = POSITION
		frame.Size = SIZE
		frame.BackgroundColor3 = COLOR
		frame.BorderColor3 = BORDERCOLOR
		frame.Name = NAME
		frame.Parent = PARENT
		return frame
	end
	function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
		local label = IT("TextLabel")
		label.BackgroundTransparency = 1
		label.Size = UD2(1, 0, 1, 0)
		label.Position = UD2(0, 0, 0, 0)
		label.TextColor3 = TEXTCOLOR
		label.TextStrokeTransparency = STROKETRANSPARENCY
		label.TextTransparency = TRANSPARENCY
		label.FontSize = TEXTFONTSIZE
		label.Font = TEXTFONT
		label.BorderSizePixel = BORDERSIZEPIXEL
		label.TextScaled = false
		label.Text = TEXT
		label.Name = NAME
		label.Parent = PARENT
		return label
	end
	function NoOutlines(PART)
		PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
	end
	function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
		local NEWWELD = IT(TYPE)
		NEWWELD.Part0 = PART0
		NEWWELD.Part1 = PART1
		NEWWELD.C0 = C0
		NEWWELD.C1 = C1
		NEWWELD.Parent = PARENT
		return NEWWELD
	end
	local S = IT("Sound")
	function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
		local NEWSOUND
		coroutine.resume(coroutine.create(function()
			NEWSOUND = S:Clone()
			NEWSOUND.Parent = PARENT
			NEWSOUND.EmitterSize = 10 + VOLUME * 2
			NEWSOUND.Volume = VOLUME
			NEWSOUND.Pitch = PITCH
			NEWSOUND.SoundId = "http://www.roblox.com/asset/?id=" .. ID
			NEWSOUND:play()
			if DOESLOOP == true then
				NEWSOUND.Looped = true
			else
				repeat
					wait(1)
				until NEWSOUND.Playing == false
				NEWSOUND:remove()
			end
		end))
		return NEWSOUND
	end
	function CFrameFromTopBack(at, top, back)
		local right = top:Cross(back)
		return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
	end
	function WACKYEFFECT(Table)
		local TYPE = Table.EffectType or "Sphere"
		local SIZE = Table.Size or VT(1, 1, 1)
		local ENDSIZE = Table.Size2 or VT(0, 0, 0)
		local TRANSPARENCY = Table.Transparency or 0
		local ENDTRANSPARENCY = Table.Transparency2 or 1
		local CFRAME = Table.CFrame or CF()
		local MOVEDIRECTION = Table.MoveToPos or nil
		local ROTATION1 = Table.RotationX or 0
		local ROTATION2 = Table.RotationY or 0
		local ROTATION3 = Table.RotationZ or 0
		local MATERIAL = Table.Material or "Neon"
		local COLOR = Table.Color or C3(1, 1, 1)
		local TIME = Table.Time or 45
		local SOUNDID = Table.SoundID or nil
		local SOUNDPITCH = Table.SoundPitch or nil
		local SOUNDVOLUME = Table.SoundVolume or nil
		coroutine.resume(coroutine.create(function()
			local PLAYSSOUND = false
			local SOUND
			local EFFECT = CreatePart(3, Effects, MATERIAL, 0, TRANSPARENCY, BRICKC("Pearl"), "Effect", VT(1, 1, 1), true)
			if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
				PLAYSSOUND = true
				SOUND = CreateSound(SOUNDID, EFFECT, SOUNDVOLUME, SOUNDPITCH, false)
			end
			EFFECT.Color = COLOR
			local MSH
			if TYPE == "Sphere" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "Sphere", "", "", SIZE, VT(0, 0, 0))
			elseif TYPE == "Block" or TYPE == "Box" then
				MSH = IT("BlockMesh", EFFECT)
				MSH.Scale = SIZE
			elseif TYPE == "Wave" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "20329976", "", SIZE, VT(0, 0, -SIZE.X / 8))
			elseif TYPE == "Ring" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "559831844", "", VT(SIZE.X, SIZE.X, 0.1), VT(0, 0, 0))
			elseif TYPE == "Slash" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662586858", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
			elseif TYPE == "Round Slash" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "662585058", "", VT(SIZE.X / 10, 0, SIZE.X / 10), VT(0, 0, 0))
			elseif TYPE == "Swirl" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "1051557", "", SIZE, VT(0, 0, 0))
			elseif TYPE == "Skull" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "4770583", "", SIZE, VT(0, 0, 0))
			elseif TYPE == "Crystal" then
				MSH = CreateMesh("SpecialMesh", EFFECT, "FileMesh", "9756362", "", SIZE, VT(0, 0, 0))
			end
			if MSH ~= nil then
				local MOVESPEED
				if MOVEDIRECTION ~= nil then
					MOVESPEED = (CFRAME.p - MOVEDIRECTION).Magnitude / TIME
				end
				local GROWTH = SIZE - ENDSIZE
				local TRANS = TRANSPARENCY - ENDTRANSPARENCY
				if TYPE == "Block" then
					EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
				else
					EFFECT.CFrame = CFRAME
				end
				for LOOP = 1, TIME + 1 do
					Swait()
					MSH.Scale = MSH.Scale - GROWTH / TIME
					if TYPE == "Wave" then
						MSH.Offset = VT(0, 0, -MSH.Scale.X / 8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS / TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)))
					else
						EFFECT.CFrame = EFFECT.CFrame * ANGLES(RAD(ROTATION1), RAD(ROTATION2), RAD(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CF(EFFECT.Position, MOVEDIRECTION) * CF(0, 0, -MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
				if PLAYSSOUND == false then
					EFFECT:remove()
				else
					repeat
						Swait()
					until EFFECT:FindFirstChildOfClass("Sound") == nil
					EFFECT:remove()
				end
			elseif PLAYSSOUND == false then
				EFFECT:remove()
			else
				repeat
					Swait()
				until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:remove()
			end
		end))
	end
	function ApplyDamage(Humanoid, Damage)
		Damage = Damage * 1
		if Humanoid.Health < 2000 then
			if Humanoid.Health - Damage > 0 then
				Humanoid.Health = Humanoid.Health - Damage
			else
				Humanoid.Parent:BreakJoints()
			end
		else
			Humanoid.Parent:BreakJoints()
		end
	end
	function ApplyAoE(POSITION, RANGE, MINDMG, MAXDMG, FLING, INSTAKILL)
		for index, CHILD in pairs(workspace:GetDescendants()) do
			if CHILD.ClassName == "Model" then
				local HUM = CHILD:FindFirstChildOfClass("Humanoid")
				if HUM then
					local TORSO = CHILD:FindFirstChild("Torso") or CHILD:FindFirstChild("UpperTorso")
					if TORSO and RANGE >= (TORSO.Position - POSITION).Magnitude then
						if INSTAKILL == true then
							CHILD:BreakJoints()
						else
							local DMG = MRANDOM(MINDMG, MAXDMG)
							ApplyDamage(HUM, DMG)
						end
						if FLING > 0 then
							for _, c in pairs(CHILD:GetChildren()) do
								if c:IsA("BasePart") then
									local bv = Instance.new("BodyVelocity")
									bv.maxForce = Vector3.new(1000000000, 1000000000, 1000000000)
									bv.velocity = CF(POSITION, TORSO.Position).lookVector * FLING
									bv.Parent = c
									game.Debris:AddItem(bv, 0.05)
								end
							end
						end
					end
				end
			end
		end
	end
	function rayCast2(Pos, Dir, Max, Ignore)
		return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
	end
	function Beam2(dmg,parent,color,size,pose)
		local MouseLook=CFrame.new((parent.Position+pose)/2,pose)
		local hit,pos = rayCast2(parent.Position,MouseLook.lookVector,999,leppie)
		local mag=(parent.Position-pos).magnitude 

		local Shockwave = Instance.new("Part",Effects)
		Shockwave.Anchored = true
		Shockwave.Color = color
		Shockwave.CanCollide = false
		Shockwave.FormFactor = 3
		Shockwave.Name = "Shockwave"
		Shockwave.Material = "Neon"
		Shockwave.Size = Vector3.new(1, 1, 1)
		Shockwave.Transparency = 0
		Shockwave.TopSurface = 0
		Shockwave.BottomSurface = 0
		Shockwave.CFrame = parent.CFrame
		local rngm2 = Instance.new("SpecialMesh", Shockwave)
		rngm2.Scale = Vector3.new(size, size, size)
		rngm2.Offset = Vector3.new(0,0,0)
		rngm2.MeshType = "Sphere"
		spawn(function()
			wait(0.4)
			for i = 1, 10 do
				rngm2.Scale = Vector3.new(size - i*(size/10),size - i*(size/10),size - i*(size/10))
				wait()
			end
			wait()
			Shockwave:Destroy()
		end)

		local Shockwave = Instance.new("Part",Effects)
		Shockwave.Anchored = true
		Shockwave.Color = color
		Shockwave.CanCollide = false
		Shockwave.FormFactor = 3
		Shockwave.Name = "Shockwave"
		Shockwave.Material = "Neon"
		Shockwave.Size = Vector3.new(1, 1, 1)
		Shockwave.Transparency = 0
		Shockwave.TopSurface = 0
		Shockwave.BottomSurface = 0
		Shockwave.CFrame = parent.CFrame *CFrame.new(0,0,(-mag))
		local rngm2 = Instance.new("SpecialMesh", Shockwave)
		rngm2.Scale = Vector3.new(size, size, size)
		rngm2.Offset = Vector3.new(0,0,0)
		rngm2.MeshType = "Sphere"
		spawn(function()
			wait(0.4)
			for i = 1, 10 do
				rngm2.Scale = Vector3.new(size - i*(size/10),size - i*(size/10),size - i*(size/10))
				wait()
			end
			wait()
			Shockwave:Destroy()
		end)

		local Laser = Instance.new("Part",Effects)
		Laser.Name = "MagicCircle"
		Laser.Shape = Enum.PartType.Cylinder
		Laser.CanCollide = false
		Laser.Color = color
		Laser.Transparency = 0
		Laser.Anchored = true
		Laser.Material = "Neon"
		Laser.Size = Vector3.new(1 * mag,size, size)
		Laser.TopSurface = Enum.SurfaceType.Smooth
		Laser.BottomSurface = Enum.SurfaceType.Smooth
		Laser.CFrame = parent.CFrame *CFrame.new(0,0,(-mag)/2) * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0)

		Laser.Touched:Once(function(hit)

			for i,v in pairs(hit.Parent:GetChildren()) do
				if v:IsA("Humanoid") then
					v.Health = v.Health-dmg
				end
			end

		end)

		spawn(function()
			e = size
			wait(0.4)
			for i = 1,10 do
				e = e - (size/10)
				Laser.Size = Vector3.new(1 * mag,e, e)
				wait()
			end
			Laser:Destroy()
		end)
	end
	function GasterBlaster(dmg,position,x1,y1,z1,size,lasercolor,lasersize,pitch1,pitch2,x2,y2,z2)
		local GasterB = Instance.new("Part",Effects)

		GasterB.CFrame = CFrame.new(position)
		GasterB.CanCollide = false
		GasterB.Material = "SmoothPlastic"
		GasterB.Color = Color3.new(1,0,0)
		local zxc = Instance.new("SpecialMesh",GasterB)
		zxc.MeshType = "FileMesh"
		zxc.Scale = Vector3.new(1, 1, 1)
		zxc.MeshId = "rbxassetid://2649585735"

		spawn(function()

			local GBPoint = Instance.new("BodyGyro")
			GBPoint.Parent = GasterB
			GBPoint.D = 20000
			GBPoint.P = 2000000000
			GBPoint.MaxTorque = Vector3.new(x2,y2,z2)
			local Fire = Instance.new("Sound",GasterB)
			local Charge = Instance.new("Sound",GasterB)

			local GBLoc = Instance.new("BodyPosition",GasterB)
			GBLoc.D = 2000
			GBLoc.P = 200000
			GBLoc.MaxForce = Vector3.new((math.huge), (math.huge), (math.huge))
			Charge.SoundId = "rbxassetid://482211201"
			Charge.Volume = 5
			Charge.PlaybackSpeed = pitch1
			Charge.PlayOnRemove = true
			Charge:Destroy()
			local x = x1
			local y = y1
			local z = z1
			local c = 0
			local posit = position
			for i = 1,20 do
				c = c + (size/20)
				GBPoint.CFrame = CFrame.lookAt(GasterB.CFrame.Position,posit)
				zxc.Scale = Vector3.new(c, c, c)
				GBLoc.Position = posit + Vector3.new(x,y,z)
				wait()
			end
			for i = 1,40 do
				GBLoc.Position = posit + Vector3.new(x,y,z)
				wait()
			end

			GasterB.Anchored = true
			zxc.MeshId = "rbxassetid://2649597177"
			wait()
			zxc.MeshId = "rbxassetid://2649610132"
			wait()
			Fire.SoundId = "rbxassetid://340722848"
			Fire.Volume = 5
			Fire.PlaybackSpeed = 1
			Fire:Play()
			game:GetService("Debris"):AddItem(Fire, 3)
			Beam2(dmg,GasterB,lasercolor,lasersize,posit)
			zxc.MeshId = "rbxassetid://2649605211"
			wait()
			zxc.MeshId = "rbxassetid://2649590388"

			wait(0.5)
			local t = size
			for i = 1,20 do
				t = t - (size/20)
				zxc.Scale = Vector3.new(t, t, t)
				GasterB.CFrame = GasterB.CFrame*CFrame.new(0,0,5)
				wait()
			end
			GasterB:Destroy()
		end)
	end
	function HandGrenade(target)
		local NADE = GRENADE:Clone()
		NADE.CFrame = target:GetPivot() * CF(0, 1.2 * SIZE, 0) * ANGLES(RAD(90), RAD(0), RAD(0))
		NADE.Parent = Effects
		CreateSound(326088041, NADE, 3, 1, false)
		coroutine.resume(coroutine.create(function()
			local DISTANCE = (NADE.Position - target:GetPivot().Position).Magnitude
			if DISTANCE > 150 then
				DISTANCE = 150
			end
			NADE.Velocity = CF(NADE.Position + VT(0, 5, 0), target:GetPivot().Position).lookVector * (DISTANCE * 2)
			wait(0.2)
			TOUCH = NADE.Touched:Connect(function()
				TOUCH:Disconnect()
				wait(0.5)
				NADE.Anchored = true
				NADE.Transparency = 1
				NADE.CanCollide = false
				local COLORS = {
					C3(0.8862745098039215, 0.6078431372549019, 0.25098039215686274),
					C3(1, 0, 0),
					C3(0.9607843137254902, 0.803921568627451, 0.18823529411764706)
				}
				WACKYEFFECT({
					Time = 66,
					EffectType = "Sphere",
					Size = VT(45, 45, 45),
					Size2 = VT(450, 450, 450),
					Transparency = 0.99,
					Transparency2 = 1,
					CFrame = CF(NADE.Position),
					MoveToPos = nil,
					RotationX = 0,
					RotationY = 0,
					RotationZ = 0,
					Material = "Neon",
					Color = C3(1, 1, 1),
					SoundID = nil,
					SoundPitch = nil,
					SoundVolume = nil
				})
				for i = 1, 45 do
					WACKYEFFECT({
						Time = MRANDOM(10, 60),
						EffectType = "Sphere",
						Size = VT(45, 45, 45) * MRANDOM(5, 12) / 10,
						Size2 = VT(65, 65, 65) * MRANDOM(5, 22) / 10,
						Transparency = 0,
						Transparency2 = 1,
						CFrame = CF(NADE.Position) * ANGLES(RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360)), RAD(MRANDOM(0, 360))) * CF(0, 15, 0),
						MoveToPos = nil,
						RotationX = 0,
						RotationY = 0,
						RotationZ = 0,
						Material = "Neon",
						Color = COLORS[MRANDOM(1, #COLORS)],
						SoundID = nil,
						SoundPitch = nil,
						SoundVolume = nil
					})
				end
				ApplyAoE(NADE.Position, 75, 35, 80, 145, false)
				CreateSound(174580476, NADE, 3, 1, false)
				CreateSound(165970126, NADE, 3, 1, false)
				game.Debris:AddItem(NADE, 10)
			end)
		end))
	end
	local Attacks = {
		Bomb = function(dur)
			local etecc = Instance.new("Part", leppie)
			etecc.BrickColor = BrickColor.Random()
			etecc.Size = Vector3.new(5.59, 4.4, 4.71)
			etecc.Anchored = false
			etecc.CanCollide = true
			etecc.Shape = "Ball"
			etecc.Position = Vector3.new(math.random(-200,200),200, math.random(-200, 200))
			wait(dur or 3)
			local boom = Instance.new("Explosion", etecc)
			boom.Position = etecc.Position
			boom.BlastRadius = 30
			wait(0.5)
			etecc:Destroy()
		end,
		Mine = function(dur)
			local mine = Instance.new("Part", leppie)
			mine.Shape = "Cylinder"
			mine.BrickColor = BrickColor.new("Crimson")
			mine.Position = Vector3.new(math.random(-100,100),1, math.random(-100, 100))
			mine.Size = Vector3.new(0.85, 8.96, 3.03)
			mine.Anchored = true
			mine.CanCollide = false
			mine.Orientation = Vector3.new(0,0,90)
			wait(dur or 1)
			local boom = Instance.new("Explosion", mine)
			boom.Position = mine.Position
			boom.BlastRadius = 30
		end,
		Gaster = function(target,dmg)
			GasterBlaster(dmg or 50,target:GetPivot().Position,math.random(-30,30),0,math.random(-30,30),1.5,Color3.new(1,0,0),5,1,1,0,(math.huge),0)
		end,
		Grenade = function(target)
			HandGrenade(target)
		end,
	}
	attacks = Attacks
	_G.Attacks = attacks
	_G.mouthing = false
	function changeMouth()
		if _G.mouthing then return end
		_G.mouthing = true
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
		_G.mouthing = false
	end
	function laugh()
		eyes.Texture = "http://www.roblox.com/asset/?id=1136339833"
		mouth.Texture = "http://www.roblox.com/asset/?id=920432772"
		face.Transparency = 1
		eyes.Transparency = 0
		mouth.Transparency = 0
		leppie.laugh:Play()
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
		screen.eyes.Texture = "rbxassetid://90662469"
		mouth.Texture = ""
		face.Transparency = 0
	end
	_G.mouth = changeMouth
	_G.laugh = laugh
	function static(amount)
		local amount = amount or 4
		mouth.Transparency = 1
		eyes.Transparency = 1
		face.Transparency = 0
		leppie.static:Play()
		for i = 1,amount do
			face.Texture = "http://www.roblox.com/asset/?id=1437986267"
			wait(0.1)
			face.Texture = "http://www.roblox.com/asset/?id=161123846"
			wait(0.1)
		end
		leppie.static:Stop()
		wait()
	end
	_G.static = static
    function service(serviceName)
        return game:GetService(serviceName)
    end
    function ffc(s,i)
        return s:FindFirstChild(i)
    end
    local IT = Instance.new
    local soundScape = service("SoundService")
    function createTTS(msg,voiceId)
        local emitter = ffc(soundScape,"TTS_Emitter") or IT("AudioDeviceOutput",soundScape)
        emitter.Name = "TTS_Emitter"
        local tts = IT("AudioTextToSpeech", workspace)
        tts.Name = "TTS_Register"
        tts.VoiceId = voiceId
        tts.Text = msg
        local wire = IT("Wire",tts)
        wire.SourceInstance = tts
        wire.TargetInstance = emitter
        tts.Ended:Connect(function()
             tts:Destroy()
             emitter:Destroy()
        end)
        return tts
    end
    function tooterals()
        -- Softonic now available on your PC.
        local t = createTTS("Softonic now available on your PC.", "8")
        t:Play()
        t.Ended:Wait()
        -- NO!
        local a = createTTS("NO!", "9")
        a:Play()
        a.Ended:Wait()
        -- Let's start using the application.
        local b = createTTS("Let's start using the application.", "8")
        b:Play()
        b.Ended:Wait()
        -- NO!
        local c = createTTS("NO!", "9")
        c:Play()
        c.Ended:Wait()
        -- Do you know what software you are looking for?
        local d = createTTS("Do you know what software you are looking for?", "8")
        d:Play()
        d.Ended:Wait()
        -- NO!
        local e = createTTS("NO!", "9")
        e:Play()
        e.Ended:Wait()
        -- Soft and related of those installed on your PC.
        local f = createTTS("Soft and related of those installed on your PC.", "8")
        f:Play()
        f.Ended:Wait()
        -- I BLAME YOU, YOU DID THIS! YOU DID THIS!
        local g = createTTS("I BLAME YOU, YOU DID THIS! YOU DID THIS!", "9")
        g:Play()
        g.Ended:Wait()
    end
	function typewrite(text,length,sound,change)
		local mouthTalking = true
		local object = Instance.new("Message",leppie)
		local sound = sound or nil
		local changer = change
		if not change then
			changer = true
		end
		if sound then
			sound = sound:Clone()
			sound.PlayOnRemove = true
		end
		object.Name = "Typewriter"
		if changer == false then
			mouthTalking = false
		end
		if changer then
			task.spawn(function()
				while mouthTalking == true do
					screen.face.Transparency = 1
					screen.mouth.Transparency = 0
					screen.eyes.Transparency = 0
					spawn(function()
						changeMouth()
					end)
					wait()
				end
				mouth.Transparency = 1
				eyes.Transparency = 1
				face.Texture = "http://www.roblox.com/asset/?id=90662479"
				face.Transparency = 0
			end)
		end
		for i = 1,#text,1 do
			object.Text = "[LAPTOP]: "..string.sub(text,1,i)
			if sound then
				local clone = sound:Clone()
				clone.Parent = leppie
				clone:Destroy()
			end
			wait(length)
		end
		mouthTalking = false
		object:Destroy()
	end
	_G.write = typewrite
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
	typewrite("CAN YOU FEEL YOUR DEATH APPROACHING?",.05)
	wait(1)
	mouth.Transparency = 1
	eyes.Transparency = 1
	face.Texture = "http://www.roblox.com/asset/?id=90662479"
	face.Transparency = 0
	wait(2)
	laugh()
	static()
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
	static()
	leppie.reee:Play()
	face.Texture = "http://www.roblox.com/asset/?id=1342394240"
	wait(1)
	face.Texture = "http://www.roblox.com/asset/?id=48129430"
	wait(3)
	static()
	face.Texture = "http://www.roblox.com/asset/?id=873240105"
	wait(0.3)
	static(3)
	wait(0.05)
	static(2)
	face.Transparency = 1
	eyes.Texture = "http://www.roblox.com/asset/?id=238113668"
	eyes.Transparency = 0
	mouth.Texture = "http://www.roblox.com/asset/?id=377495903"
	mouth.Transparency = 0
	spawn(tooterals)
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
		attacks.Bomb()
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
	leppie.appearance:Play()
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
		static()
		screen.face.Transparency = 1
		screen.BrickColor = BrickColor.new("Black")
		leppie.alldead:Play()
		wait(9.7)
		screen.face.Transparency = 0
		leppie.alldead:Stop()
		static(2)
		screen.BrickColor = BrickColor.new("Maroon")
		screen.face.Texture = "http://www.roblox.com/asset/?id=465571202"
		leppie.demawn:Play()
		wait(2.7)
		static(2)
		screen.face.Texture = "http://www.roblox.com/asset/?id=596786919"
		leppie.Script.Enabled = false
		local phase2 = NS(_G.Phases[2],leppie)
		phase2.Name = "Phase2"
		db = false
	end

	weakspot.Touched:connect(onTouch)
end))
Sound15.Name = "portal"
Sound15.Parent = Model0
Sound15.SoundId = "rbxassetid://956585775"
Sound15.Volume = 3
Sound16.Name = "quake"
Sound16.Parent = Model0
Sound16.SoundId = "rbxassetid://1444622148"
Sound16.Volume = 3
Sound17.Name = "intro"
Sound17.Parent = Model0
Sound17.Pitch = 0.029999999329447746
Sound17.PlaybackSpeed = 0.029999999329447746
Sound17.SoundId = "rbxassetid://74210261857486"
Sound17.Volume = 3
Sound18.Name = "taunt"
Sound18.Parent = Model0
Sound18.SoundId = "rbxassetid://135017578"
Sound18.Volume = 3
Sound19.Name = "laugh"
Sound19.Parent = Model0
Sound19.SoundId = "rbxassetid://535587826"
Sound19.Volume = 3
Sound20.Name = "static"
Sound20.Parent = Model0
Sound20.SoundId = "rbxassetid://132081621"
Sound20.Volume = 3
Sound21.Name = "milkncereal"
Sound21.Parent = Model0
Sound21.SoundId = "rbxassetid://1519649604"
Sound21.Volume = 3
Sound22.Name = "reee"
Sound22.Parent = Model0
Sound22.SoundId = "rbxassetid://1286168545"
Sound22.Volume = 3
Sound23.Name = "tooterals"
Sound23.Parent = Model0
Sound23.SoundId = "rbxassetid://4389968391"
Sound23.Volume = 3
Sound24.Name = "fite1"
Sound24.Parent = Model0
Sound24.Looped = true
Sound24.Pitch = 0.05000000074505806
Sound24.PlaybackSpeed = 0.05000000074505806
Sound24.SoundId = "rbxassetid://70505946380069"
Sound24.Volume = 3
Sound25.Name = "pain"
Sound25.Parent = Model0
Sound25.SoundId = "rbxassetid://925078311"
Sound25.Volume = 3
Sound26.Name = "crash"
Sound26.Parent = Model0
Sound26.SoundId = "rbxassetid://543280386"
Sound26.Volume = 3
Sound27.Name = "alldead"
Sound27.Parent = Model0
Sound27.SoundId = "rbxassetid://6828327023"
Sound27.Volume = 3
Sound28.Name = "demawn"
Sound28.Parent = Model0
Sound28.SoundId = "rbxassetid://222213668"
Sound28.Volume = 3
Sound29.Name = "fite2"
Sound29.Parent = Model0
Sound29.Looped = true
Sound29.Pitch = 0.05999999865889549
Sound29.PlaybackSpeed = 0.05999999865889549
Sound29.SoundId = "rbxassetid://81156948529219"
Sound29.Volume = 3
Sound31.Name = "willreturnsound"
Sound31.Parent = Model0
Sound31.SoundId = "rbxassetid://1846368080"
Sound31.Volume = 3
Sound33.Name = "fite3"
Sound33.Parent = Model0
Sound33.Looped = true
Sound33.Pitch = 0.050999999046325684
Sound33.PlaybackSpeed = 0.050999999046325684
Sound33.SoundId = "rbxassetid://134974219860855"
Sound33.Volume = 3
Sound34.Name = "eguspelosiawn"
Sound34.Parent = Model0
Sound34.SoundId = "rbxassetid://539294959"
Sound34.Volume = 3
Sound35.Name = "death"
Sound35.Parent = Model0
Sound35.SoundId = "rbxassetid://9046435309"
Sound35.Volume = 3
Sound36.Name = "appearance"
Sound36.Parent = Model0
Sound36.SoundId = "rbxassetid://5405422834"
Sound36.Volume = 3
Sound37.Name = "talk"
Sound37.Parent = Model0
Sound37.Pitch = 0.4000000059604645
Sound37.PlaybackSpeed = 0.4000000059604645
Sound37.SoundId = "rbxassetid://358280695"
Sound37.Volume = 3
Sound39.Name = "fite6"
Sound39.Parent = Model0
Sound39.Looped = true
Sound39.SoundId = "rbxassetid://126941857493785"
Sound39.Volume = 3
Sound41.Name = "fite4"
Sound41.Parent = Model0
Sound41.Looped = true
Sound41.Pitch = 0.08100000023841858
Sound41.PlaybackSpeed = 0.08100000023841858
Sound41.SoundId = "rbxassetid://110764914209222"
Sound41.Volume = 3
Sound43.Name = "fite5"
Sound43.Parent = Model0
Sound43.Looped = true
Sound43.Pitch = 0.09000000357627869
Sound43.PlaybackSpeed = 0.09000000357627869
Sound43.SoundId = "rbxassetid://111570672062911"
Sound43.Volume = 3
Sound44.Name = "destroyed"
Sound44.Parent = Model0
Sound44.Looped = true
Sound44.SoundId = "rbxassetid://343455360"
Sound44.Volume = 3
Sound45.Name = "trold"
Sound45.Parent = Model0
Sound45.SoundId = "rbxassetid://7111749816"
Sound45.Volume = 3
Model46.Name = "WEDDGIE"
Model46.Parent = mas
WedgePart47.Parent = Model46
WedgePart47.CFrame = CFrame.new(-321.554749, 178.964951, -0.424995422, 0, 0, -1, 0, 1, 0, 1, 0, 0)
WedgePart47.Orientation = Vector3.new(0, -90, 0)
WedgePart47.Position = Vector3.new(-321.55474853515625, 178.96495056152344, -0.42499542236328125)
WedgePart47.Rotation = Vector3.new(0, -90, 0)
WedgePart47.Color = Color3.new(1, 0, 0)
WedgePart47.Transparency = 1
WedgePart47.Size = Vector3.new(513.2100830078125, 357.9299011230469, 134.95005798339844)
WedgePart47.Anchored = true
WedgePart47.BottomSurface = Enum.SurfaceType.Smooth
WedgePart47.BrickColor = BrickColor.new("Really red")
WedgePart47.brickColor = BrickColor.new("Really red")
WedgePart48.Parent = Model46
WedgePart48.CFrame = CFrame.new(320.895691, 178.964951, -0.424995005, 0, 0, 1, 0, 1, -0, -1, 0, 0)
WedgePart48.Orientation = Vector3.new(0, 90, 0)
WedgePart48.Position = Vector3.new(320.89569091796875, 178.96495056152344, -0.4249950051307678)
WedgePart48.Rotation = Vector3.new(0, 90, 0)
WedgePart48.Color = Color3.new(1, 0, 0)
WedgePart48.Transparency = 1
WedgePart48.Size = Vector3.new(513.2100830078125, 357.9299011230469, 134.95005798339844)
WedgePart48.Anchored = true
WedgePart48.BottomSurface = Enum.SurfaceType.Smooth
WedgePart48.BrickColor = BrickColor.new("Really red")
WedgePart48.brickColor = BrickColor.new("Really red")
WedgePart49.Parent = Model46
WedgePart49.CFrame = CFrame.new(-3.17619371, 178.964951, -318.137848, -1, 0, 0, 0, 1, 0, 0, 0, -1)
WedgePart49.Orientation = Vector3.new(0, 180, 0)
WedgePart49.Position = Vector3.new(-3.1761937141418457, 178.96495056152344, -318.1378479003906)
WedgePart49.Rotation = Vector3.new(180, 0, 180)
WedgePart49.Color = Color3.new(1, 0, 0)
WedgePart49.Transparency = 1
WedgePart49.Size = Vector3.new(513.2100830078125, 357.9299011230469, 134.95005798339844)
WedgePart49.Anchored = true
WedgePart49.BottomSurface = Enum.SurfaceType.Smooth
WedgePart49.BrickColor = BrickColor.new("Really red")
WedgePart49.brickColor = BrickColor.new("Really red")
WedgePart50.Parent = Model46
WedgePart50.CFrame = CFrame.new(-3.03513527, 178.964951, 320.167023, 1, 0, 0, 0, 1, 0, 0, 0, 1)
WedgePart50.Position = Vector3.new(-3.035135269165039, 178.96495056152344, 320.1670227050781)
WedgePart50.Color = Color3.new(1, 0, 0)
WedgePart50.Transparency = 1
WedgePart50.Size = Vector3.new(513.2100830078125, 357.9299011230469, 134.95005798339844)
WedgePart50.Anchored = true
WedgePart50.BottomSurface = Enum.SurfaceType.Smooth
WedgePart50.BrickColor = BrickColor.new("Really red")
WedgePart50.brickColor = BrickColor.new("Really red")
WedgePart51.Parent = Model46
WedgePart51.CFrame = CFrame.new(601.663147, 73.1073227, 268.193909, 0.934954286, -0.0406520478, -0.352431387, -0.352505356, 0.00557324896, -0.935793161, 0.0400060974, 0.999157846, -0.00911932811)
WedgePart51.Orientation = Vector3.new(69.35700225830078, -91.48200225830078, -89.09400177001953)
WedgePart51.Position = Vector3.new(601.6631469726562, 73.1073226928711, 268.19390869140625)
WedgePart51.Rotation = Vector3.new(90.55799865722656, -20.63599967956543, 2.490000009536743)
WedgePart51.Color = Color3.new(1, 0, 0)
WedgePart51.Transparency = 1
WedgePart51.Size = Vector3.new(600.6013793945312, 3.491197109222412, 382.5090026855469)
WedgePart51.Anchored = true
WedgePart51.BottomSurface = Enum.SurfaceType.Smooth
WedgePart51.BrickColor = BrickColor.new("Really red")
WedgePart51.brickColor = BrickColor.new("Really red")
WedgePart52.Parent = Model46
WedgePart52.CFrame = CFrame.new(440.522217, 132.745621, 377.0242, -0.674061537, -0.181943879, -0.71591717, 0.260595471, -0.965447962, -2.27819825e-08, -0.691180766, -0.186564773, 0.698185205)
WedgePart52.Orientation = Vector3.new(0, -45.71799850463867, 164.89500427246094)
WedgePart52.Position = Vector3.new(440.522216796875, 132.74562072753906, 377.0242004394531)
WedgePart52.Rotation = Vector3.new(0, -45.71799850463867, 164.89500427246094)
WedgePart52.Color = Color3.new(1, 0, 0)
WedgePart52.Transparency = 1
WedgePart52.Size = Vector3.new(354.7209777832031, 370.73968505859375, 94.0709228515625)
WedgePart52.Anchored = true
WedgePart52.BottomSurface = Enum.SurfaceType.Smooth
WedgePart52.BrickColor = BrickColor.new("Really red")
WedgePart52.brickColor = BrickColor.new("Really red")
WedgePart53.Parent = Model46
WedgePart53.CFrame = CFrame.new(373.121796, 132.745636, 442.755219, 0.674061537, -0.181943938, 0.71591717, -0.260595471, -0.965447962, -6.16201561e-08, 0.691180766, -0.186564714, -0.698185205)
WedgePart53.Orientation = Vector3.new(0, 134.28199768066406, -164.89500427246094)
WedgePart53.Position = Vector3.new(373.1217956542969, 132.74563598632812, 442.7552185058594)
WedgePart53.Rotation = Vector3.new(180, 45.71799850463867, 15.104999542236328)
WedgePart53.Color = Color3.new(1, 0, 0)
WedgePart53.Transparency = 1
WedgePart53.Size = Vector3.new(354.7209777832031, 370.73968505859375, 94.22015380859375)
WedgePart53.Anchored = true
WedgePart53.BottomSurface = Enum.SurfaceType.Smooth
WedgePart53.BrickColor = BrickColor.new("Really red")
WedgePart53.brickColor = BrickColor.new("Really red")
WedgePart54.Parent = Model46
WedgePart54.CFrame = CFrame.new(373.458008, 133.708878, -447.290955, -0.667630792, -0.173644915, 0.723959029, 0.251716465, -0.967801094, -1.06613612e-07, 0.700648427, 0.182232335, 0.689842939)
WedgePart54.Orientation = Vector3.new(0, 46.38199996948242, 165.42100524902344)
WedgePart54.Position = Vector3.new(373.4580078125, 133.70887756347656, -447.29095458984375)
WedgePart54.Rotation = Vector3.new(0, 46.38199996948242, 165.42100524902344)
WedgePart54.Color = Color3.new(1, 0, 0)
WedgePart54.Transparency = 1
WedgePart54.Size = Vector3.new(359.5798034667969, 369.83831787109375, 88.69603729248047)
WedgePart54.Anchored = true
WedgePart54.BottomSurface = Enum.SurfaceType.Smooth
WedgePart54.BrickColor = BrickColor.new("Really red")
WedgePart54.brickColor = BrickColor.new("Really red")
WedgePart55.Parent = Model46
WedgePart55.CFrame = CFrame.new(440.928955, 133.708862, -382.999542, 0.667630792, -0.173644856, -0.723959029, -0.251716465, -0.967801094, 2.20057501e-08, -0.700648427, 0.182232395, -0.689842939)
WedgePart55.Orientation = Vector3.new(0, -133.6179962158203, -165.42100524902344)
WedgePart55.Position = Vector3.new(440.928955078125, 133.7088623046875, -382.9995422363281)
WedgePart55.Rotation = Vector3.new(180, -46.38199996948242, 14.579000473022461)
WedgePart55.Color = Color3.new(1, 0, 0)
WedgePart55.Transparency = 1
WedgePart55.Size = Vector3.new(359.5798034667969, 369.83831787109375, 97.69832611083984)
WedgePart55.Anchored = true
WedgePart55.BottomSurface = Enum.SurfaceType.Smooth
WedgePart55.BrickColor = BrickColor.new("Really red")
WedgePart55.brickColor = BrickColor.new("Really red")
WedgePart56.Parent = Model46
WedgePart56.CFrame = CFrame.new(320.899658, -0.0327951908, -253.933411, 0.999999046, -0.00137792842, -8.74226913e-08, -0.000486034405, -0.352787346, 0.935703397, -0.00128936314, -0.935702503, -0.352787673)
WedgePart56.Orientation = Vector3.new(-69.34200286865234, 180, -179.92100524902344)
WedgePart56.Position = Vector3.new(320.899658203125, -0.03279519081115723, -253.93341064453125)
WedgePart56.Rotation = Vector3.new(-110.65799713134766, 0, 0.07900000363588333)
WedgePart56.Color = Color3.new(1, 0, 0)
WedgePart56.Transparency = 1
WedgePart56.Size = Vector3.new(134.94996643066406, 5.9578471183776855, 2.246281385421753)
WedgePart56.Anchored = true
WedgePart56.BottomSurface = Enum.SurfaceType.Smooth
WedgePart56.BrickColor = BrickColor.new("Really red")
WedgePart56.brickColor = BrickColor.new("Really red")
WedgePart57.Parent = Model46
WedgePart57.CFrame = CFrame.new(320.899658, 178.932159, -321.408447, -0.999999046, -0.00137792842, 8.7302233e-08, 0.000486034405, -0.352787256, -0.935703456, 0.00128936314, -0.935702562, 0.352787584)
WedgePart57.Orientation = Vector3.new(69.34200286865234, 0, 179.92100524902344)
WedgePart57.Position = Vector3.new(320.899658203125, 178.93215942382812, -321.408447265625)
WedgePart57.Rotation = Vector3.new(69.34200286865234, 0, 179.92100524902344)
WedgePart57.Color = Color3.new(1, 0, 0)
WedgePart57.Transparency = 1
WedgePart57.Size = Vector3.new(134.94996643066406, 5.9578471183776855, 380.2786865234375)
WedgePart57.Anchored = true
WedgePart57.BottomSurface = Enum.SurfaceType.Smooth
WedgePart57.BrickColor = BrickColor.new("Really red")
WedgePart57.brickColor = BrickColor.new("Really red")
WedgePart58.Parent = Model46
WedgePart58.CFrame = CFrame.new(-392.558807, -51.1358337, -375.295105, -0.717221916, -0.600944042, -0.352787673, -0.270413578, -0.226573646, 0.935703456, -0.642237782, 0.766505599, 1.23156255e-07)
WedgePart58.Orientation = Vector3.new(-69.34200286865234, -90, -129.95899963378906)
WedgePart58.Position = Vector3.new(-392.5588073730469, -51.135833740234375, -375.29510498046875)
WedgePart58.Rotation = Vector3.new(-90, -20.658000946044922, 140.04100036621094)
WedgePart58.Color = Color3.new(1, 0, 0)
WedgePart58.Transparency = 1
WedgePart58.Size = Vector3.new(378.2046203613281, 8.306816101074219, 2.0114192962646484)
WedgePart58.Anchored = true
WedgePart58.BottomSurface = Enum.SurfaceType.Smooth
WedgePart58.BrickColor = BrickColor.new("Really red")
WedgePart58.brickColor = BrickColor.new("Really red")
WedgePart59.Parent = Model46
WedgePart59.CFrame = CFrame.new(-460.033844, 127.829102, -375.295074, 0.717221916, -0.600944102, 0.352787614, 0.270413578, -0.226573572, -0.935703456, 0.642237782, 0.766505599, -5.61462059e-08)
WedgePart59.Orientation = Vector3.new(69.34200286865234, 90, 129.95899963378906)
WedgePart59.Position = Vector3.new(-460.0338439941406, 127.8291015625, -375.2950744628906)
WedgePart59.Rotation = Vector3.new(90, 20.658000946044922, 39.95899963378906)
WedgePart59.Color = Color3.new(1, 0, 0)
WedgePart59.Transparency = 1
WedgePart59.Size = Vector3.new(378.2046203613281, 8.306816101074219, 380.5135192871094)
WedgePart59.Anchored = true
WedgePart59.BottomSurface = Enum.SurfaceType.Smooth
WedgePart59.BrickColor = BrickColor.new("Really red")
WedgePart59.brickColor = BrickColor.new("Really red")
WedgePart60.Parent = Model46
WedgePart60.CFrame = CFrame.new(-444.151398, 133.583527, -374.212158, 0.681359768, 0.182118878, 0.708929896, 0.25822252, -0.966085494, -2.25745325e-08, 0.684886873, 0.183061674, -0.705278933)
WedgePart60.Orientation = Vector3.new(0, 134.8520050048828, 165.03500366210938)
WedgePart60.Position = Vector3.new(-444.1513977050781, 133.58352661132812, -374.212158203125)
WedgePart60.Rotation = Vector3.new(180, 45.14799880981445, -14.96500015258789)
WedgePart60.Color = Color3.new(1, 0, 0)
WedgePart60.Transparency = 1
WedgePart60.Size = Vector3.new(351.4908752441406, 370.49505615234375, 87.13749694824219)
WedgePart60.Anchored = true
WedgePart60.BottomSurface = Enum.SurfaceType.Smooth
WedgePart60.BrickColor = BrickColor.new("Really red")
WedgePart60.brickColor = BrickColor.new("Really red")
WedgePart61.Parent = Model46
WedgePart61.CFrame = CFrame.new(-379.52713, 133.583542, -438.503632, -0.681359768, 0.182118937, -0.708929896, -0.25822252, -0.966085494, -6.18833411e-08, -0.684886873, 0.183061615, 0.705278933)
WedgePart61.Orientation = Vector3.new(0, -45.14799880981445, -165.03500366210938)
WedgePart61.Position = Vector3.new(-379.5271301269531, 133.5835418701172, -438.5036315917969)
WedgePart61.Rotation = Vector3.new(0, -45.14799880981445, -165.03500366210938)
WedgePart61.Color = Color3.new(1, 0, 0)
WedgePart61.Transparency = 1
WedgePart61.Size = Vector3.new(351.4908752441406, 370.49505615234375, 95.17745971679688)
WedgePart61.Anchored = true
WedgePart61.BottomSurface = Enum.SurfaceType.Smooth
WedgePart61.BrickColor = BrickColor.new("Really red")
WedgePart61.brickColor = BrickColor.new("Really red")
WedgePart62.Parent = Model46
WedgePart62.CFrame = CFrame.new(-378.423462, 133.131912, 441.558289, 0.688286304, 0.184949219, -0.701466918, 0.259504199, -0.965741992, -1.07114417e-07, -0.677436173, -0.182033539, -0.712701917)
WedgePart62.Orientation = Vector3.new(0, -135.4550018310547, 164.95899963378906)
WedgePart62.Position = Vector3.new(-378.4234619140625, 133.1319122314453, 441.55828857421875)
WedgePart62.Rotation = Vector3.new(180, -44.54499816894531, -15.041000366210938)
WedgePart62.Color = Color3.new(1, 0, 0)
WedgePart62.Transparency = 1
WedgePart62.Size = Vector3.new(353.2354736328125, 370.6268310546875, 89.79276275634766)
WedgePart62.Anchored = true
WedgePart62.BottomSurface = Enum.SurfaceType.Smooth
WedgePart62.BrickColor = BrickColor.new("Really red")
WedgePart62.brickColor = BrickColor.new("Really red")
WedgePart63.Parent = Model46
WedgePart63.CFrame = CFrame.new(-443.118317, 133.131897, 375.827271, -0.688286304, 0.18494916, 0.701466918, -0.259504199, -0.965741992, 2.26865744e-08, 0.677436173, -0.182033598, 0.712701917)
WedgePart63.Orientation = Vector3.new(0, 44.54499816894531, -164.95899963378906)
WedgePart63.Position = Vector3.new(-443.1183166503906, 133.13189697265625, 375.8272705078125)
WedgePart63.Rotation = Vector3.new(0, 44.54499816894531, -164.95899963378906)
WedgePart63.Color = Color3.new(1, 0, 0)
WedgePart63.Transparency = 1
WedgePart63.Size = Vector3.new(353.2354736328125, 370.6268310546875, 94.66301727294922)
WedgePart63.Anchored = true
WedgePart63.BottomSurface = Enum.SurfaceType.Smooth
WedgePart63.BrickColor = BrickColor.new("Really red")
WedgePart63.brickColor = BrickColor.new("Really red")
WedgePart64.Parent = Model46
WedgePart64.CFrame = CFrame.new(-371.953125, 109.789871, 505.385132, 0.50620681, 0.862412155, 3.11404591e-08, 0.304248273, -0.178583458, -0.935703456, -0.806962013, 0.473659486, -0.352787554)
WedgePart64.Orientation = Vector3.new(69.34200286865234, 180, 120.41100311279297)
WedgePart64.Position = Vector3.new(-371.953125, 109.78987121582031, 505.3851318359375)
WedgePart64.Rotation = Vector3.new(110.65799713134766, 0, -59.5890007019043)
WedgePart64.Color = Color3.new(1, 0, 0)
WedgePart64.Transparency = 1
WedgePart64.Size = Vector3.new(454.7279357910156, 6.447580814361572, 381.2944030761719)
WedgePart64.Anchored = true
WedgePart64.BottomSurface = Enum.SurfaceType.Smooth
WedgePart64.BrickColor = BrickColor.new("Really red")
WedgePart64.brickColor = BrickColor.new("Really red")
WedgePart65.Parent = Model46
WedgePart65.CFrame = CFrame.new(-371.953125, -69.1750946, 437.910095, -0.50620681, 0.862412155, 4.42540085e-08, -0.304248273, -0.178583533, 0.935703397, 0.806962013, 0.473659456, 0.352787614)
WedgePart65.Orientation = Vector3.new(-69.34200286865234, 0, -120.41200256347656)
WedgePart65.Position = Vector3.new(-371.953125, -69.17509460449219, 437.91009521484375)
WedgePart65.Rotation = Vector3.new(-69.34200286865234, 0, -120.41100311279297)
WedgePart65.Color = Color3.new(1, 0, 0)
WedgePart65.Transparency = 1
WedgePart65.Size = Vector3.new(454.7279357910156, 6.447580814361572, 1.2305526733398438)
WedgePart65.Anchored = true
WedgePart65.BottomSurface = Enum.SurfaceType.Smooth
WedgePart65.BrickColor = BrickColor.new("Really red")
WedgePart65.brickColor = BrickColor.new("Really red")
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(v)
end
