AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Use( ply )
    if ( not ply:IsPlayer() ) then return end
    if ( ply:GetNWBool( "SrbDisguise.isDisguised", false ) ) then ply:ChatPrint("Vous êtes déjà déguisé!") return end
    ply:SetNWBool( "SrbDisguise.isDisguised", true )

    -- Cache player model
    local realModel = ply:GetModel()
    
    local models = self.Disguisement or self.Model
    local model = models[math.random(1, #models)]
    
    -- Set model
    ply:SetModel( model.mdl )

    -- Set bodygroups
    if ( model.bodygroups ) then
        -- Reset all bodygroups
        local plyBodygroups = ply:GetBodyGroups()
        for k, bodygroup in ipairs( plyBodygroups ) do
            ply:SetBodygroup( bodygroup.id, 0 )
        end

        -- Set bodygroups
        for bodygroup, bodypart in pairs( model.bodygroups ) do
            local value = istable( bodypart ) and bodypart[math.random( 1, #bodypart )] or bodypart
            ply:SetBodygroup( bodygroup, value )
        end
    end

    -- Remove model after duration
    if ( self.Duration > 0 ) then
        timer.Simple( self.Duration, function()
            if ( not IsValid( ply ) or not ply:GetNWBool( "SrbDisguise.isDisguised", false ) ) then return end
            
            ply:SetModel( realModel )
            ply:SetNWBool( "SrbDisguise.isDisguised", false )
        end)
    end

    -- Remove entity
    self:Remove()
end