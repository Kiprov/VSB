--// Variables
local Players = game:GetService("Players")
local ServerScriptService = game:GetService("ServerScriptService")
local HttpService = game:GetService("HttpService")
local sessions = _G.Sessions or {}
--// Session sanity check
if sessions[owner.UserId] then
	local session = sessions[owner.UserId]
	warn([[Void Loader is already running, quitting the previous session.]])
	if owner.PlayerGui:FindFirstChild("VoidLoader") then
		session.Remote:FireClient(owner, "quit")
		repeat wait() until owner.PlayerGui:FindFirstChild("VoidLoader") == nil
	end
	session.Loader:Destroy()
	session.Void:Destroy()
	sessions[owner.UserId] = nil
end
script.Parent = ServerScriptService
script.Name = "VoidLoader_"..owner.UserId
local loaderURL = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/Scripts/Loader.lua"
local loaderSource = HttpService:RequestAsync({
	Url = loaderURL,
	Method = "GET"
})
local parent = owner.PlayerGui
local deploy = NS(loaderSource.Body,ServerScriptService)
deploy.Name = "ScriptLoader_"..owner.UserId
warn("loading")
repeat wait() until _G.loader ~= nil
warn("loaded the loader script, almost done.")
local loader = _G.loader
local scripts = [[
BDD41,
Genocider,
Guest 666,
Laptop Boss,
SB Shotgun,
Vereus,
Void Boss,
Nuclear Toxic Hulk,
Veltex,
Xester.
]]
--// UI
local VL = {};

-- StarterGui.VoidLoader
VL["1"] = Instance.new("ScreenGui", owner.PlayerGui);
VL["1"]["IgnoreGuiInset"] = true;
VL["1"]["DisplayOrder"] = 2147483647;
VL["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
VL["1"]["Name"] = [[VoidLoader]];
VL["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
VL["1"]["ResetOnSpawn"] = false;


-- StarterGui.VoidLoader.Toggle
VL["2"] = Instance.new("TextButton", VL["1"]);
VL["2"]["TextWrapped"] = true;
VL["2"]["RichText"] = true;
VL["2"]["BorderSizePixel"] = 0;
VL["2"]["TextScaled"] = true;
VL["2"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["2"]["BackgroundTransparency"] = 1;
VL["2"]["Size"] = UDim2.new(0.06602, 0, 0.12914, 0);
VL["2"]["Text"] = [[<b><font color="rgb(150,0,255)">V</font>L</b>]];
VL["2"]["Name"] = [[Toggle]];
VL["2"]["Visible"] = false;
VL["2"]["Position"] = UDim2.new(0.91787, 0, 0.83595, 0);


-- StarterGui.VoidLoader.Toggle.UIStroke
VL["3"] = Instance.new("UIStroke", VL["2"]);
VL["3"]["Thickness"] = 3;


-- StarterGui.VoidLoader.TopBar
VL["4"] = Instance.new("Frame", VL["1"]);
VL["4"]["Active"] = true;
VL["4"]["BorderSizePixel"] = 0;
VL["4"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
VL["4"]["Selectable"] = true;
VL["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
VL["4"]["Size"] = UDim2.new(0, 500, 0, 30);
VL["4"]["Position"] = UDim2.new(0.5, 0, 0.22, 0);
VL["4"]["Name"] = [[TopBar]];
VL["4"]["BackgroundTransparency"] = 1;


-- StarterGui.VoidLoader.TopBar.MainFrame
VL["5"] = Instance.new("Frame", VL["4"]);
VL["5"]["BorderSizePixel"] = 4;
VL["5"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
VL["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
VL["5"]["ClipsDescendants"] = true;
VL["5"]["Size"] = UDim2.new(0, 500, 0, 284);
VL["5"]["Position"] = UDim2.new(0.5, 0, 4.74333, 0);
VL["5"]["Name"] = [[MainFrame]];
VL["5"]["BackgroundTransparency"] = 0.5;


-- StarterGui.VoidLoader.TopBar.MainFrame.CMDBar
VL["6"] = Instance.new("TextBox", VL["5"]);
VL["6"]["CursorPosition"] = -1;
VL["6"]["Name"] = [[CMDBar]];
VL["6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["6"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
VL["6"]["ZIndex"] = 2;
VL["6"]["BorderSizePixel"] = 0;
VL["6"]["TextWrapped"] = true;
VL["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["6"]["TextScaled"] = true;
VL["6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
VL["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
VL["6"]["PlaceholderText"] = [[Click here or press "," key to use commands.]];
VL["6"]["Size"] = UDim2.new(0, 500, 0, 18);
VL["6"]["Position"] = UDim2.new(0, 0, 0, 266);
VL["6"]["Text"] = [[]];
VL["6"]["BackgroundTransparency"] = 0.5;


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames
VL["7"] = Instance.new("Frame", VL["5"]);
VL["7"]["BorderSizePixel"] = 0;
VL["7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
VL["7"]["ClipsDescendants"] = true;
VL["7"]["Size"] = UDim2.new(0, 376, 0, 235);
VL["7"]["Position"] = UDim2.new(0, 124, 0, 31);
VL["7"]["Name"] = [[TabFrames]];
VL["7"]["BackgroundTransparency"] = 0.5;


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands
VL["8"] = Instance.new("Frame", VL["7"]);
VL["8"]["Visible"] = false;
VL["8"]["BorderSizePixel"] = 0;
VL["8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
VL["8"]["Size"] = UDim2.new(0, 376, 0, 232);
VL["8"]["Position"] = UDim2.new(0, 376, 0, 0);
VL["8"]["Name"] = [[Commands]];
VL["8"]["BackgroundTransparency"] = 1;


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.CMDs
VL["9"] = Instance.new("ScrollingFrame", VL["8"]);
VL["9"]["BorderSizePixel"] = 0;
VL["9"]["ScrollingEnabled"] = false;
VL["9"]["Name"] = [[CMDs]];
VL["9"]["ScrollBarImageTransparency"] = 1;
VL["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["9"]["Size"] = UDim2.new(0, 376, 0, 180);
VL["9"]["Position"] = UDim2.new(0, 0, 0.1, 4);
VL["9"]["BackgroundTransparency"] = 1;


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.CMDs.UIListLayout
VL["a"] = Instance.new("UIListLayout", VL["9"]);
VL["a"]["Padding"] = UDim.new(0, 15);
VL["a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.CMDs.CMD
VL["b"] = Instance.new("TextLabel", VL["9"]);
VL["b"]["TextWrapped"] = true;
VL["b"]["BorderSizePixel"] = 0;
VL["b"]["TextSize"] = 12;
VL["b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["b"]["TextYAlignment"] = Enum.TextYAlignment.Top;
VL["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["b"]["BackgroundTransparency"] = 1;
VL["b"]["RichText"] = true;
VL["b"]["Size"] = UDim2.new(0, 374, 0, 20);
VL["b"]["Text"] = [[<b>script/scriptName - Executes a script with the given scriptName if found.</b>]];
VL["b"]["Name"] = [[CMD]];


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.CMDs.CMD
VL["c"] = Instance.new("TextLabel", VL["9"]);
VL["c"]["TextWrapped"] = true;
VL["c"]["BorderSizePixel"] = 0;
VL["c"]["TextSize"] = 12;
VL["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
VL["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["c"]["BackgroundTransparency"] = 1;
VL["c"]["RichText"] = true;
VL["c"]["Size"] = UDim2.new(0, 374, 0, 2);
VL["c"]["Text"] = [[<b>r6 - Changes your character's RigType to R6.</b>]];
VL["c"]["LayoutOrder"] = 1;
VL["c"]["Name"] = [[CMD]];
VL["c"]["Position"] = UDim2.new(0, 0, 0, 36);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.CMDs.CMD
VL["d"] = Instance.new("TextLabel", VL["9"]);
VL["d"]["TextWrapped"] = true;
VL["d"]["BorderSizePixel"] = 0;
VL["d"]["TextSize"] = 12;
VL["d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
VL["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["d"]["BackgroundTransparency"] = 1;
VL["d"]["RichText"] = true;
VL["d"]["Size"] = UDim2.new(0, 374, 0, 2);
VL["d"]["Text"] = [[<b>re - Respawns your character.</b>]];
VL["d"]["LayoutOrder"] = 2;
VL["d"]["Name"] = [[CMD]];
VL["d"]["Position"] = UDim2.new(0, 0, 0, 52);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.CMDs.CMD
VL["e"] = Instance.new("TextLabel", VL["9"]);
VL["e"]["TextWrapped"] = true;
VL["e"]["BorderSizePixel"] = 0;
VL["e"]["TextSize"] = 12;
VL["e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
VL["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["e"]["BackgroundTransparency"] = 1;
VL["e"]["RichText"] = true;
VL["e"]["Size"] = UDim2.new(0, 374, 0, 20);
VL["e"]["Text"] = [[<b>sr - Respawns your character at the same position.</b>]];
VL["e"]["LayoutOrder"] = 2;
VL["e"]["Name"] = [[CMD]];
VL["e"]["Position"] = UDim2.new(0, 0, 0, 72);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.TheEnd
VL["f"] = Instance.new("TextLabel", VL["8"]);
VL["f"]["TextWrapped"] = true;
VL["f"]["BorderSizePixel"] = 0;
VL["f"]["TextSize"] = 12;
VL["f"]["TextScaled"] = true;
VL["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["f"]["BackgroundTransparency"] = 1;
VL["f"]["RichText"] = true;
VL["f"]["Size"] = UDim2.new(0, 376, 0, 24);
VL["f"]["Text"] = [[<b>Use these commands in the command bar</b>]];
VL["f"]["Name"] = [[TheEnd]];
VL["f"]["Position"] = UDim2.new(0, 0, 0.1, 184);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Commands.Title
VL["10"] = Instance.new("TextLabel", VL["8"]);
VL["10"]["TextWrapped"] = true;
VL["10"]["BorderSizePixel"] = 0;
VL["10"]["TextSize"] = 24;
VL["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["10"]["BackgroundTransparency"] = 1;
VL["10"]["RichText"] = true;
VL["10"]["Size"] = UDim2.new(0, 376, 0, 26);
VL["10"]["Text"] = [[<b>Commands</b>]];
VL["10"]["Name"] = [[Title]];
VL["10"]["Position"] = UDim2.new(0, 0, 0.1, -22);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Home
VL["11"] = Instance.new("Frame", VL["7"]);
VL["11"]["Visible"] = false;
VL["11"]["BorderSizePixel"] = 0;
VL["11"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
VL["11"]["Size"] = UDim2.new(0, 376, 0, 232);
VL["11"]["Position"] = UDim2.new(0, 376, 0, 0);
VL["11"]["Name"] = [[Home]];
VL["11"]["BackgroundTransparency"] = 1;


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Home.TheEnd
VL["12"] = Instance.new("TextLabel", VL["11"]);
VL["12"]["TextWrapped"] = true;
VL["12"]["BorderSizePixel"] = 0;
VL["12"]["TextSize"] = 12;
VL["12"]["TextScaled"] = true;
VL["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["12"]["BackgroundTransparency"] = 1;
VL["12"]["RichText"] = true;
VL["12"]["Size"] = UDim2.new(0, 376, 0, 24);
VL["12"]["Text"] = [[<b>Enjoy!</b>]];
VL["12"]["Name"] = [[TheEnd]];
VL["12"]["Position"] = UDim2.new(0, 0, 0.1, 184);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Home.Info
VL["13"] = Instance.new("TextLabel", VL["11"]);
VL["13"]["TextWrapped"] = true;
VL["13"]["BorderSizePixel"] = 0;
VL["13"]["TextSize"] = 12;
VL["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["13"]["TextYAlignment"] = Enum.TextYAlignment.Top;
VL["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["13"]["BackgroundTransparency"] = 1;
VL["13"]["RichText"] = true;
VL["13"]["Size"] = UDim2.new(0, 376, 0, 180);
VL["13"]["Text"] = [[<b>Void Loader is a project made by Kip. This project was made for easier execution of scripts that were apart of the Void Script Builder days. The UI theme is heavily inspired by Infinite Yield FD's UI theme. Apart from simple script execution, this loader has commands. While this loader is simple, it is still powerful enough to provide the user with full access to scripts and commands.</b>]];
VL["13"]["Name"] = [[Info]];
VL["13"]["Position"] = UDim2.new(0, 0, 0.1, 4);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Home.Title
VL["14"] = Instance.new("TextLabel", VL["11"]);
VL["14"]["TextWrapped"] = true;
VL["14"]["BorderSizePixel"] = 0;
VL["14"]["TextSize"] = 24;
VL["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["14"]["BackgroundTransparency"] = 1;
VL["14"]["RichText"] = true;
VL["14"]["Size"] = UDim2.new(0, 376, 0, 26);
VL["14"]["Text"] = [[<b>Welcome</b>]];
VL["14"]["Name"] = [[Title]];
VL["14"]["Position"] = UDim2.new(0, 0, 0.1, -22);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Scripts
VL["15"] = Instance.new("Frame", VL["7"]);
VL["15"]["Visible"] = false;
VL["15"]["BorderSizePixel"] = 0;
VL["15"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
VL["15"]["Size"] = UDim2.new(0, 376, 0, 232);
VL["15"]["Position"] = UDim2.new(0, 376, 0, 0);
VL["15"]["Name"] = [[Scripts]];
VL["15"]["BackgroundTransparency"] = 1;


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Scripts.TheEnd
VL["16"] = Instance.new("TextLabel", VL["15"]);
VL["16"]["TextWrapped"] = true;
VL["16"]["BorderSizePixel"] = 0;
VL["16"]["TextSize"] = 12;
VL["16"]["TextScaled"] = true;
VL["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["16"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["16"]["BackgroundTransparency"] = 1;
VL["16"]["RichText"] = true;
VL["16"]["Size"] = UDim2.new(0, 376, 0, 24);
VL["16"]["Text"] = [[<b>Example: script/BDD41</b>]];
VL["16"]["Name"] = [[TheEnd]];
VL["16"]["Position"] = UDim2.new(0, 0, 0.1, 184);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Scripts.Info
VL["17"] = Instance.new("TextLabel", VL["15"]);
VL["17"]["TextWrapped"] = true;
VL["17"]["BorderSizePixel"] = 0;
VL["17"]["TextSize"] = 12;
VL["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["17"]["TextYAlignment"] = Enum.TextYAlignment.Top;
VL["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["17"]["BackgroundTransparency"] = 1;
VL["17"]["RichText"] = true;
VL["17"]["Size"] = UDim2.new(0, 376, 0, 180);
VL["17"]["Text"] = [[<b>]]..scripts..[[</b>]];
VL["17"]["Name"] = [[Info]];
VL["17"]["Position"] = UDim2.new(0, 0, 0.1, 4);


-- StarterGui.VoidLoader.TopBar.MainFrame.TabFrames.Scripts.Title
VL["18"] = Instance.new("TextLabel", VL["15"]);
VL["18"]["TextWrapped"] = true;
VL["18"]["BorderSizePixel"] = 0;
VL["18"]["TextSize"] = 24;
VL["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["18"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["18"]["BackgroundTransparency"] = 1;
VL["18"]["RichText"] = true;
VL["18"]["Size"] = UDim2.new(0, 376, 0, 26);
VL["18"]["Text"] = [[<b>Scripts</b>]];
VL["18"]["Name"] = [[Title]];
VL["18"]["Position"] = UDim2.new(0, 0, 0.1, -22);


-- StarterGui.VoidLoader.TopBar.MainFrame.Title
VL["19"] = Instance.new("TextLabel", VL["5"]);
VL["19"]["TextWrapped"] = true;
VL["19"]["BorderSizePixel"] = 0;
VL["19"]["TextScaled"] = true;
VL["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["19"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["19"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["19"]["BackgroundTransparency"] = 1;
VL["19"]["RichText"] = true;
VL["19"]["Size"] = UDim2.new(0, 500, 0, 26);
VL["19"]["Text"] = [[<b><font color="rgb(150,0,255)">V</font>OID LOADER</b>]];
VL["19"]["Name"] = [[Title]];


-- StarterGui.VoidLoader.TopBar.MainFrame.Version
VL["1a"] = Instance.new("TextLabel", VL["5"]);
VL["1a"]["TextWrapped"] = true;
VL["1a"]["BorderSizePixel"] = 0;
VL["1a"]["TextSize"] = 12;
VL["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
VL["1a"]["TextTransparency"] = 0.5;
VL["1a"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
VL["1a"]["TextScaled"] = true;
VL["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["1a"]["BackgroundTransparency"] = 1;
VL["1a"]["RichText"] = true;
VL["1a"]["Size"] = UDim2.new(0, 76, 0, 16);
VL["1a"]["Text"] = [[<b>Version 0.1.0</b>]];
VL["1a"]["Name"] = [[Version]];
VL["1a"]["Position"] = UDim2.new(0, 0, 0, 10);


-- StarterGui.VoidLoader.TopBar.MainFrame.Minimize
VL["1b"] = Instance.new("TextButton", VL["5"]);
VL["1b"]["TextWrapped"] = true;
VL["1b"]["BorderSizePixel"] = 0;
VL["1b"]["TextScaled"] = true;
VL["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["1b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["1b"]["ZIndex"] = 2;
VL["1b"]["BackgroundTransparency"] = 0.5;
VL["1b"]["Size"] = UDim2.new(0, 25, 0, 25);
VL["1b"]["Text"] = [[]];
VL["1b"]["Name"] = [[Minimize]];
VL["1b"]["Position"] = UDim2.new(0, 445, 0, 0);


-- StarterGui.VoidLoader.TopBar.MainFrame.Close
VL["1c"] = Instance.new("TextButton", VL["5"]);
VL["1c"]["TextWrapped"] = true;
VL["1c"]["BorderSizePixel"] = 0;
VL["1c"]["TextScaled"] = true;
VL["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
VL["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["1c"]["ZIndex"] = 2;
VL["1c"]["BackgroundTransparency"] = 0.5;
VL["1c"]["Size"] = UDim2.new(0, 25, 0, 25);
VL["1c"]["Text"] = [[]];
VL["1c"]["Name"] = [[Close]];
VL["1c"]["Position"] = UDim2.new(0, 475, 0, 0);


-- StarterGui.VoidLoader.TopBar.MainFrame.Tabs
VL["1d"] = Instance.new("Frame", VL["5"]);
VL["1d"]["BorderSizePixel"] = 0;
VL["1d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
VL["1d"]["Size"] = UDim2.new(0, 120, 0, 235);
VL["1d"]["Position"] = UDim2.new(0, 0, 0, 31);
VL["1d"]["Name"] = [[Tabs]];
VL["1d"]["BackgroundTransparency"] = 0.5;


-- StarterGui.VoidLoader.TopBar.MainFrame.Tabs.Commands
VL["1e"] = Instance.new("TextButton", VL["1d"]);
VL["1e"]["TextWrapped"] = true;
VL["1e"]["RichText"] = true;
VL["1e"]["BorderSizePixel"] = 0;
VL["1e"]["TextScaled"] = true;
VL["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["1e"]["ZIndex"] = 2;
VL["1e"]["BackgroundTransparency"] = 0.5;
VL["1e"]["Size"] = UDim2.new(0, 120, 0, 26);
VL["1e"]["LayoutOrder"] = 2;
VL["1e"]["Text"] = [[<b>Commands</b>]];
VL["1e"]["Name"] = [[Commands]];
VL["1e"]["Position"] = UDim2.new(0, 0, 0, 118);


-- StarterGui.VoidLoader.TopBar.MainFrame.Tabs.Scripts
VL["1f"] = Instance.new("TextButton", VL["1d"]);
VL["1f"]["TextWrapped"] = true;
VL["1f"]["RichText"] = true;
VL["1f"]["BorderSizePixel"] = 0;
VL["1f"]["TextScaled"] = true;
VL["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["1f"]["ZIndex"] = 2;
VL["1f"]["BackgroundTransparency"] = 0.5;
VL["1f"]["Size"] = UDim2.new(0, 120, 0, 26);
VL["1f"]["LayoutOrder"] = 1;
VL["1f"]["Text"] = [[<b>Scripts</b>]];
VL["1f"]["Name"] = [[Scripts]];
VL["1f"]["Position"] = UDim2.new(0, 0, 0, 83);


-- StarterGui.VoidLoader.TopBar.MainFrame.Tabs.Home
VL["20"] = Instance.new("TextButton", VL["1d"]);
VL["20"]["TextWrapped"] = true;
VL["20"]["RichText"] = true;
VL["20"]["BorderSizePixel"] = 0;
VL["20"]["TextScaled"] = true;
VL["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
VL["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
VL["20"]["ZIndex"] = 2;
VL["20"]["BackgroundTransparency"] = 0.5;
VL["20"]["Size"] = UDim2.new(0, 120, 0, 26);
VL["20"]["Text"] = [[<b>Home</b>]];
VL["20"]["Name"] = [[Home]];
VL["20"]["Position"] = UDim2.new(0, 0, 0.20426, 0);


-- StarterGui.VoidLoader.TopBar.MainFrame.Tabs.TabsHeader
VL["21"] = Instance.new("TextLabel", VL["1d"]);
VL["21"]["TextWrapped"] = true;
VL["21"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
VL["21"]["BorderSizePixel"] = 0;
VL["21"]["TextSize"] = 24;
VL["21"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
VL["21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
VL["21"]["BackgroundTransparency"] = 1;
VL["21"]["RichText"] = true;
VL["21"]["Size"] = UDim2.new(0, 120, 0, 42);
VL["21"]["Text"] = [[<b>Tabs</b>]];
VL["21"]["Name"] = [[TabsHeader]];
VL["21"]["Position"] = UDim2.new(0, 0, 0.00066, 0);


-- StarterGui.VoidLoader.TopBar.MainFrame.Tabs.Highlight
VL["22"] = Instance.new("Frame", VL["1d"]);
VL["22"]["Active"] = true;
VL["22"]["BorderSizePixel"] = 4;
VL["22"]["BackgroundColor3"] = Color3.fromRGB(28, 43, 54);
VL["22"]["Selectable"] = true;
VL["22"]["Size"] = UDim2.new(0, 120, 0, 26);
VL["22"]["Position"] = UDim2.new(0, 0, 0.20426, 0);
VL["22"]["Name"] = [[Highlight]];


-- StarterGui.VoidLoader.TopBar.MainFrame.UIDragDetector
VL["23"] = Instance.new("UIDragDetector", VL["5"]);
VL["23"].BoundingUI = VL["1"];
--// UI Stuff
local remote = Instance.new("RemoteEvent", VL["1"])
remote.Name = "VoidCommunicator"
--// Server UI Logic
local cmds = {
	["script/"] = function(msg)
		local result = string.split(msg, "script/")[2]
		warn("loading "..result..".")
		loader(result,parent)
		warn(result.." successfully loaded.")
	end,
	["r6"] = function()
		local r6Dummy = Players:CreateHumanoidModelFromUserIdAsync(owner.UserId)
		r6Dummy:PivotTo(owner.Character:GetPivot())
		r6Dummy.Parent = workspace
		r6Dummy.Name = owner.Name
		r6Dummy.Humanoid.DisplayName = owner.DisplayName
		owner.Character = r6Dummy
		remote:FireClient(owner, "CameraSubject", r6Dummy.Humanoid)
	end,
	["re"] = function()
		owner:LoadCharacter()
	end,
	["sr"] = function()
		local pivot = owner.Character:GetPivot()
		owner:LoadCharacter()
		owner.Character:PivotTo(pivot)
	end,
	["quit"] = function()
		remote:FireClient(owner, "quit")
		repeat wait() until owner.PlayerGui:FindFirstChild("VoidLoader") == nil
		deploy:Destroy()
		script:Destroy()
		_G.Sessions[owner.UserId] = nil
		warn("quit the current Void Loader session.")
	end,
}
remote.OnServerEvent:Connect(function(plr, command)
	if plr ~= owner then return end
	if command == "destroy" then
		owner.PlayerGui:FindFirstChild("VoidLoader"):Destroy()
		return
	end
	for i, v in next, cmds do
		if string.find(command, i) then
			print("cmd found")
			local cmd = v
			cmd(command)
		end
	end
end)
--// Client UI Logic
local client = NLS([[
--// Variables
repeat wait() until game:IsLoaded()
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local ui = script.Parent
local topbar = ui.TopBar
local toggle = ui.Toggle
local mainframe = topbar.MainFrame
local minimizeBtn = mainframe.Minimize
local closeBtn = mainframe.Close
local tabs = mainframe.Tabs
local highlight = tabs.Highlight
local cmdbar = mainframe.CMDBar
local tabFrames = mainframe.TabFrames
local currentTab = tabFrames.Home
local remote = ui.VoidCommunicator
local state = "max"
local db = false
local animInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
local topbarMaximize = TweenService:Create(mainframe, animInfo, {Size = UDim2.fromOffset(500, 30)})
local topbarMinimize = TweenService:Create(mainframe, animInfo, {Size = UDim2.fromOffset(0, 30)})
local mainframeMaximize = TweenService:Create(mainframe, animInfo, {Size = UDim2.fromOffset(500, 284)})
local mainframeMinimize = TweenService:Create(mainframe, animInfo, {Size = UDim2.fromOffset(500, 30)})
--// Functions
function open()
	topbar.Visible = true
	toggle.Visible = false
	topbarMaximize:Play()
	topbarMaximize.Completed:Wait()
	mainframeMaximize:Play()
end
function close(destroy)
	mainframeMinimize:Play()
	mainframeMinimize.Completed:Wait()
	topbarMinimize:Play()
	topbarMinimize.Completed:Wait()
	if destroy == true then
		remote:FireServer("destroy")
	else
		topbar.Visible = false
		toggle.Visible = true
	end
end
function minimize()
	if db then return end
	db = true
	mainframeMinimize:Play()
	mainframeMinimize.Completed:Wait()
	db = false
end
function maximize()
	if db then return end
	db = true
	mainframeMaximize:Play()
	mainframeMaximize.Completed:Wait()
	db = false
end
function switchTab(tab)
	if db then return end
	db = true
	local tabSlideOff = TweenService:Create(currentTab, animInfo, {Position = UDim2.fromOffset(376, 0)})
	local tabSlideOn = TweenService:Create(tab, animInfo, {Position = UDim2.new()})
	local highlightSlide = TweenService:Create(highlight, animInfo, {Position = tabs[tab.Name].Position})
	highlightSlide:Play()
	tabSlideOff:Play()
	tabSlideOff.Completed:Wait()
	currentTab.Visible = false
	currentTab = tab
	tab.Visible = true
	tabSlideOn:Play()
	db = false
end
--// Connections
for i, v in next, tabs:GetChildren() do
	if v:IsA("TextButton") then
		v.MouseButton1Click:Connect(function()
			switchTab(tabFrames[v.Name])
		end)
	end
end
minimizeBtn.MouseButton1Click:Connect(function()	
	if state == "max" then
		state = "min"
		minimize()
	elseif state == "min" then
		state = "max"
		maximize()
	end
end)
closeBtn.MouseButton1Click:Connect(close)
toggle.MouseButton1Click:Connect(open)
cmdbar.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		remote:FireServer(cmdbar.Text)
		cmdbar.Text = ""
	end
end)
remote.OnClientEvent:Connect(function(action, value)
	if action == "CameraSubject" then
		workspace.CurrentCamera.CameraSubject = value
	elseif action == "quit" then
		close(true)
	end
end)
UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if gameProcessedEvent then return end
	if input.KeyCode == Enum.KeyCode.Comma then
		cmdbar:CaptureFocus()
		cmdbar.Text = ""
	end
end)
--// Intro
mainframe.Size = UDim2.fromOffset(0, 30)
open()
switchTab(currentTab)
]], VL["1"])
if #sessions == 0 then
	_G.Sessions = {}
end
_G.Sessions[owner.UserId] = {
	Remote = remote,
	Loader = deploy,
	Void = script
}
warn([[Void Loader successfully loaded.]])
