AddCSLuaFile()

ENT.Base = "srb_disguise"
ENT.Type = "anim"

ENT.PrintName = "Green German Soldier"
ENT.Category = "Srb Disguise"
ENT.Spawnable = true
ENT.AdminOnly = false

ENT.Author = "Sarbatore"
ENT.Contact = "Sarbatore | Sarbatore#4703"

ENT.Duration = 10 -- 0 = infinite 
ENT.Model = {
    {
        mdl = "models/player/dod_german.mdl",
        bodygroups = { [0] = 3, [1] = 4 }
    },
    {
        mdl = "models/player/dod_german.mdl",
        bodygroups = { [0] = 5, [1] = 1 }
    }
}
ENT.Disguisement = {
    {
        mdl = "models/player/dod_german.mdl",
        bodygroups = { [0] = {2, 5}, [1] = 4 }
    }
}