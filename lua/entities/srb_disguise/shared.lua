ENT.Base = "base_gmodentity"
ENT.Type = "anim"

ENT.PrintName = "Base Entity"
ENT.Category = "Srb Disguise"
ENT.Spawnable = false
ENT.AdminOnly = false

ENT.Author = "Sarbatore"
ENT.Contact = "Sarbatore | Sarbatore#4703"

function ENT:Initialize()
	local model = self.Model[math.random(1, #self.Model)]

	self:SetModel( model.mdl )
	if ( model.color ) then
		self:SetColor( model.color )
	end

	if ( model.bodygroups ) then
        local bodygroups = self:GetBodyGroups()
        for bodygroup, bodypart in pairs( model.bodygroups ) do
            local value = istable(bodypart) and bodypart[math.random( 1, #bodypart )] or bodypart
            self:SetBodygroup( bodygroup, value )
        end
    end

	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )

	if ( SERVER ) then self:SetUseType( SIMPLE_USE ) self:PhysicsInit( SOLID_VPHYSICS ) end
end