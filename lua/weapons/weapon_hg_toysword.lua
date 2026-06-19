if SERVER then AddCSLuaFile() end

SWEP.Base = "weapon_melee"

SWEP.PrintName = "Roblox Sword"

SWEP.Instructions = "Just the sword...\n\nLMB to attack.\nRMB to block."

SWEP.Category = "Weapons - Melee"

SWEP.Spawnable = true

SWEP.AdminOnly = false



SWEP.Weight = 0



SWEP.WorldModel = "models/robloxstuff/sword/sword.mdl"

SWEP.WorldModelReal = "models/weapons/tfa_nmrih/v_me_sledge.mdl"

SWEP.WorldModelExchange = "models/robloxstuff/sword/sword.mdl"

SWEP.ViewModel = ""



SWEP.HoldType = "revolver"



SWEP.DamageType = DMG_SLASH



SWEP.HoldPos = Vector(-14,-2,1)

SWEP.HoldAng = Angle(0,0,0)



SWEP.AttackTime = 0.2

SWEP.AnimTime1 = 1.1

SWEP.WaitTime1 = 1.3

SWEP.ViewPunch1 = Angle(1,2,0)



SWEP.Attack2Time = 0.3

SWEP.AnimTime2 = 1

SWEP.WaitTime2 = 0.8

SWEP.ViewPunch2 = Angle(0,0,-2)



SWEP.attack_ang = Angle(0,0,-15)

SWEP.sprint_ang = Angle(15,0,0)



SWEP.basebone = 94



SWEP.weaponPos = Vector(0,0,0)

SWEP.weaponAng = Angle(0,24,0)



SWEP.DamageType = DMG_SLASH

SWEP.DamagePrimary = 74

SWEP.DamageSecondary = 86



SWEP.PenetrationPrimary = 10

SWEP.PenetrationSecondary = 3



SWEP.MaxPenLen = 6



SWEP.PenetrationSizePrimary = 4

SWEP.PenetrationSizeSecondary = 1.25



SWEP.StaminaPrimary = 30

SWEP.StaminaSecondary = 35



SWEP.AttackLen1 = 65

SWEP.AttackLen2 = 45



SWEP.AnimList = {

    ["idle"] = "Idle",

    ["deploy"] = "Draw",

    ["attack"] = "Attack_Quick",

    ["attack2"] = "Shove",

}



if CLIENT then

	SWEP.WepSelectIcon = Material("vgui/icons/ico_sledgehammer.png")

	SWEP.IconOverride = "vgui/icons/ico_sledgehammer.png"

	SWEP.BounceWeaponIcon = false

end



SWEP.setlh = true

SWEP.setrh = true





SWEP.AttackHit = "Canister.ImpactHard"

SWEP.Attack2Hit = "Canister.ImpactHard"

SWEP.AttackHitFlesh = "Flesh.ImpactHard"

SWEP.Attack2HitFlesh = "Flesh.ImpactHard"

SWEP.DeploySnd = "physics/wood/wood_plank_impact_soft2.wav"



SWEP.AttackPos = Vector(0,0,0)



function SWEP:CanSecondaryAttack()

    self.DamageType = DMG_CLUB

    self.AttackHit = "Canister.ImpactHard"

    self.Attack2Hit = "Canister.ImpactHard"

    return true

end



function SWEP:CanPrimaryAttack()

    self.DamageType = DMG_CLUB

    self.AttackHit = "Concrete.ImpactHard"

    self.Attack2Hit = "Concrete.ImpactHard"

    return true

end



function SWEP:PrimaryAttackAdd(ent)

    if hgIsDoor(ent) and math.random(7) > 3 then

        hgBlastThatDoor(ent,self:GetOwner():GetAimVector() * 50 + self:GetOwner():GetVelocity())

    end

end



function SWEP:CustomBlockAnim(addPosLerp, addAngLerp)

    addPosLerp.z = addPosLerp.z + (self:GetBlocking() and -2 or 0)

    addPosLerp.x = addPosLerp.x + (self:GetBlocking() and 2 or 0)

    addPosLerp.y = addPosLerp.y + (self:GetBlocking() and -5 or 0)

    addAngLerp.p = addAngLerp.p + (self:GetBlocking() and 15 or 0)

    addAngLerp.r = addAngLerp.r + (self:GetBlocking() and 45 or 0)



    return true

end



SWEP.NoHolster = true



SWEP.AttackTimeLength = 0.155

SWEP.Attack2TimeLength = 0.01



SWEP.AttackRads = 95

SWEP.AttackRads2 = 0



SWEP.SwingAng = -165

SWEP.SwingAng2 = 0



SWEP.MinSensivity = 0.87