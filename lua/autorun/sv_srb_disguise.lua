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