local http = game:GetService("HttpService")
local converterSource = http:RequestAsync({
	Url = "https://raw.githubusercontent.com/Kiprov/VSB-Scripts/refs/heads/main/%5BFE%5DConverter.lua",
	Method = "GET"
})
local scriptSource = http:RequestAsync({
	Url = "https://raw.githubusercontent.com/Kiprov/VSB-Scripts/refs/heads/main/GenociderSource.lua",
	Method = "GET"
})
if converterSource == nil or scriptSource == nil then return end
local scriptMain = NS(converterSource.Body..[===[


]===]..scriptSource.Body,owner.PlayerGui)
scriptMain.Name = "Genocider"
