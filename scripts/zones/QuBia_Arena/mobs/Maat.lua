-----------------------------------
-- Area: Qu'Bia Arena
-- NPC:  Maat
-- Genkai 5 Fight
-----------------------------------
package.loaded["scripts/zones/QuBia_Arena/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/QuBia_Arena/TextIDs");

-----------------------------------
-- onMobSpawn Action
-----------------------------------

function OnMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function OnMobEngaged(mob,target)
	target:showText(mob,YOU_DECIDED_TO_SHOW_UP);
	printf("Maat Qubia Arena works");
	-- When he take damage: target:showText(mob,THAT_LL_HURT_IN_THE_MORNING);
	-- He use dragon kick or tackle: target:showText(mob,TAKE_THAT_YOU_WHIPPERSNAPPER);
	-- He use spining attack: target:showText(mob,TEACH_YOU_TO_RESPECT_ELDERS);
	-- If you dying: target:showText(mob,LOOKS_LIKE_YOU_WERENT_READY);
end;

-----------------------------------
-- onMobDeath Action
-----------------------------------

function onMobDeath(mob,killer)
	killer:showText(mob,YOUVE_COME_A_LONG_WAY);
end;