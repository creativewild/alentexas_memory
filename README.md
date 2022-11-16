# alentexas_memory
RedM memory game

exmaple:
```lua
RegisterCommand('test', function(source, args)
    -- arguments order:
    -- correctBlocks = Number of correct blocks the player needs to click
    -- incorrectBlocks = number of incorrect blocks after which the game will fail
    -- timetoShow = time in secs for which the right blocks will be shown
    -- timetoLose = maximum time after timetoshow expires for player to select the right blocks
    
    exports["alentexas_memory"]:memoryminigame(5, 3, 5, 10,
    function() 
        print("success")
    end,
    function()
        print("failure")
    end)
end)
```
