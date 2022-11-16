local memoryMiniGame
RegisterNUICallback('MemoryGameResult', function(data)
    SetNuiFocus(false, false)
    memoryMiniGame:resolve(data.success)
end)


    -- correctBlocks = Number of correct blocks the player needs to click
    -- incorrectBlocks = number of incorrect blocks after which the game will fail
    -- timetoShow = time in secs for which the right blocks will be shown
    -- timetoLose = maximum time after timetoshow expires for player to select the right blocks

exports('memorygame', function(correctSquares, incorrectSquares, TimeShow, TimeLose)
    memoryMiniGame = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "Start",
        correct = correctSquares,
        incorrect = incorrectSquares,
        showtime = TimeShow,
        losetime = TimeShow + TimeLose,
    })
    return Citizen.Await(memoryMiniGame)
end)

-- example
RegisterCommand('test', function(source, args)

    exports["alentexas_memory"]:memorygame(5, 3, 5, 12,
    function() 
        print("success")
    end,
    function()
        print("fail")
    end)
end)
