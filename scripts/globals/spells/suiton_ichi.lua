-----------------------------------------
-- Spell: Suiton: Ichi
-- Deals water damage to an enemy and lowers its resistance against lightning.
-----------------------------------------

require("scripts/globals/status");
require("scripts/globals/magic");

-----------------------------------------
-- OnSpellCast
-----------------------------------------

function OnMagicCastingCheck(caster,target,spell)
	return 0;
end;

function onSpellCast(caster,target,spell)
	--doNinjutsuNuke(V,M,caster,spell,target,hasMultipleTargetReduction,resistBonus)
	local dmg = doNinjutsuNuke(28,1,caster,spell,target,false,1.0);
	handleNinjutsuDebuff(caster, target, spell, 30, 15, MOD_THUNDERRES);

	return dmg;

end;
