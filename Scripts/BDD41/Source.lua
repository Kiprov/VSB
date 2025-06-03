----------------------------------
--Ballistic Dispatcher Device-41--
----------------------------------
--By	 --
--CKbackup-
-----------

player = game.Players.LocalPlayer
chara = player.Character
debby = game.Debris
Mouse = player:GetMouse()
chara.Humanoid.WalkSpeed = 24
atkd = false
atkdd = false
targetted = nil
exed = false
exeact = false

--Outfit--
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end

Gun1 = New("Model",chara,"Gun1",{})
Handle1 = New("Part",Gun1,"Handle1",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.800000012, 1, 1),CFrame = CFrame.new(34.5999947, 1.10000491, 22.4999981, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",Handle1,"Weld",{Part0 = Handle1,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(-0.0999679565, -0.900001526, 0.100005031, -1, 0, 0, 0, 0, -1, 0, -1, 0),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.999999762, 0.600000024),CFrame = CFrame.new(34.5999985, 1.10000467, 22.0999928, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, -2.38418579e-07, 0.400005341, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.599999905),CFrame = CFrame.new(34.5999947, 1.30000496, 23.0999908, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.400000006, 0.200000003, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(0, 0.199999988, -0.599992752, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.400000006),CFrame = CFrame.new(34.5999947, 2.20000482, 22.1999989, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.800000012, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 1.0999999, 0.299999237, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.399999976),CFrame = CFrame.new(34.5999947, 2.20000482, 26.2999973, 0, 0, 1, -1, 0, 0, 0, -1, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.10000002, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0),C1 = CFrame.new(0, 1.0999999, -3.79999924, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(34.5999985, 2.20000482, 23.2999954, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(-3.81469727e-06, 1.0999999, -0.79999733, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 3.5999999),CFrame = CFrame.new(34.5999985, 1.80000472, 23.9999924, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, 0.69999975, -1.49999428, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.800000012),CFrame = CFrame.new(34.5999985, 2.20000482, 22.7999935, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, 1.0999999, -0.299995422, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("White"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999738, 1.19999993),CFrame = CFrame.new(34.5999947, 2.00000477, 23.7999916, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.94902, 0.952941, 0.952941),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.70000005, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(0, 0.899999917, -1.29999352, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(34.5999985, 2.20000482, 24.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, 1.0999999, -1.80000114, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(34.5999947, 2.20000482, 26.2999897, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.0999999, -3.79999161, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.400000006),CFrame = CFrame.new(34.5999985, 1.80000472, 25.9999981, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(-3.81469727e-06, 0.699999869, -3.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(34.5999985, 1.80000472, 22.0999928, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, 0.69999975, 0.400005341, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 1.79999995),CFrame = CFrame.new(34.5999985, 2.20000482, 25.2999992, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, 1.0999999, -2.80000114, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Hitbox1 = New("Part",Gun1,"Hitbox1",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.400000006, 1.19999969, 3.39999986),CFrame = CFrame.new(34.5999985, 1.80002093, 24.6999912, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",Hitbox1,"Weld",{Part0 = Hitbox1,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, 0.700015962, -2.19999313, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(34.5999947, 2.50000501, 25.9999962, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(0, 1.4000001, -3.49999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.999999762, 0.600000024),CFrame = CFrame.new(34.5999947, 1.10000491, 22.6999989, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 0, -0.200000763, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2.4000001),CFrame = CFrame.new(34.5999947, 1.40000486, 24.5999928, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(0, 0.300000012, -2.09999466, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.400000095),CFrame = CFrame.new(34.5999947, 1.40000486, 25.7999935, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.04999995, 1.04999995, 0.200000003),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(0, 0.300000012, -3.29999542, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.400000006),CFrame = CFrame.new(34.5999947, 1.60000467, 23, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1.25, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.499999821, -0.500001907, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.399999976),CFrame = CFrame.new(34.5999947, 1.80000472, 25.9999962, 0, 0, 1, -1, 0, 0, 0, -1, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.10000002, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0),C1 = CFrame.new(0, 0.699999869, -3.49999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
BulletSpawn1 = New("Part",Gun1,"BulletSpawn1",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.399999976),CFrame = CFrame.new(34.5999947, 2.20000482, 26.2999973, 0, 0, 1, -1, 0, 0, 0, -1, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",BulletSpawn1,"Mesh",{Scale = Vector3.new(0.699999988, 1.14999998, 0.699999988),})
Weld = New("ManualWeld",BulletSpawn1,"Weld",{Part0 = BulletSpawn1,Part1 = Handle1,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0),C1 = CFrame.new(0, 1.0999999, -3.79999924, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun1,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(34.5999985, 2.20000482, 22.2999935, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle1,C1 = CFrame.new(-3.81469727e-06, 1.0999999, 0.200004578, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

Gun2 = New("Model",chara,"Gun2",{})
Handle2 = New("Part",Gun2,"Handle2",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.800000012, 1, 1),CFrame = CFrame.new(37.3999939, 1.10000491, 22.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",Handle2,"Weld",{Part0 = Handle2,Part1 = chara["Left Arm"],C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 1, 0, 0, 0, -1),C1 = CFrame.new(0.100032806, -0.900003433, 0.100005031, -1, 0, 0, 0, 0, -1, 0, -1, 0),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.999999762, 0.600000024),CFrame = CFrame.new(37.3999977, 1.10000467, 22.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, -2.38418579e-07, 0.400005341, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.599999905),CFrame = CFrame.new(37.3999939, 1.30000496, 23.0999928, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.400000006, 0.200000003, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(0, 0.199999988, -0.599992752, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.400000006),CFrame = CFrame.new(37.3999939, 2.20000482, 22.2000008, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 0.800000012, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 1.0999999, 0.299999237, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.399999976),CFrame = CFrame.new(37.3999939, 2.20000482, 26.2999992, 0, 0, 1, -1, 0, 0, 0, -1, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.10000002, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0),C1 = CFrame.new(0, 1.0999999, -3.79999924, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(37.3999977, 2.20000482, 23.2999973, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(-3.81469727e-06, 1.0999999, -0.79999733, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 3.5999999),CFrame = CFrame.new(37.3999977, 1.80000472, 23.9999943, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, 0.69999975, -1.49999428, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.800000012),CFrame = CFrame.new(37.3999977, 2.20000482, 22.7999954, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, 1.0999999, -0.299995422, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("White"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999738, 1.19999993),CFrame = CFrame.new(37.3999939, 2.00000477, 23.7999935, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.94902, 0.952941, 0.952941),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.70000005, 1),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(0, 0.899999917, -1.29999352, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(37.3999977, 2.20000482, 24.3000011, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, 1.0999999, -1.80000114, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(37.3999939, 2.20000482, 26.2999916, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 1.0999999, -3.79999161, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.400000006),CFrame = CFrame.new(37.3999977, 1.80000472, 26, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(-3.81469727e-06, 0.699999869, -3.5, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(37.3999977, 1.80000472, 22.0999947, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, 0.69999975, 0.400005341, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 1.79999995),CFrame = CFrame.new(37.3999977, 2.20000482, 25.3000011, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, 1.0999999, -2.80000114, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Hitbox2 = New("Part",Gun2,"Hitbox2",{Transparency = 1,Transparency = 1,Size = Vector3.new(0.400000006, 1.19999969, 3.39999986),CFrame = CFrame.new(37.3999977, 1.80002093, 24.6999931, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",Hitbox2,"Weld",{Part0 = Hitbox2,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, 0.700015962, -2.19999313, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.800000012),CFrame = CFrame.new(37.3999939, 2.50000501, 25.9999981, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(0, 1.4000001, -3.49999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.999999762, 0.600000024),CFrame = CFrame.new(37.3999939, 1.10000491, 22.7000008, 1, 0, 0, 0, -1, 0, 0, 0, -1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1, 1),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, -1, 0, 0, 0, -1),C1 = CFrame.new(0, 0, -0.200000763, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Dark stone grey"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 2.4000001),CFrame = CFrame.new(37.3999939, 1.40000486, 24.5999947, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.388235, 0.372549, 0.384314),})
Mesh = New("BlockMesh",Part,"Mesh",{})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(0, 0.300000012, -2.09999466, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.400000095),CFrame = CFrame.new(37.3999939, 1.40000486, 25.7999954, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("BlockMesh",Part,"Mesh",{Scale = Vector3.new(1.04999995, 1.04999995, 0.200000003),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(0, 0.300000012, -3.29999542, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.400000006),CFrame = CFrame.new(37.3999939, 1.60000467, 23.0000019, -1, 0, 0, 0, -1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{Scale = Vector3.new(0.200000003, 1.25, 0.5),MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1),C1 = CFrame.new(0, 0.499999821, -0.500001907, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.400000006, 0.399999976),CFrame = CFrame.new(37.3999939, 1.80000472, 25.9999981, 0, 0, 1, -1, 0, 0, 0, -1, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Mesh = New("CylinderMesh",Part,"Mesh",{Scale = Vector3.new(0.800000012, 1.10000002, 0.800000012),})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0),C1 = CFrame.new(0, 0.699999869, -3.49999809, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
BulletSpawn2 = New("Part",Gun2,"BulletSpawn2",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.200000003, 0.399999976),CFrame = CFrame.new(37.3999939, 2.20000482, 26.2999992, 0, 0, 1, -1, 0, 0, 0, -1, 0),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
Mesh = New("CylinderMesh",BulletSpawn2,"Mesh",{Scale = Vector3.new(0.699999988, 1.14999998, 0.699999988),})
Weld = New("ManualWeld",BulletSpawn2,"Weld",{Part0 = BulletSpawn2,Part1 = Handle2,C0 = CFrame.new(0, 0, 0, 0, -1, 0, 0, 0, -1, 1, 0, 0),C1 = CFrame.new(0, 1.0999999, -3.79999924, -1, 0, 0, 0, 1, 0, 0, 0, -1),})
Part = New("Part",Gun2,"Part",{BrickColor = BrickColor.new("Mid gray"),Material = Enum.Material.SmoothPlastic,Size = Vector3.new(0.400000006, 0.399999708, 0.200000003),CFrame = CFrame.new(37.3999977, 2.20000482, 22.2999954, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(0.803922, 0.803922, 0.803922),})
Mesh = New("SpecialMesh",Part,"Mesh",{MeshType = Enum.MeshType.Wedge,})
Weld = New("ManualWeld",Part,"Weld",{Part0 = Part,Part1 = Handle2,C1 = CFrame.new(-3.81469727e-06, 1.0999999, 0.200004578, -1, 0, 0, 0, 1, 0, 0, 0, -1),})

RightArm = New("Model",chara,"RightArm",{})
MainPart = New("Part",RightArm,"MainPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(0.5, 3.00000787, -3.50019717, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Right Arm"],C1 = CFrame.new(0, -1.00135803e-005, -0.000197172165, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
Emit2Part = New("Part",RightArm,"Emit2Part",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(0.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
Mesh = New("SpecialMesh",Emit2Part,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",Emit2Part,"Weld",{Part0 = Emit2Part,Part1 = MainPart,C1 = CFrame.new(0, -0.899994135, 4.76837158e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
LeftArm = New("Model",chara,"LeftArm",{})
MainPart = New("Part",LeftArm,"MainPart",{Transparency = 1,Transparency = 1,Size = Vector3.new(1, 2, 1),CFrame = CFrame.new(-2.50000024, 3.00000787, -3.50019717, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,})
Weld = New("ManualWeld",MainPart,"Weld",{Part0 = MainPart,Part1 = chara["Left Arm"],C1 = CFrame.new(-2.38418579e-007, -1.00135803e-005, -0.000197172165, 1, 0, 0, 0, 1, 0, 0, 0, 1),})
EmitPart = New("Part",LeftArm,"EmitPart",{BrickColor = BrickColor.new("Hot pink"),Material = Enum.Material.Neon,Transparency = 1,Transparency = 1,Size = Vector3.new(1, 1, 1),CFrame = CFrame.new(-2.5, 2.10001373, -3.5001967, 1, 0, 0, 0, 1, 0, 0, 0, 1),CanCollide = false,BackSurface = Enum.SurfaceType.SmoothNoOutlines,BottomSurface = Enum.SurfaceType.SmoothNoOutlines,FrontSurface = Enum.SurfaceType.SmoothNoOutlines,LeftSurface = Enum.SurfaceType.SmoothNoOutlines,RightSurface = Enum.SurfaceType.SmoothNoOutlines,TopSurface = Enum.SurfaceType.SmoothNoOutlines,Color = Color3.new(1, 0, 0.74902),})
Mesh = New("SpecialMesh",EmitPart,"Mesh",{Scale = Vector3.new(1.29999995, 1.29999995, 1.29999995),MeshType = Enum.MeshType.Sphere,})
Weld = New("ManualWeld",EmitPart,"Weld",{Part0 = EmitPart,Part1 = MainPart,C1 = CFrame.new(2.38418579e-007, -0.899994135, 4.76837158e-007, 1, 0, 0, 0, 1, 0, 0, 0, 1),})

lach = LeftArm:GetChildren()
rach = RightArm:GetChildren()
ch = chara:GetChildren()

ScreenGui = New("ScreenGui",player.PlayerGui,"ScreenGui",{})
Frame = New("Frame",ScreenGui,"Frame",{BackgroundColor3 = Color3.new(.7,.7,.7),BorderColor3 = Color3.new(.5,.5,.5),BorderSizePixel = 3,Position = UDim2.new(0,700,0,100),Size = UDim2.new(0,200,0,400),Draggable = true})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,0),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "BDD-41",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,20),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "M - Mute/Unmute Music",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,40),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "Z - Swing",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,60),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "X - Kick",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,80),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "C - Barrel Explode",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,100),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "Q - Select Target",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,120),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "E - Block",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,140),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "SAX - Ballista Revolver",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,160),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "SSX - Hagar",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,180),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "DSDC - From Above",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,200),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "SSQ - Evade",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,220),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "ADDQ - Grab",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,240),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "Target Moves:",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,260),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "SDQ - Alpha Blast",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,280),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "SSDDQ - Summon Ferir",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,300),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "DASDQ - Rocket Barrage",TextColor3 = Color3.new(1,1,1)})
TextLabel = New("TextLabel",Frame,"TextLabel",{BackgroundTransparency = 1,BorderSizePixel = 0,Position = UDim2.new(0,0,0,320),Size = UDim2.new(0,200,0,20),FontSize = "Size14",Font = "SciFi",Text = "DSASQ - Ray Overdrive",TextColor3 = Color3.new(1,1,1)})
OpenButton = New("TextButton",ScreenGui,"OpenButton",{BackgroundColor3 = Color3.new(.7,.7,.7),BorderColor3 = Color3.new(.5,.5,.5),BorderSizePixel = 3,Position = UDim2.new(0,700,0,500),Size = UDim2.new(0,50,0,20),FontSize = "Size14",Font = "SciFi",Text = "Close",TextColor3 = Color3.new(1,1,1)})

OpenButton.MouseButton1Click:connect(function()
if Frame.Visible == true then
Frame.Visible = false
OpenButton.Text = "Open"
elseif Frame.Visible == false then
Frame.Visible = true
OpenButton.Text = "Close"
end
end)

crosshair = Instance.new("BillboardGui",chara)
crosshair.Size = UDim2.new(10,0,10,0)
crosshair.Enabled = false
imgl = Instance.new("ImageLabel",crosshair)
imgl.Position = UDim2.new(0,0,0,0)
imgl.Size = UDim2.new(1,0,1,0)
imgl.Image = "rbxassetid://233522684"
imgl.BackgroundTransparency = 1
imgl.ImageColor3 = Color3.new(1,1,0)

--Sounds--
function LoadSnd(id,loop,vol,pit)
local snd = New("Sound",chara,"Sound",{SoundId = "rbxassetid://"..id,Looped = loop,Volume = vol,Pitch = pit})
return snd
end
Music = LoadSnd(139488665764275,true,1,1)
StartUpSnd = LoadSnd(153092315,false,1,.8)
SwingSnd = LoadSnd(158037267,false,1,1)
Swing2Snd = LoadSnd(12222208,false,1,1)
HitSnd = LoadSnd(153092274,false,1,1)
HitPunchSnd = LoadSnd(153092227,false,1,1)
DodgeSnd = LoadSnd(232210079,false,1,1)
ExpSnd = LoadSnd(142070127,false,1,1)
FlySnd = LoadSnd(169445602,false,1,1)
BExpSnd = LoadSnd(258057783,false,5,1)
ClawDashSnd = LoadSnd(62339698,false,1,.5)
deathmus = LoadSnd(395580552,true,5,1)
deathex = LoadSnd(258057783,false,5,1)
--Grunt1Snd = LoadSnd(159882486,false,1,1.1)
--Grunt2Snd = LoadSnd(159882466,false,1,1.1)
--Grunt3Snd = LoadSnd(159972643,false,1,1.1)
--Grunt4Snd = LoadSnd(159882584,false,1,1.1)
--YouIdiotSnd = LoadSnd(160212768,false,1,1.1)
--DieSnd = LoadSnd(159882598,false,1,1.1)
--Laugh1Snd = LoadSnd(160212549,false,1,1.1)
--Laugh2Snd = LoadSnd(159882561,false,1,1.1)
--Laugh3Snd = LoadSnd(160212812,false,1,1.1)
ChargeSnd = LoadSnd(137463716,false,1,1)
LasSnd = LoadSnd(162246701,false,1,1)
LasLoopSnd = LoadSnd(162246683,true,1,1)
RStompSnd = LoadSnd(2760979,false,1,1)
GunFlameSnd = LoadSnd(2691586,false,1,1)
OrbSnd = LoadSnd(233091161,false,1,1)
ElectricSnd = LoadSnd(231917975,false,1,1)
LightsOutSnd = LoadSnd(231917794,false,1,1)
SkyBeamSnd = LoadSnd(260433522,false,1,1)
TargetSnd = LoadSnd(613361563,false,1,1)
SV1Snd = LoadSnd(28144425,false,1,.265)
SV2Snd = LoadSnd(2697431,false,1,.3)
SVHitSnd = LoadSnd(62339698,false,1,.3)
IceBreakSnd = LoadSnd(357568316,false,1,1)
FreezeSnd = LoadSnd(203936153,false,1,1)
IceBreak2Snd = LoadSnd(87015121,false,1,1)
BlockedSnd = LoadSnd(357622136,false,1,1)
BulletGSnd = LoadSnd(131072992,false,1,2)
MinigunSnd = LoadSnd(146830867,false,1,1)
MiniStopSnd = LoadSnd(295843191,false,1,1)
BulletLSnd = LoadSnd(144884872,false,1,1)
MissileSnd = LoadSnd(137991337,false,1,1)
Music:Play()

--Play Sound in Part--
function PlaySnd(snd,part)
local sound = snd:Clone()
sound.PlayOnRemove = true
sound.Parent = part
sound:Destroy()
end

--Target Select--
function TargetSelect(person)
local dd=coroutine.wrap(function()
if targetted ~= person then
targetted = person
for i = 0,30,10 do
wait(.05)
crosshair.Size = UDim2.new(40-i,0,40-i,0)
end
end
end)
dd()
end

--Damage Function--
function dealdmg(dude,damage,env,toim,kby,kbx)
hurt = coroutine.wrap(function(dude2,damage2,env2,toim2)
if dude ~= chara and dude:FindFirstChild("IsHit") == nil then
TargetSelect(dude)
dude.Humanoid.MaxHealth = 100
finaldmg = damage + math.random(-env,env)
if berserkmode == true then
finaldmg = finaldmg * 1.5
end
dude.Humanoid.Health = dude.Humanoid.Health - finaldmg
local vall = Instance.new("ObjectValue",dude)
vall.Name = "IsHit"
debby:AddItem(vall,toim)
local bfos = Instance.new("BodyVelocity",dude.Head)
bfos.P = 20000
bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
bfos.Velocity = Vector3.new(0,kby,0) + chara.HumanoidRootPart.CFrame.lookVector * kbx
debby:AddItem(bfos,.1)
local naeeym2 = Instance.new("BillboardGui",dude)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = dude.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = "-"..finaldmg
tecks2.Font = "SciFi"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,0.6,0)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
for i = 1, 5 do
wait(.1)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end
end)
hurt(dude,damage,env,toim)
end

--Explode Hitbox--
function ExHitbox(rad,pos,damage,env,toim,kby,kbx)
local E = Instance.new("Explosion") 
E.Position = pos
E.Parent = game.Workspace
E.BlastRadius = rad
E.BlastPressure = 0
E.Visible = false
E.Hit:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid")~=nil then
dealdmg(hit.Parent,damage,env,toim,kby,kbx)
end
end)
end

--Chat Function--
function chatfunc(text)
local chat = coroutine.wrap(function()
if chara:FindFirstChild("TalkingBillBoard")~= nil then
chara:FindFirstChild("TalkingBillBoard"):destroy()
end
local naeeym2 = Instance.new("BillboardGui",chara)
naeeym2.Size = UDim2.new(0,100,0,40)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = chara.Head
naeeym2.Name = "TalkingBillBoard"
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.BorderSizePixel = 0
tecks2.Text = ""
tecks2.Font = "Fantasy"
tecks2.FontSize = "Size24"
tecks2.TextStrokeTransparency = 0
tecks2.TextColor3 = Color3.new(1,1,1)
tecks2.TextStrokeColor3 = Color3.new(0,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
if berserkmode == true then
tecks2.TextColor3 = Color3.new(1,0,0)
tecks2.TextStrokeColor3 = Color3.new(1,1,0)
end
for i = 1,string.len(text),1 do
tecks2.Text = string.sub(text,1,i)
wait(0.01)
end
wait(1)
for i = 1, 5 do
wait(.01)
tecks2.Position = tecks2.Position - UDim2.new(0,0,.05,0)
tecks2.TextStrokeTransparency = tecks2.TextStrokeTransparency +.2
tecks2.TextTransparency = tecks2.TextTransparency + .2
end
naeeym2:Destroy()
end)
chat()
end

function onChatted(msg)
chatfunc(msg)
end
player.Chatted:connect(onChatted)

--Punch Hit Effect--
function PunchEff(pos)
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(0,0,0)
p.BrickColor = BrickColor.new("White")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = pos
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(2,2,2)
end
wait(.01)
p:Destroy()
end)
disp()
end

--Blade Hit Effect--
function SlashEff(pos)
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(0,0,0)
p.BrickColor = BrickColor.new("White")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = pos * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
pm.Scale = Vector3.new(2.5,0,2.5)
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(0,30,0)
end
wait(.01)
p:Destroy()
end)
disp()
end

--Super Pause--
function SuperPause()
StartUpSnd:Play()
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(0,0,0)
p.BrickColor = BrickColor.new("White")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = chara.Torso.CFrame
local pm = Instance.new("SpecialMesh",p)
pm.MeshType = "Sphere"
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(20,20,20)
end
wait(.01)
p:Destroy()
end)
disp()
end

--Punch Touch--
dela = .5
punchactive = false
function punchhit(hit)
if punchactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,9,2,dela,0,25)
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(Hitbox1.CFrame)
end
end
end
Hitbox1.Touched:connect(punchhit)

--Kick Touch--
kickactive = false
dkickactive = false
skickactive = false
didskick = false
lkickactive = false
function kickhit(hit)
if kickactive == true then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,10,2,dela,0,35)
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(hit.CFrame)
if dkickactive == true then
hit.Parent.Humanoid.PlatformStand = true
hit.Parent.Head.CFrame = chara["Right Leg"].CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
wait(3)
hit.Parent.Humanoid.PlatformStand = false
end
if skickactive == true then
local bodpf = Instance.new("BodyPosition",hit.Parent.Head)
bodpf.MaxForce = Vector3.new(10000,10000,10000)
bodpf.Position = chara.HumanoidRootPart.Position + Vector3.new(0,30,0) + (chara.HumanoidRootPart.CFrame.lookVector*3)
debby:AddItem(bodpf,3.5)
didskick = true
end
if lkickactive == true then
if hit.Parent.Head:FindFirstChild("BodyPosition") ~= nil then
hit.Parent.Head:FindFirstChild("BodyPosition"):Destroy()
end
local bfos = Instance.new("BodyVelocity",hit.Parent.Head)
bfos.P = 20000
bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
bfos.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 20 + Vector3.new(0,30,0)
debby:AddItem(bfos,.3)
end
end
end
end
chara["Left Leg"].Touched:connect(kickhit)
chara["Right Leg"].Touched:connect(kickhit)

--Grab Touch--
weldd = nil
function grabhit(hit)
if exeact == true and exed == false then
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= chara and hit.Parent:FindFirstChild("IsHit")==nil then
dealdmg(hit.Parent,9,2,dela,0,0)
PlaySnd(HitPunchSnd,hit.Parent.Head)
PunchEff(hit.CFrame)
weldd = Instance.new("Weld",hit.Parent)
weldd.Part0 = hit.Parent.Head
weldd.Part1 = BulletSpawn2
exed = true
end
end
end
Hitbox2.Touched:connect(grabhit)

function CasingDrop(no)
local hitpt = Instance.new("Part",game.Workspace)
hitpt.Size = Vector3.new(0,0,1)
hitpt.TopSurface = 0
hitpt.BottomSurface = 0
local bf = Instance.new("BodyVelocity",hitpt)
bf.P = 10000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
debby:AddItem(bf,.1)
if no == "Right" then
hitpt.Position = Hitbox1.Position
hitpt.CFrame = Hitbox1.CFrame
bf.Velocity = Vector3.new(0,5,0) + Hitbox1.CFrame.rightVector*10
elseif no == "Left" then
hitpt.Position = Hitbox2.Position
hitpt.CFrame = Hitbox2.CFrame
bf.Velocity = Vector3.new(0,5,0) + Hitbox1.CFrame.rightVector*-10
end
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "http://www.roblox.com/asset/?id=94295100"
hitm.TextureId = "http://www.roblox.com/asset/?id=94287792"
hitm.Scale = Vector3.new(6,6,7)
debby:AddItem(hitpt,3)
end

function GunPlode()
PlaySnd(GunFlameSnd,chara)
PlaySnd(ExpSnd,chara)
PlaySnd(BulletGSnd,chara)
CasingDrop("Right")
CasingDrop("Left")
local hitpt = Instance.new("Part",game.Workspace)
hitpt.Size = Vector3.new(1,1,1)
hitpt.Anchored = true
hitpt.CanCollide = false
hitpt.BrickColor = BrickColor.new("Bright yellow")
hitpt.CFrame = BulletSpawn1.CFrame * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local hitb = Instance.new("Part",game.Workspace)
hitb.Size = Vector3.new(1,1,1)
hitb.Anchored = true
hitb.CanCollide = false
hitb.BrickColor = BrickColor.new("Bright yellow")
hitb.Material = "Neon"
hitb.CFrame = CFrame.new(hitpt.Position.x,hitpt.Position.y,hitpt.Position.z) * CFrame.fromEulerAnglesXYZ(math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)))
local hitpt2 = hitpt:Clone()
hitpt2.Parent = game.Workspace
hitpt.CFrame = BulletSpawn2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local hitb2 = hitb:Clone()
hitb2.Parent = game.Workspace
hitb.CFrame = CFrame.new(hitpt.Position.x,hitpt.Position.y,hitpt.Position.z) * CFrame.fromEulerAnglesXYZ(math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)))
local hitbm = Instance.new("SpecialMesh",hitb)
hitbm.MeshType = "Sphere"
hitbm.Scale = Vector3.new(1,1,1)
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "http://www.roblox.com/asset/?id=3270017"
local hitbm2 = hitbm:Clone()
hitbm2.Parent = hitb2
local hitm2 = hitm:Clone()
hitm2.Parent = hitpt2
local hpt = coroutine.wrap(function()
for i = 1, 9 do
wait(.05)
hitpt.Transparency = hitpt.Transparency + .1
hitm.Scale = hitm.Scale + Vector3.new(.5,.5,.5)
hitb.Transparency = hitb.Transparency + .1
hitbm.Scale = hitbm.Scale + Vector3.new(.5,.5,.5)
hitpt2.Transparency = hitpt2.Transparency + .1
hitm2.Scale = hitm2.Scale + Vector3.new(.5,.5,.5)
hitb2.Transparency = hitb2.Transparency + .1
hitbm2.Scale = hitbm2.Scale + Vector3.new(.5,.5,.5)
end
hitpt:Destroy()
hitb:Destroy()
hitpt2:Destroy()
hitb2:Destroy()
end)
hpt()
ExHitbox(5,BulletSpawn1.Position,12,2,.1,0,-50)
ExHitbox(5,BulletSpawn2.Position,12,2,.1,0,50)
end

function Laser(Partt,Targ)
local EffectPart = Instance.new("Part",game.Workspace)
EffectPart.Size = Vector3.new(1,1,1)
EffectPart.Anchored = true
EffectPart.BrickColor = BrickColor.new("Bright yellow")
EffectPart.Material = "Neon"
EffectPart.Position = Targ.Position
EffectPart.CFrame = CFrame.new(Targ.Position.x,Targ.Position.y,Targ.Position.z)
local mehs1 = Instance.new("SpecialMesh",EffectPart)
mehs1.MeshType = "Sphere"
mehs1.Scale = Vector3.new(2,2,2)
local P = Instance.new("Part") 
local Place0 = Partt.CFrame
local Place1 = EffectPart.CFrame
local meshla = Instance.new("BlockMesh", P)
meshla.Scale = Vector3.new(1,1,1)
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1.p).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Bright yellow")
P.Material = "Neon"
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
ExHitbox(5,Place1.p,20,2,.1,0,5)
local fu = coroutine.wrap(function()
for i = 1, 10 do
wait(.01)
mehs1.Scale = mehs1.Scale + Vector3.new(.5,.5,.5)
meshla.Scale = meshla.Scale + Vector3.new(.25,.25,0)
EffectPart.Transparency = EffectPart.Transparency + .1
P.Transparency = P.Transparency + .1
end
----
P:Destroy()
EffectPart:Destroy()
end)
fu()
end

--Material Return--
gprop = {}
function materialhit(hit)
if hit.Parent ~= chara and hit.Parent.Parent ~= chara and hit.Name ~= "Trace" and hit.Parent:FindFirstChild("Humanoid") == nil then
gprop = {hit.BrickColor,hit.Material}
end
end
chara["Left Leg"].Touched:connect(materialhit)
chara["Right Leg"].Touched:connect(materialhit)

--Clerp Animations--
TC = chara.HumanoidRootPart.RootJoint
HC = chara.Torso.Neck
RAC = chara.Torso["Right Shoulder"]
LAC = chara.Torso["Left Shoulder"]
RLC = chara.Torso["Right Hip"]
LLC = chara.Torso["Left Hip"]
TCF = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
HCF = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
RACF = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LACF = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RLCF = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
LLCF = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RWF = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LWF = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RLWF = CFrame.new(-.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
LLWF = CFrame.new(.5, 2, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
RW = Instance.new("Weld",HC.Parent)
RW.Part1 = HC.Parent
RW.Part0 = chara["Right Arm"]
RW.C0 = RWF
LW = Instance.new("Weld",HC.Parent)
LW.Part1 = HC.Parent
LW.Part0 = chara["Left Arm"]
LW.C0 = LWF
RLW = nil
LLW = nil

function AddLegWelds()
RLW = Instance.new("Weld",chara["Right Leg"])
RLW.Part1 = HC.Parent
RLW.Part0 = chara["Right Leg"]
RLW.C0 = RLWF
LLW = Instance.new("Weld",chara["Left Leg"])
LLW.Part1 = HC.Parent
LLW.Part0 = chara["Left Leg"]
LLW.C0 = LLWF
end

function DestroyLegWelds()
RLC = New("Motor6D",chara.Torso,"Right Hip",{Part0 = chara.Torso,Part1 = chara["Right Leg"],C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),})
LLC = New("Motor6D",chara.Torso,"Left Hip",{Part0 = chara.Torso,Part1 = chara["Left Leg"],C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),})
RLW:Destroy()
LLW:Destroy()
end

function clerp(a,b,c)
return a:lerp(b,c)
end

--TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
--HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50))
--RW.C0 = (RWF + Vector3.new(1,2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
--LW.C0 = LWF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(2))

TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF

--Idle Clerp--
ITCF = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(70))
IHCF = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-70))
IRWF = (RWF - Vector3.new(-.5,.5,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(-70),0)
ILWF = (LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)

TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF


--Punch--
function Punch()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
punchactive = true
wait(.01)
SwingSnd:Play()
wait(.01)
for i = 0,.75,.25 do
wait(.01)
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-180)),TCF,.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
wait(.1)
bladeactive = false
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,TCF,.6-i)
HC.C0 = clerp(IHCF,HCF,.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
end
chara.Humanoid.WalkSpeed = 32
punchactive = false
del = false
atkdd = true
end

--Kick Atk--
function KickAtk()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
kickactive = true
AddLegWelds()
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,0,bfos.P)
bfos.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 200
debby:AddItem(bfos,.1)
for i = 0,.75,.25 do
wait(.05)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,math.rad(-85)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.4+i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(45)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(-1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-45)),.4+i)
end
for i = 0,.75,.25 do
wait(.05)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,math.rad(-85)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(85)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,.3,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-30)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.2,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-10)),.6-i)
LLW.C0 = clerp(LLWF,(LLWF - Vector3.new(1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(45)),.6-i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(-1,0,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-45)),.6-i)
end
DestroyLegWelds()
kickactive = false
chara.Humanoid.WalkSpeed = 24
del = false
atkdd = true
end

--Explod--
function ExplodPunch()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
wait(.01)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
GunPlode()
wait(.5)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
chara.Humanoid.WalkSpeed = 24
atkdd = true
del = false
end

--Bandit Revolver--
function BanditRevolver()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
kickactive = true
dkickactive = true
chatfunc("Bandit Revolver!")
AddLegWelds()
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,0,bfos.P)
bfos.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 40
for i = 0,.6,.2 do
wait(.01)
TC.C0 = clerp(ITCF,(TCF + Vector3.new(0,1,0)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),.4+i)
end
SwingSnd:Play()
for i = 0,1,.25 do
wait(.0001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)),i)
end
for i = 0,1,.25 do
wait(.0001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(180)),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(360)),i)
end
for i = 0,1,.25 do
wait(.01)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(270)),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),IHCF,i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),IRWF,i)
LW.C0 = clerp((LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),ILWF,i)
RLW.C0 = clerp((RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),RLWF,i)
end
DestroyLegWelds()
dkickactive = false
kickactive = false
chara.Humanoid.WalkSpeed = 24
bfos:Destroy()
del = false
atkdd = true
end

--Freezer Kick--
function FlipKickEffect(pos)
local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(0,0,0)
p.BrickColor = BrickColor.new("Bright yellow")
p.Material = "Neon"
p.Anchored = true
p.CanCollide = false
p.CFrame = pos * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local pm = Instance.new("BlockMesh",p)
local disp = coroutine.wrap(function()
for i = 1, 4 do
wait(.01)
p.Transparency = p.Transparency + .2
pm.Scale = pm.Scale + Vector3.new(2,2,2)
end
wait(.01)
p:Destroy()
end)
disp()
end
function FlipKick()
del = true
atkd = true
chatfunc("Hagar!")
AddLegWelds()
kickactive = true
lkickactive = true
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
bfos.Velocity = Vector3.new(0,10,0) + chara.HumanoidRootPart.CFrame.lookVector * 50
Swing2Snd:Play()
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),.4+i)
RLW.C0 = clerp(RLWF,(RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),.4+i)
FlipKickEffect(chara["Right Leg"].CFrame - chara["Right Leg"].CFrame.upVector*1.5)
end
for i = 1, 3 do
wait(.001)
FlipKickEffect(chara["Right Leg"].CFrame - chara["Right Leg"].CFrame.upVector*1.5)
end
bfos:Destroy()
kickactive = false
lkickactive = false
wait(.25)
for i = 0,1,.25 do
wait(.001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0),IHCF,.4+i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-50)),IRWF,.4+i)
LW.C0 = clerp((LWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(50)),ILWF,.4+i)
RLW.C0 = clerp((RLWF - Vector3.new(0,1,1.2)) * CFrame.fromEulerAnglesXYZ(math.rad(-90),0,0),RLWF,.4+i)
end
DestroyLegWelds()
del = false
end

--Alpha Blast--
function ABlast()
del = true
atkd = true
chatfunc("Alpha Blast!")
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
for i = 1, 2 do
	GunFlameSnd:Play()
	BulletGSnd:Play()
	CasingDrop("Left")
	local missile = Instance.new("Part",game.Workspace)
	missile.Size = Vector3.new(0,0,0)
	missile.Name = "Blast"
	missile.Transparency = 1
	missile.Position = BulletSpawn2.Position
	missile.CFrame = BulletSpawn2.CFrame
	missile.Velocity = ((targetted.Head.Position - Vector3.new(0,2,0)) - chara.HumanoidRootPart.Position).unit*200
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:GetMass()*game.Workspace.Gravity,0)
	force.Parent = missile
	local p1mit = Instance.new("ParticleEmitter",missile)
	p1mit.Texture = "rbxasset://textures/particles/smoke_main.dds"
	p1mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new("Bright yellow").Color),ColorSequenceKeypoint.new(1,BrickColor.new("Bright orange").Color)})
	p1mit.LightEmission = 1
	p1mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
	p1mit.Lifetime = NumberRange.new(1)
	p1mit.Rate = 10000
	p1mit.Rotation = NumberRange.new(0,359)
	p1mit.RotSpeed = NumberRange.new(100)
	p1mit.Speed = NumberRange.new(0)
	missile.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and force ~= nil) then
	force:Destroy()
	force = nil
	ExHitbox(3,missile.Position,12,1,.1,0,5)
	PlaySnd(BulletLSnd,hit)
	p1mit.Enabled = false
	wait(2)
	missile:Destroy()
	end
	end)
	wait(.1)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
	debby:AddItem(missile,10)
	GunFlameSnd:Play()
	BulletGSnd:Play()
	CasingDrop("Right")
	local missile = Instance.new("Part",game.Workspace)
	missile.Size = Vector3.new(0,0,0)
	missile.Name = "Blast"
	missile.Transparency = 1
	missile.Position = BulletSpawn1.Position
	missile.CFrame = BulletSpawn1.CFrame
	missile.Velocity = ((targetted.Head.Position - Vector3.new(0,2,0)) - chara.HumanoidRootPart.Position).unit*200
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:GetMass()*game.Workspace.Gravity,0)
	force.Parent = missile
	local p1mit = Instance.new("ParticleEmitter",missile)
	p1mit.Texture = "rbxasset://textures/particles/smoke_main.dds"
	p1mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new("Bright yellow").Color),ColorSequenceKeypoint.new(1,BrickColor.new("Bright orange").Color)})
	p1mit.LightEmission = 1
	p1mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
	p1mit.Lifetime = NumberRange.new(1)
	p1mit.Rate = 10000
	p1mit.Rotation = NumberRange.new(0,359)
	p1mit.RotSpeed = NumberRange.new(100)
	p1mit.Speed = NumberRange.new(0)
	missile.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and force ~= nil) then
	force:Destroy()
	force = nil
	ExHitbox(3,missile.Position,12,1,.1,0,5)
	PlaySnd(BulletLSnd,hit)
	p1mit.Enabled = false
	wait(2)
	missile:Destroy()
	end
	end)
	debby:AddItem(missile,10)
	wait(.1)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
end
	GunFlameSnd:Play()
	BulletGSnd:Play()
	CasingDrop("Left")
	local missile = Instance.new("Part",game.Workspace)
	missile.Size = Vector3.new(0,0,0)
	missile.Name = "Blast"
	missile.Transparency = 1
	missile.Position = BulletSpawn2.Position
	missile.CFrame = BulletSpawn2.CFrame
	missile.Velocity = ((targetted.Head.Position - Vector3.new(0,2,0)) - chara.HumanoidRootPart.Position).unit*200
	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:GetMass()*game.Workspace.Gravity,0)
	force.Parent = missile
	local p1mit = Instance.new("ParticleEmitter",missile)
	p1mit.Texture = "rbxasset://textures/particles/smoke_main.dds"
	p1mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new("Bright yellow").Color),ColorSequenceKeypoint.new(1,BrickColor.new("Bright orange").Color)})
	p1mit.LightEmission = 1
	p1mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
	p1mit.Lifetime = NumberRange.new(1)
	p1mit.Rate = 10000
	p1mit.Rotation = NumberRange.new(0,359)
	p1mit.RotSpeed = NumberRange.new(100)
	p1mit.Speed = NumberRange.new(0)
	missile.Touched:connect(function(hit)
	if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and force ~= nil) then
	force:Destroy()
	force = nil
	ExHitbox(3,missile.Position,12,1,.1,0,5)
	PlaySnd(BulletLSnd,hit)
	p1mit.Enabled = false
	wait(2)
	missile:Destroy()
	end
	end)
wait(.1)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
del = false
atkdd = true
end

--Decapitator--
function Decapitator()
del = true
atkd = true
chatfunc("From Above!")
chara.Humanoid.WalkSpeed = 0
for i = 0,.6,.2 do
wait(.0001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0),.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
local bf = Instance.new("BodyVelocity",chara.Torso)
bf.P = 10000
bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
bf.Velocity = Vector3.new(0,20,0) + chara.HumanoidRootPart.CFrame.lookVector*50
for i = 0,1,.25 do
wait(.0001)
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0),TCF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(180)),i)
HC.C0 = HCF
GunPlode()
end
bf.Velocity = Vector3.new(0,-20,0) + chara.HumanoidRootPart.CFrame.lookVector*50
for i = 0,1,.25 do
wait(.0001)
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(180)),TCF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),math.rad(360)),i)
HC.C0 = HCF
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
GunPlode()
end
bf:Destroy()
for i = 0,.6,.2 do
wait(.0001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,math.rad(90),0),.6-i)
HC.C0 = clerp(IHCF,HCF,.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
atkdd = true
chara.Humanoid.WalkSpeed = 24
del = false
end

--Back Explosion--
function BackEx()
del = true
atkd = true
chatfunc("Evade!")
chara.Humanoid.WalkSpeed = 0
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF,.4+i)
end
TC.C0 = TCF
HC.C0 = HCF
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
bfos.Velocity = Vector3.new(0,200,0)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF,(TCF + Vector3.new(0,1,0)),.4+i)
HC.C0 = clerp(HCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
LW.C0 = ILWF
end
SwingSnd:Play()
for i = 0,1,.25 do
wait(.001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),i)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
LW.C0 = ILWF
end
GunPlode()
bfos.Velocity = Vector3.new(0,200,0)+chara.HumanoidRootPart.CFrame.lookVector * -100
for i = 0,1,.25 do
wait(.001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(360),0,0),i)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
LW.C0 = ILWF
end
bfos:Destroy()
for i = 0,1,.25 do
wait(.001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(360),0,0),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),IHCF,i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),IRWF,i)
end
del = false
atkdd = true
chara.Humanoid.WalkSpeed = 24
end

--Grab Move--
function GrabMove()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
chatfunc("Have this.")
exeact = true
wait(.01)
SwingSnd:Play()
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,0,bfos.P)
bfos.Velocity = chara.HumanoidRootPart.CFrame.lookVector * 500
debby:AddItem(bfos,.1)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
wait(.5)
if exed == true then
exeact = false
for i = 0,.6,.2 do
wait(.001)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(-60),math.rad(90)),.4+i)
LW.C0 = clerp((LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(150)),.4+i)
end
wait(.5)
PlaySnd(GunFlameSnd,chara)
PlaySnd(ExpSnd,chara)
PlaySnd(BulletGSnd,chara)
CasingDrop("Left")
local hitpt = Instance.new("Part",game.Workspace)
hitpt.Size = Vector3.new(1,1,1)
hitpt.Anchored = true
hitpt.CanCollide = false
hitpt.BrickColor = BrickColor.new("Bright yellow")
hitpt.CFrame = BulletSpawn2.CFrame * CFrame.fromEulerAnglesXYZ(math.random(0,math.rad(359)),math.random(0,math.rad(359)),math.random(0,math.rad(359)))
local hitb = Instance.new("Part",game.Workspace)
hitb.Size = Vector3.new(1,1,1)
hitb.Anchored = true
hitb.CanCollide = false
hitb.BrickColor = BrickColor.new("Bright yellow")
hitb.Material = "Neon"
hitb.CFrame = CFrame.new(hitpt.Position.x,hitpt.Position.y,hitpt.Position.z) * CFrame.fromEulerAnglesXYZ(math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)),math.random(math.rad(-30),math.rad(30)))
local hitbm = Instance.new("SpecialMesh",hitb)
hitbm.MeshType = "Sphere"
hitbm.Scale = Vector3.new(1,1,1)
local hitm = Instance.new("SpecialMesh",hitpt)
hitm.MeshId = "http://www.roblox.com/asset/?id=3270017"
local hpt = coroutine.wrap(function()
for i = 1, 9 do
wait(.05)
hitpt.Transparency = hitpt.Transparency + .1
hitm.Scale = hitm.Scale + Vector3.new(.5,.5,.5)
hitb.Transparency = hitb.Transparency + .1
hitbm.Scale = hitbm.Scale + Vector3.new(.5,.5,.5)
end
hitpt:Destroy()
hitb:Destroy()
end)
hpt()
exed = false
weldd:Destroy()
ExHitbox(5,BulletSpawn2.Position,24,2,.1,50,50)
wait(1)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(-60),math.rad(90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-150)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
elseif exed == false then
exeact = false
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
end
chara.Humanoid.WalkSpeed = 24
atkdd = true
del = false
end

--Ray Overdrive--
function RayOver()
del = true
atkd = true
chara.Humanoid.WalkSpeed = 0
chatfunc("Ray Overdrive!")
SuperPause()
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
TC.C0 = TCF
HC.C0 = HCF
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
wait(.5)
GunFlameSnd.Pitch = .7
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
GunFlameSnd:Play()
BulletGSnd:Play()
CasingDrop("Left")
Laser(Hitbox2,targetted.Head)
wait(.5)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
TC.C0 = TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
HC.C0 = HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
GunFlameSnd:Play()
BulletGSnd:Play()
CasingDrop("Right")
Laser(Hitbox1,targetted.Head)
wait(.5)
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),TCF,.4+i)
end
TC.C0 = TCF
HC.C0 = HCF
local bfos = Instance.new("BodyVelocity",chara.Torso)
bfos.P = 10000
bfos.MaxForce = Vector3.new(bfos.P,bfos.P,bfos.P)
bfos.Velocity = Vector3.new(0,600,0)+chara.HumanoidRootPart.CFrame.lookVector * -300
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF,(TCF + Vector3.new(0,1,0)),.4+i)
HC.C0 = clerp(HCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(40)),.4+i)
RW.C0 = clerp((RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),(RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
LW.C0 = clerp((LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),ILWF,.4+i)
end
SwingSnd:Play()
for i = 0,1,.25 do
wait(.001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),i)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
LW.C0 = ILWF
end
PlaySnd(GunFlameSnd,chara)
PlaySnd(BulletGSnd,chara)
CasingDrop("Right")
Laser(Hitbox1,targetted.Head)
PlaySnd(GunFlameSnd,chara)
PlaySnd(BulletGSnd,chara)
CasingDrop("Left")
Laser(Hitbox2,targetted.Head)
bfos:Destroy()
GunFlameSnd.Pitch = 1
for i = 0,1,.25 do
wait(.001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),(TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(360),0,0),i)
RW.C0 = (RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0)
LW.C0 = ILWF
end
for i = 0,1,.25 do
wait(.001)
TC.C0 = clerp((TCF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(360),0,0),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,math.rad(20),math.rad(90)),IHCF,i)
RW.C0 = clerp((RWF + Vector3.new(0,1,0)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),IRWF,i)
end
del = false
atkdd = true
chara.Humanoid.WalkSpeed = 24
end

--Minigun--
function Minigun()
del = true
atkd = true
chatfunc("Summon Arsenal: Ferir Zero!")
SuperPause()
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
TC.C0 = TCF
HC.C0 = HCF
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
for a = .1,1,.1 do
local gch1 = Gun1:GetChildren()
local gch2 = Gun2:GetChildren()
wait(.001)
for i = 1, #gch1 do
if gch1[i] ~= Handle1 and gch1[i] ~= Hitbox1 then
gch1[i].Transparency = a
end
end
for i = 1, #gch2 do
if gch2[i] ~= Handle2 and gch2[i] ~= Hitbox2 then
gch2[i].Transparency = a
end
end
end
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF,TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
HC.C0 = clerp(HCF,HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
RW.C0 = clerp((RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),RWF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),.4+i)
LW.C0 = clerp((LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),LWF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),.4+i)
end
RW.C0 = RWF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0)
local Minigun = New("Part",chara,"Minigun",{Transparency = 1,Transparency = 1,Size = Vector3.new(1, 8, 2),CFrame = CFrame.new(26.999979, 1.6000222, 45.0999527, 1.81951127e-05, 1, -1.16825559e-05, 2.54704446e-06, 1.16825104e-05, 1, 1, -1.81952728e-05, -2.54687802e-06),})
local Mesh = New("SpecialMesh",Minigun,"Mesh",{Scale = Vector3.new(2, 2, 2),MeshId = "http://www.roblox.com/asset?id=71947307",TextureId = "http://www.roblox.com/asset?id=71947249",MeshType = Enum.MeshType.FileMesh,})
local Weld = New("ManualWeld",Minigun,"Weld",{Part0 = Minigun,Part1 = chara["Right Arm"],C0 = CFrame.new(0, 0, 0, 1.81951127e-05, 2.54704446e-06, 1, 1, 1.16825104e-05, -1.81952728e-05, -1.16825559e-05, 1, -2.54687802e-06),C1 = CFrame.new(-3.49995232, -1.06061363, 0.35357666, -1, 0, 0, 0, 0.707106829, -0.707106829, 0, -0.707106829, -0.707106829),})
for i = .1,1,.1 do
wait(.001)
Minigun.Transparency = 1 - i
end
for i = 1, 20 do
wait(.001)
PlaySnd(MinigunSnd,chara)
local Targ = targetted.Head
local Partt = Minigun
local EffectPart = Instance.new("Part",game.Workspace)
EffectPart.Size = Vector3.new(1,1,1)
EffectPart.Anchored = true
EffectPart.BrickColor = BrickColor.new("Bright yellow")
EffectPart.Material = "Neon"
EffectPart.Position = Targ.Position
EffectPart.CFrame = CFrame.new(Targ.Position.x,Targ.Position.y,Targ.Position.z)
local mehs1 = Instance.new("SpecialMesh",EffectPart)
mehs1.MeshType = "Sphere"
mehs1.Scale = Vector3.new(.1,.1,.1)
local P = Instance.new("Part") 
local Place0 = Partt.CFrame + Partt.CFrame.upVector*4
local Place1 = EffectPart.CFrame
local meshla = Instance.new("BlockMesh", P)
meshla.Scale = Vector3.new(.1,.1,1)
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Place1.p).magnitude) 
P.Name = "Laser" 
P.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Bright yellow")
P.Material = "Neon"
P.Anchored = true 
P.CanCollide = false 
P.Locked = true 
P.BottomSurface = "Smooth" 
P.TopSurface = "Smooth" 
ExHitbox(3,Place1.p,3,1,.05,10,2)
local fu = coroutine.wrap(function()
for i = 1, 10 do
wait(.001)
mehs1.Scale = mehs1.Scale + Vector3.new(.1,.1,.1)
meshla.Scale = meshla.Scale + Vector3.new(.05,.05,0)
EffectPart.Transparency = EffectPart.Transparency + .1
P.Transparency = P.Transparency + .1
end
----
P:Destroy()
EffectPart:Destroy()
end)
fu()
end
MiniStopSnd:Play()
wait(.5)
for i = .1,1,.1 do
wait(.001)
Minigun.Transparency = i
end
Minigun:Destroy()
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),ITCF,.4+i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),IHCF,.4+i)
RW.C0 = clerp(RWF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),IRWF,.4+i)
LW.C0 = clerp(LWF * CFrame.fromEulerAnglesXYZ(math.rad(-45),0,0),ILWF,.4+i)
end
for a = .1,1,.1 do
local gch1 = Gun1:GetChildren()
local gch2 = Gun2:GetChildren()
wait(.001)
for i = 1, #gch1 do
if gch1[i] ~= Handle1 and gch1[i] ~= Hitbox1 then
gch1[i].Transparency = 1-a
end
end
for i = 1, #gch2 do
if gch2[i] ~= Handle2 and gch2[i] ~= Hitbox2 then
gch2[i].Transparency = 1-a
end
end
end
atkdd = true
del = false
end

function RocketBlast()
del = true
atkd = true
chatfunc("Rocket Barrage!")
SuperPause()
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.4+i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.4+i)
end
TC.C0 = TCF
HC.C0 = HCF
RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
local bpos = Instance.new("BodyPosition",chara.Torso)
bpos.Position = chara.Torso.Position + Vector3.new(0,20,0)
bpos.MaxForce = Vector3.new(10000,10000,10000)
wait(1)
for i = 1,3 do
	RW.C0 = (RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90))
	LW.C0 = (LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
	MissileSnd:Play()
    local missile = Instance.new("Part",game.Workspace)
    missile.Size = Vector3.new(0,0,1.2)
    missile.Name = "Blast" 
    missile.TopSurface = 0
    missile.BottomSurface = 0
    missile.Position = BulletSpawn1.Position
    missile.CFrame = BulletSpawn1.CFrame
    missile.Velocity = BulletSpawn1.CFrame.lookVector*100
	missile.CFrame = CFrame.new(BulletSpawn1.Position,BulletSpawn1.Position + BulletSpawn1.CFrame.upVector*2)
    local p1mit = Instance.new("ParticleEmitter",missile)
	p1mit.Texture = "rbxasset://textures/particles/smoke_main.dds"
	p1mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new("Bright orange").Color),ColorSequenceKeypoint.new(1,BrickColor.new("Bright yellow").Color)})
	p1mit.LightEmission = 1
	p1mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
	p1mit.Lifetime = NumberRange.new(1)
	p1mit.Rate = 10000
	p1mit.Rotation = NumberRange.new(0,359)
	p1mit.RotSpeed = NumberRange.new(100)
	p1mit.Speed = NumberRange.new(0)
	local mesh1 = Instance.new("SpecialMesh",missile)
    mesh1.MeshId = "http://www.roblox.com/asset/?id=111879014"
	mesh1.TextureId = "http://www.roblox.com/asset/?id=111878985"
	mesh1.Scale = Vector3.new(1.2,1.2,1.2)
    local force = Instance.new("BodyForce")
    force.force = Vector3.new(0,missile:GetMass()*game.Workspace.Gravity,0)
    force.Parent = missile
    local bf = Instance.new("BodyVelocity",missile)
    bf.P = 10000
    bf.MaxForce = Vector3.new(bf.P,bf.P,bf.P)
	bf.Velocity = BulletSpawn1.CFrame.upVector*100
	local gy = Instance.new("BodyGyro",missile)
	gy.MaxTorque = Vector3.new(0,0,0)
    local chase = coroutine.wrap(function()
	wait(.3)
    while wait() do
    if targetted ~= nil then
    local torsy = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
    bf.Velocity = (torsy.Position - missile.Position).unit*100
	gy.CFrame = CFrame.new(missile.Position, targetted.Head.Position)
	gy.maxTorque = Vector3.new(9000,9000,9000)
    end
    end
    end)
    chase()
    missile.Touched:connect(function(hit)
    if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and missile.Anchored == false) then
    missile.Anchored = true
	PlaySnd(ExpSnd,missile)	
	p1mit.Enabled = false
	mesh1.MeshId = "http://www.roblox.com/asset/?id=1290033"
	mesh1.TextureId = "http://www.roblox.com/asset/?id=3126553"
    ExHitbox(8,missile.Position,15,3,.05,30,50)
    wait(0.1)
    missile.Transparency = .25
    missile.Mesh.Scale = Vector3.new(2,2,2)
    wait(0.1)
    missile.Transparency = .5
    missile.Mesh.Scale = Vector3.new(4,4,4)
    wait(0.1)
    missile.Transparency = .75
    missile.Mesh.Scale = Vector3.new(6,6,6)
    wait(0.1)
    missile:Destroy()
    end
    end)
	wait(.1)
    debby:AddItem(missile,10)
	MissileSnd:Play()
	local missile2 = Instance.new("Part",game.Workspace)
    missile2.Size = Vector3.new(0,0,1.2)
    missile2.Name = "Blast" 
    missile2.TopSurface = 0
    missile2.BottomSurface = 0
    missile2.Position = BulletSpawn2.Position
    missile2.CFrame = BulletSpawn2.CFrame
    missile2.Velocity = BulletSpawn2.CFrame.lookVector*100
	missile2.CFrame = CFrame.new(BulletSpawn2.Position,BulletSpawn2.Position + BulletSpawn2.CFrame.upVector*2)
    local p2mit = Instance.new("ParticleEmitter",missile2)
	p2mit.Texture = "rbxasset://textures/particles/smoke_main.dds"
	p2mit.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,BrickColor.new("Bright orange").Color),ColorSequenceKeypoint.new(1,BrickColor.new("Bright yellow").Color)})
	p2mit.LightEmission = 1
	p2mit.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(1,0)})
	p2mit.Lifetime = NumberRange.new(1)
	p2mit.Rate = 10000
	p2mit.Rotation = NumberRange.new(0,359)
	p2mit.RotSpeed = NumberRange.new(100)
	p2mit.Speed = NumberRange.new(0)
	local mesh2 = Instance.new("SpecialMesh",missile2)
    mesh2.MeshId = "http://www.roblox.com/asset/?id=111879014"
	mesh2.TextureId = "http://www.roblox.com/asset/?id=111878985"
	mesh2.Scale = Vector3.new(1.2,1.2,1.2)
    local force2 = Instance.new("BodyForce")
    force2.force = Vector3.new(0,missile:GetMass()*game.Workspace.Gravity,0)
    force2.Parent = missile2
    local bf2 = Instance.new("BodyVelocity",missile2)
    bf2.P = 10000
    bf2.MaxForce = Vector3.new(bf2.P,bf2.P,bf2.P)
	bf2.Velocity = BulletSpawn2.CFrame.upVector*100
    local gy2 = Instance.new("BodyGyro",missile2)
	gy2.MaxTorque = Vector3.new(0,0,0)
    local chase2 = coroutine.wrap(function()
	wait(.3)
    while wait() do
    if targetted ~= nil then
    local torsy = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
    bf2.Velocity = (torsy.Position - missile2.Position).unit*100
	gy2.CFrame = CFrame.new(missile2.Position, targetted.Head.Position)
	gy2.maxTorque = Vector3.new(9000,9000,9000)
    end
    end
    end)
    chase2()
    missile2.Touched:connect(function(hit)
    if (hit.Parent.Parent ~= chara and hit.Parent ~= chara and hit.Name ~= "Blast" and missile2.Anchored == false) then
	missile2.Anchored = true
	PlaySnd(ExpSnd,missile2)	
	p2mit.Enabled = false
	mesh2.MeshId = "http://www.roblox.com/asset/?id=1290033"
	mesh2.TextureId = "http://www.roblox.com/asset/?id=3126553"
    ExHitbox(8,missile2.Position,15,3,.05,30,50)
    wait(0.1)
    missile2.Transparency = .25
    missile2.Mesh.Scale = Vector3.new(2,2,2)
    wait(0.1)
    missile2.Transparency = .5
    missile2.Mesh.Scale = Vector3.new(4,4,4)
    wait(0.1)
    missile2.Transparency = .75
    missile2.Mesh.Scale = Vector3.new(6,6,6)
    wait(0.1)
    missile2:Destroy()
    end
    end)
    debby:AddItem(missile2,10)
	wait(.1)
end
for i = 0,.6,.2 do
wait(.001)
TC.C0 = clerp(ITCF,TCF,.6-i)
HC.C0 = clerp(IHCF,HCF,.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1.4,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(-90)),.6-i)
LW.C0 = clerp(ILWF,(LWF - Vector3.new(.5,-1.4,.5)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90)),.6-i)
end
bpos:Destroy()
atkdd = true
del = false
end

--Lock On--
function LockOn()
if Mouse.Target.Parent ~= chara and Mouse.Target.Parent.Parent ~= chara and Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
TargetSelect(Mouse.Target.Parent)
TargetSnd:Play()
wait(.05)
TargetSnd:Play()
else end
end

--Block--
blockval = false
healthlock = 0
effeff = nil
function ToggleBlock()
if blockval == false then
del = true
blockval = true
SwingSnd:Play()
healthlock = chara.Humanoid.Health
effeff = Instance.new("ForceField",chara)
effeff.Name = "FawsFeeld"
effeff.Visible = false
for i = 0,.75,.25 do
wait(.0001)
TC.C0 = clerp(ITCF,TCF,.4+i)
HC.C0 = clerp(IHCF,HCF,.4+i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(-.5,1,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.4+i)
end
elseif blockval == true then
SwingSnd:Play()
effeff:Destroy()
blockval = false
for i = 0,.6,.2 do
wait(.0001)
TC.C0 = clerp(ITCF,TCF,.6-i)
HC.C0 = clerp(IHCF,HCF,.6-i)
LW.C0 = clerp(ILWF,(LWF + Vector3.new(-.5,1,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.6-i)
RW.C0 = clerp(IRWF,(RWF + Vector3.new(.5,1,-.5)) * CFrame.fromEulerAnglesXYZ(math.rad(180),0,0),.6-i)
end
del = false
atkdd = true
end
end

--Mouse Functions--
orbpushactive = false
del = false
input = ""
letterd = 0
ltoim = 0
function onKeyDown(key)
if key == "e" then
ToggleBlock()
elseif del == false then
if key == "q" then
if input == "sd" and targetted ~= nil then
ABlast()
elseif input == "dsas" and targetted ~= nil then
RayOver()
elseif input == "ssdd" and targetted ~= nil then
Minigun()
elseif input == "dasd" and targetted ~= nil then
RocketBlast()
elseif input == "ss" then
BackEx()
elseif input == "add" then
GrabMove()
else LockOn() end
input = ""
letterd = 0
ltoim = 0
elseif key == "z" then
Punch()
input = ""
letterd = 0
ltoim = 0
elseif key == "x" then
if input == "sa" then
BanditRevolver()
elseif input == "ss" then
FlipKick()
else KickAtk() end
input = ""
letterd = 0
ltoim = 0
elseif key == "c" then
if input == "dsd" then
Decapitator()
else ExplodPunch() end
input = ""
letterd = 0
ltoim = 0
elseif (key == "w" or key == "a" or key == "s" or key == "d") then
input=input..key
print(input)
letterd = letterd + 1
ltoim = ltoim + 10
if letterd > 5 then
input = ""
letterd = 0
ltoim = 0
end
elseif key == "m" then
if Music.IsPlaying == true then
Music:Stop()
elseif Music.IsPlaying == false then
Music:Play()
end
end
end
end
combo = 0

--Mouse Activation--
if Mouse then
Mouse.KeyDown:connect(onKeyDown)
end

--Loop Function--
walking = false
toim = 0
while true do
wait()
toim = toim + .1
ltoim = ltoim - 1
if ltoim < 1 then
input = ""
end
if blockval == true then
chara.Humanoid.Health = healthlock
end
if atkd == true then
TC.C0 = TCF
HC.C0 = HCF
RW.C0 = RWF
LW.C0 = LWF
atkd = false
end
if atkdd == true then
TC.C0 = ITCF
HC.C0 = IHCF
RW.C0 = IRWF
LW.C0 = ILWF
atkdd = false
end
torvel = (chara.HumanoidRootPart.Velocity*Vector3.new(1,0,1)).magnitude
if torvel < 1 and walking == true and del == false and atkd == false then
for i = 0,1,.5 do
wait(.001)
if del == false then
TC.C0 = clerp(TCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),ITCF,i)
HC.C0 = clerp(HCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),IHCF,i)
RW.C0 = IRWF
LW.C0 = clerp((LWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(20)),ILWF,i)
end
end
walking = false
elseif torvel > 1 and walking == false and del == false and atkd == false then
for i = 0,1,.5 do
wait(.001)
if del == false then
TC.C0 = clerp(ITCF,TCF * CFrame.fromEulerAnglesXYZ(math.rad(30),0,0),i)
HC.C0 = clerp(IHCF,HCF * CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0),i)
RW.C0 = IRWF
LW.C0 = clerp(ILWF,(LWF + Vector3.new(0,.2,0)) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(20)),i)
end
end
walking = true
else
end
imgl.Rotation = imgl.Rotation + 3
if targetted ~= nil then
crosshair.Adornee = targetted:FindFirstChild("Torso") or targetted:FindFirstChild("UpperTorso")
crosshair.Enabled = true
elseif targetted == nil then
crosshair.Adornee = nil
crosshair.Enabled = false
end
end