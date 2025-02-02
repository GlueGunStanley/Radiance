-- Fetch the preset name from fxmanifest.lua
local preset = GetResourceMetadata(GetCurrentResourceName(), 'preset', 0)

if not preset or preset == "" then
    print("^1[ERROR]^0 Initialization failed! No preset defined in fxmanifest.lua!")
    return
end

-- Construct the file path dynamically
local presetFile = 'presets/' .. preset .. '.dat'
local settingsFile = LoadResourceFile(GetCurrentResourceName(), presetFile)

if not settingsFile then
    print("^1[ERROR]^0 Failed to load preset file: " .. presetFile)
    return -- Stop execution if the file couldn't be loaded
end

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end

    local t = {}
    local i = 1

    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end

    return t
end

local function starts_with(str, start)
    return str:sub(1, #start) == start
end

Citizen.CreateThread(function()
    local lines = stringsplit(settingsFile, "\n")

    for k, v in ipairs(lines) do
        if not starts_with(v, '#') and not starts_with(v, '//') and (v ~= "" or v ~= " ") and #v > 1 then
            v = v:gsub("%s+", " ")

            local setting = stringsplit(v, " ")

            if setting[1] ~= nil and setting[2] ~= nil and tonumber(setting[2]) ~= nil then
                if setting[1] ~= 'weather.CycleDuration' then
                    Citizen.InvokeNative(GetHashKey('SET_VISUAL_SETTING_FLOAT') & 0xFFFFFFFF, setting[1], tonumber(setting[2]) + .0)
                end
            end
        end
    end
end)
