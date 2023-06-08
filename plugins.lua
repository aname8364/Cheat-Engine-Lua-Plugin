local PluginMenu = createMenuItem(MainForm.MainMenu1)
PluginMenu.Caption = "Plugins"

local dir = getCheatEngineDir() .. "luaplugins"
local files = getFileList(dir)

for i, file in ipairs(files) do
    local filename = extractFileName(file)
    local plugin = createMenuItem(PluginMenu)
    plugin.Name = "plugin" .. i
    plugin.Caption = filename
    plugin.onClick = function()
        dofile(file)
    end
    PluginMenu.add(plugin)
end

MainForm.MainMenu1.items.add(PluginMenu)
