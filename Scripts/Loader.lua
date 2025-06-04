local http = game:GetService("HttpService")
local converterURL = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/FE/Converter.lua"
local converterSource = http:RequestAsync({
	Url = converterURL,
	Method = "GET"
})
function load(script,parent)
local scriptName = nil
if string.find(script," ") then
scriptName = string.gsub(script," ","%%20")
else
scriptName = script
end
local scriptURL = "https://raw.githubusercontent.com/Kiprov/VSB/refs/heads/main/Scripts/"..scriptName.."/Source.lua"
local spaceName = nil
if string.find(script," ") then
spaceName = string.gsub(scriptName,"%%20"," ")
else
spaceName = scriptName
end
local scriptSource = http:RequestAsync({
	Url = scriptURL,
	Method = "GET"
})
if converterSource == nil or scriptSource == nil then return end
local scriptMain = NS(converterSource.Body..[===[


]===]..scriptSource.Body,parent)
scriptMain.Name = spaceName
print("script deployed")
end
_G.loader = load
