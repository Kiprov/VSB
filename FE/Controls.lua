function c(scriptName,moveset)
    local scriptName = scriptName or ""
    local moveset = moveset or ""
    local separator = string.rep("-",string.len(scriptName))
    local desc = scriptName..separator..[[
    CONTROLS:
    
    ]]..moveset
    local MovesGui=Instance.new("ScreenGui",owner:FindFirstChildOfClass("PlayerGui"))
	local Frm=Instance.new("Frame",MovesGui)
    Frm.BackgroundColor3=Color3.new()
    Frm.BorderSizePixel=0
	Frm.BackgroundTransparency=.5
    Frm.Size=UDim2.new(.3,0,.5,0)
    local Show=true
    Frm.Position=UDim2.new(.7,0,.5,0)
	local idk=Instance.new("TextButton",Frm)
    idk.Size=UDim2.new(.5,0,.1,0)
    idk.Position=UDim2.new(-.5,0,.8,0)
	idk.Text="Hide"
    idk.TextStrokeTransparency=0
    idk.BackgroundTransparency=.5
    idk.BackgroundColor3=Color3.new()
	idk.BorderSizePixel=0
    idk.TextColor3=Color3.new(1,1,1)
	idk.MouseButton1Click:connect(function()
       Show=not Show idk.Text=Show and "Hide"or"Show"
    end)
	local normal=Instance.new("TextLabel",Frm)
    normal.Size=UDim2.new(1,0,1,0)
    normal.TextStrokeTransparency=0
	normal.BackgroundTransparency=1
    normal.TextColor3=Color3.new(1,1,1)
	normal.TextXAlignment="Left"
    normal.TextYAlignment="Top"
	normal.Text=desc
	spawn(function()
	    while game:service'RunService'.Stepped:wait() do
		    Frm.Position=Frm.Position:lerp(UDim2.new(not Show and 1 or .7,0,.5,0),.1)
	    end
    end)
    print("creates controls gui.")
end
_G.controls = c