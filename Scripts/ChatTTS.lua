-- Chat Text To Speech
-- Made by Kip
local sessions = _G.Sessions or {}
local playerCons = _G.PlayerConnections or {}
if #sessions == 0 then
_G.Sessions = {}
end
if #playerCons == 0 then
_G.PlayerConnections = {}
else
playerCons.Added:Disconnect()
playerCons.Removing:Disconnect()
end
local game = game
function service(serviceName)
return game:GetService(serviceName)
end
function ffc(s,i)
return s:FindFirstChild(i)
end
local IT = Instance.new
local soundScape = service("SoundService")
local players = service("Players")
local ts = service("TextService")
_G.VoiceId = "9" -- there are 10 voices
local emitter = ffc(soundScape,"TTS_Emitter") or IT("AudioDeviceOutput",soundScape)
emitter.Name = "TTS_Emitter"
function createTTS(player)
local tts = IT("AudioTextToSpeech",player)
tts.Name = "TTS_Register"
tts.VoiceId = _G.VoiceId
local wire = IT("Wire",tts)
wire.SourceInstance = tts
wire.TargetInstance = emitter
tts.Ended:Connect(function()
tts:Destroy()
end)
return tts
end
function setupPlayer(player)
if sessions[player.UserId] then
local session = sessions[player.UserId]
warn([[Another ChatTTS Session is running, quitting the previous session.]])
session.Connection:Disconnect()
end
local chatFunc
chatFunc = player.Chatted:Connect(function(m)
local tts = createTTS(player)
tts.Text = m
tts:Play()
end)
_G.Sessions[player.UserId] = {
	Connection = chatFunc
}
print("successfully setup "..player.Name.."!")
end
function onRemove(player)
if _G.Sessions[player.UserId] then
_G.Sessions[player.UserId] = nil
print("Removed "..player.Name.." from ChatTTS session.")
end
end
local playerAdded,playerRemoving
playerAdded = players.PlayerAdded:Connect(setupPlayer)
playerRemoving = players.PlayerRemoving:Connect(onRemove)
_G.PlayerConnections = {
	Added = playerAdded,
	Removing = playerRemoving
}
for i,v in next, players:GetPlayers() do
setupPlayer(v)
end
print("ChatTTS successfully loaded!")