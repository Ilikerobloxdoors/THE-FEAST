local Creator = loadstring(game:HttpGet(
    "https://pastebin.com/raw/0fSnvfGt"
))()

local entity = Creator.createEntity({
    CustomName = "Feast",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/THE-FEAST/main/The%20FEAST.rbxm",

    Speed = 170,
    DelayTime = 3,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1.5,
    },

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {18, 35, 0.1, 1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://124899623219574",
            Image2 = "rbxassetid://124899623219574",

            Shake = true,

            Sound1 = {
                10483790459,
                {Volume = 0.5},
            },

            Sound2 = {
                77380954630334,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                true,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Feast..."
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Feast has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Feast has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Feast has started moving")
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Feast has finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Feast entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Feast")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Feast.")
end

Creator.runEntity(entity)
