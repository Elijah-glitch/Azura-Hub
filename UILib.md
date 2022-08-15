# [Modified] **[VAPE UI Library](https://v3rmillion.net/showthread.php?tid=1098651)** ← Official Post

# Information, For those who think we are skidding.

**One of the developers of `xrer#9221`, made a modification of one library, from Dawid, It's a VAPE. We say we don't own this libary, we just edited it and added some cool features! We have inserted a link to the official post about this library in the very top corner. You can also change and modify or add new features! Or...? You can just take all the code and just review it, or take it for your own library!**

We added `Holding Bind, Multi DropDown, Sections, Fixed Toggle Ui, and etc.`.

**[Documentation, still bad, but it will updating sometimes. There is a errors!](https://vaiumabe-athletes.gitbook.io/azura-technology/)**

## Loadstring
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/Azura-Technology/Azura-Hub/main/BetaUpdateVapeUiLib"))()
```

## Window
```lua
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Azura-Technology/Azura-Hub/main/BetaUpdateVapeUiLib"))()
-- lib:Window(title <string>, default <color3>, toggleUi <boolean>,)
local win = lib:Window("PREVIEW",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
```

## Tab
```lua
-- tab:Tab(title <string>)
local tab = win:Tab("Tab")
```

## Section
```lua
-- tab:Section(title <string>)
local sec = tab:Section("Elements")
```

## Controls

```lua
--sec:Toggle(title <string>, callback <function>)
sec:Button("Button", function()
lib:Notification("Notification", "Hello!", "Hi!")
end)

--sec:Toggle(title <string>, toggle <boolean>, callback <function>)
sec:Toggle("Toggle",false, function(t)
print(t)
end)

--sec:Slider(title <string>, min,max,start,inc, callback <function>)
sec:Slider("Slider",0,100,30,0.3, function(t)
print(t)
end)

--sec:Dropdown(title <string>,options <table>,default <string>, callback <function>)
local dropdown = sec:Dropdown("Dropdown", {"a","b","c","d","e"},"", function(t)
   print(t)
end)

--[[
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
Dropdown:Set(option <string>)
]]

--sec:MultiDropdown(title <string>,options <table>,default <table>, callback <function>)
local multidropdown = sec:MultiDropdown("Multi Dropdown", {"a","b","c","d","e"},{"b", "c"}, function(t)
   print(table.concat(t, ", "))
end)

--[[
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
]]

--sec:Colorpicker(title <string>, default <color3>, callback <function>)
sec:Colorpicker("Colorpicker", Color3.fromRGB(255,255,255),function(t)
   print(t)
end)

--sec:Textbox(title <string> ,disappear <boolean>, callback <function>)
sec:Textbox("Textbox", true, function(t)
   print(t)
end)

--sec:Bind(title <string>, default <keycode>, hold <boolean>, callback <function>)
sec:Bind("Hold Bind", Enum.KeyCode.E, true, function(t)
   print(t)
end)

sec:Bind("Normal Bind", Enum.KeyCode.F, false, function()
   print("Bind pressed")
end)

--[[
bind:Set(state <keycode>)
]]

--sec:Label(text <string>)
sec:Label("Label")
```
