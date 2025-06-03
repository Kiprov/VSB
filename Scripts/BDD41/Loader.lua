local http = game:GetService("HttpService")
local converterURL = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/FE/Converter.lua"
local scriptURL = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/Scripts/BDD41/Source.lua"
local scriptName = "BDD-41"
local parent = owner.PlayerGui
local converterSource = http:RequestAsync({
	Url = converterURL,
	Method = "GET"
})
local scriptSource = http:RequestAsync({
	Url = scriptURL,
	Method = "GET"
})
if converterSource == nil or scriptSource == nil then return end
local scriptMain = NS(converterSource.Body..[===[


]===]..scriptSource.Body,parent)
scriptMain.Name = scriptName
