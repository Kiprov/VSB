local sessions = _G.Sessions or {}
if sessions[owner.UserId] then local session = sessions[owner.UserId] warn([[Void Loader is already running, quitting the previous session.]]) session.Connection:Disconnect() session.Loader:Destroy() session.Void:Destroy() end
script.Parent = game.ServerScriptService
script.Name = "VoidLoader_"..owner.UserId
local http = game:GetService("HttpService")
local loaderURL = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/Scripts/Loader.lua"
local loaderSource = http:RequestAsync({
	Url = loaderURL,
	Method = "GET"
})
local parent = owner.PlayerGui
local deploy = NS(loaderSource.Body,game:GetService("ServerScriptService"))
deploy.Name = "ScriptLoader_"..owner.UserId
warn("loading")
repeat wait() until _G.loader ~= nil
warn("loaded the loader script, almost done.")
local loader = _G.loader
local chatFunc
local cmdList = [[
Commands:
/cmds - shows all commands,
/script/scriptname - executes a script with the following scriptname(check /scripts for scriptname),
/scripts - shows all available scripts,
/quit - quits the current Void Loader session.
]]
local scripts = [[
Scripts:
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
local cmds = {
	["/script/"] = function(msg)
	local result = string.split(msg,"/script/")[2]
	warn("loading "..result..".")
    loader(result,parent)
    warn(result.." successfully loaded.")
	end,
	["/cmds"] = function()
	warn(cmdList)
	end,
	["/scripts"] = function()
	warn(scripts)
	end,
	["/quit"] = function()
	chatFunc:Disconnect()
	deploy:Destroy()
	_G.Sessions[owner.UserId] = nil
	warn("quit the current Void Loader session.")
	end,
}
_G.cmds = cmds
chatFunc = owner.Chatted:Connect(function(msg)
for i,v in next, cmds do
if string.find(msg,i) then
print("cmd found")
local cmd = v
cmd(msg)
end
end
end)
if #sessions == 0 then
_G.Sessions = {}
end
_G.Sessions[owner.UserId] = {
	Connection = chatFunc,
	Loader = deploy,
	Void = script
}
warn([[Void Loader successfully loaded. To start, please type "/cmds" for commands.]])