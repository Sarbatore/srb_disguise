-- Remove on disconnect
hook.Add("PlayerDeath", "Disguise:RemoveOnDeath", function( ply )
    ply:SetNWBool( "SrbDisguise.isDisguised", false )
end)

-- Remove on disconnect
hook.Add("PlayerDisconnected", "Disguise:RemoveOnDisconnect", function( ply )
    ply:SetNWBool( "SrbDisguise.isDisguised", false )
end)

-- Remove on team change
hook.Add("PlayerChangedTeam", "SrbDisguise:RemoveOnChangeTeam", function( ply )
    ply:SetNWBool( "SrbDisguise.isDisguised", false )
end)

concommand.Add("bodygroups", function( ply, cmd, args )
    if IsValid(ply) or not args[1] then return end

    local ent = ents.Create( "base_gmodentity" )
    ent:SetModel( args[1] )

    PrintTable( ent:GetBodyGroups() )

    ent:Remove()
end)