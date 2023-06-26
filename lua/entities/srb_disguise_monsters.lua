AddCSLuaFile()

ENT.Base = "srb_disguise"
ENT.Type = "anim"

ENT.PrintName = "Monsters"
ENT.Category = "Srb Disguise"
ENT.Spawnable = true
ENT.AdminOnly = false

ENT.Author = "Sarbatore"
ENT.Contact = "Sarbatore | Sarbatore#4703"

ENT.Duration = 10 -- 0 = infinite 
ENT.Model = {
    {
        mdl = "models/props_junk/cardboard_box001a.mdl",
        bodygroups = nil
    }
}
ENT.Disguisement = {
    {
        mdl = "models/player/skeleton.mdl",
        bodygroups = { [0] = {0, 4} }
    },
    {
        mdl = "models/player/zombie_classic.mdl",
        bodygroups = { [0] = {0, 1} }
    },
    {
        mdl = "models/player/zombie_fast.mdl",
    }
}