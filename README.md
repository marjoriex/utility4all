# Utility4all

This utility contains all 119 useful functions synapse offers. access them easily with this utility

Also contains my RX11 Library (DX11 clone for rendering drawing lib classes)

How to use:
```lua
local function import(file) 
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/marjoriex/utility4all/main/%s.lua"):format(file)), file .. '.lua')();
end

local util = import("Utility");
```
