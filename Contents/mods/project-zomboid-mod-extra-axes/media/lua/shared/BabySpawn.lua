local print = print
local getPlayer = getPlayer
local Say = Say
local ZombRand = ZombRand
local addVehicleDebug = addVehicleDebug
local tostring = tostring
local SandboxVars = SandboxVars
local setFallOnFront = setFallOnFront
local AddWorldInventoryItem = AddWorldInventoryItem
local getCell = getCell
local getGridSquare = getGridSquare
local createRandomDeadBody = createRandomDeadBody
local table = table
local format = string.format -- NOTE: we need this
local ipairs = ipairs
local getActivatedMods = getActivatedMods
local size = size
local get = get
local Dir = IsoDirections

    
local DEBUG_MSG = false
local MAX_RAND = 100

local SpawnTable = { }

local function addSpecialSpawn(data)
    data.skin = data.skin or nil
    data.z = data.z or 0
    data.chance = data.chance or 100
    data.always = data.always or false

    local key = format("%i,%i,%i", data.x, data.y, data.z)
    SpawnTable[key] = data
end

local function debugSay(text)
    if not DEBUG_MSG then return end
    print("DEBUG: ".. text)
    getPlayer():Say(text, 1.0, 1.0, 0.0, UIFont.Dialogue, 30.0, "radio")
    
end
 
 
local function checkSpawn(square)
    if not square then return end
    if square:getModData().spawnVehicle then return end
    square:getModData().spawnVehicle = true
    local x, y, z = square:getX(), square:getY(), square:getZ()
    local key = format("%i,%i,%i", x, y, z)
    local spawn = SpawnTable[key]
    if not spawn then return end

    local roll = ZombRand(0, MAX_RAND)
    local chance = spawn.chance


    debugSay(format("Check Spawn (type: %s), roll vs chance: %s vs %s (always: %s)", spawn.type or "nil", roll, spawn.chance, tostring(spawn.always)))
    
    if roll > chance and (not spawn.always or not ALWAYS_OVERRIDE) then 
        SpawnTable[key] = nil
        return
    end
    debugSay("Roll passed, attempting spawn..")



        local car = addVehicleDebug(spawn.type, spawn.dir, spawn.skin, square)

   
    SpawnTable[key] = nil
end



Events.LoadGridsquare.Add(checkSpawn)

addSpecialSpawn({type = "babyimpala", x = 5543, y = 9653, dir = Dir.W, chance = 100, always = true})
