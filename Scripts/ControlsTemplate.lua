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
* = Able to hold
-----------
Click:Swing
*T   : Teleport
*Q   : Control
*F   : Invisible

Invisible will make you invisible.
but it deactivates automatically while
using Control or Swinging.
]])