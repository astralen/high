CC = loadstring(game:HttpGet('https://pastebin.com/raw/eJSwrH58'))()
CC.commandSymbol = ';'
CC:Start()

function getPlayerByNick(nick)
    nick = string.lower(nick)
    if nick == 'me' then
        return game.Players.LocalPlayer.Name
    end
    for i,v in pairs(game.Players:GetChildren()) do
        if string.sub(string.lower(v.Name), 1, #nick) == nick then
            return v
        end
    end
    for i,v in pairs(game.Players:GetChildren()) do
        if string.sub(string.lower(v.DisplayName), 1, #nick) == nick then
            return v
        end
    end
end

CC:setCommand({
    Name = 'high',
    lowerString = true,
    description = 'esp for player',
    helpText = "Place player's nickname in first argument to esp him.\nExample: "..CC.commandSymbol..'high '..game.Players.LocalPlayer.Name,
    Callback = function(nickname)
        local player = getPlayerByNick(nickname)
        if player then
            Instance.new("Highlight",player.Character)
        end
    end
})
