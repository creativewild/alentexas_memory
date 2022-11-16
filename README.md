# alentexas_memory
RedM memory game

exmaple:
```lua
RegisterCommand('test', function(source, args)

    exports["alentexas_memory"]:memoryminigame(1, 1, 1, 1,
    function() 
        print("success")
    end,
    function()
        print("failure")
    end)
end)
```
