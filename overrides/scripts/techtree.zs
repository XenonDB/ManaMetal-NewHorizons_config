import minetweaker.item.IItemStack;

//Draconic Evoluation
furnace.remove(<DraconicEvolution:draconiumIngot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<DraconicEvolution:draconiumIngot>);
mods.thermalexpansion.Furnace.removeRecipe(<DraconicEvolution:draconiumBlend>);
//mods.thermalexpansion.Furnace.removeRecipe(<manametalmod:ItemMetalCrystals:55>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:20>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalExpansion:material:515>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:512>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:dustDraconium> * 2);

mods.mfr.MiningLaser.addOre(<DraconicEvolution:draconiumOre>.weight(3));
mods.mfr.MiningLaser.addPreferredOre(2, <DraconicEvolution:draconiumOre>);

//furnace.addRecipe(<DraconicEvolution:draconiumDust> * 8, <manametalmod:ItemMetalCrystals:55>);

//HOLY SHIT THE FUCKING INVISIBLE ANNOTATION
//mods.rotarycraft.Friction.addRecipe(<DraconicEvolution:draconiumDust>,<DraconicEvolution:draconiumIngot>,1990,50);

mods.immersiveengineering.ArcFurnace.addRecipe(<DraconicEvolution:draconium>, <ore:ingotTrueAncientThulium>, null, 600, 1024, [<RotaryCraft:rotarycraft_item_powders:4> * 2, <DraconicEvolution:draconiumDust> * 9], "Alloying");
mods.mekanism.Crusher.addRecipe(<DraconicEvolution:draconium>, <DraconicEvolution:draconiumIngot> * 9);

val draconArmors = [<DraconicEvolution:wyvernHelm>, <DraconicEvolution:wyvernChest>, <DraconicEvolution:wyvernLeggs>, <DraconicEvolution:wyvernBoots>] as IItemStack[];
val upgradedArmors = [<manametalmod:BossStartDragonArmor_helmet>, <manametalmod:BossStartDragonArmor_ChestPlate>, <manametalmod:BossStartDragonArmor_Legs>, <manametalmod:BossStartDragonArmor_Boots>] as IItemStack[];

for i, armor in draconArmors {
	mods.thaumcraft.Arcane.addShaped("ASPECTS", armor, "ignis 20, aqua 10, terra 5, aer 20, perditio 20, ordo 20", [[<ore:ingotDraconium>, <DraconicEvolution:wyvernCore>, <ore:ingotDraconium>], [<ore:ingotDraconium>, upgradedArmors[i], <ore:ingotDraconium>], [<ore:ingotDraconium>, <DraconicEvolution:draconiumEnergyCore>, <ore:ingotDraconium>]]);
}

val draconTools = [<DraconicEvolution:wyvernBow>, <DraconicEvolution:wyvernPickaxe>, <DraconicEvolution:wyvernShovel>, <DraconicEvolution:wyvernSword>] as IItemStack[];
val upgradedTools = [<manametalmod:Dungeon_Bow4>, <ThaumicTinkerer:ichorPickGem>, <ThaumicTinkerer:ichorShovelGem>, <manametalmod:Dungeon_Sword4>] as IItemStack[];

for i, tool in draconTools {
	mods.thaumcraft.Arcane.addShaped("ASPECTS", tool, "ignis 20, aqua 10, terra 5, aer 20, perditio 20, ordo 20", [[null, <DraconicEvolution:wyvernCore>, null], [<ore:ingotDraconium>, upgradedTools[i], <ore:ingotDraconium>], [null, <DraconicEvolution:draconiumEnergyCore>, null]]);
}

mods.thaumcraft.Arcane.addShaped("ASPECTS", <DraconicEvolution:draconicAxe>, "ignis 40, aqua 20, terra 10, aer 40, perditio 40, ordo 40", [[null, <DraconicEvolution:awakenedCore>, null], [<ore:ingotDraconiumAwakened>, <ThaumicTinkerer:ichorAxeGem>, <ore:ingotDraconiumAwakened>], [null, <DraconicEvolution:draconiumEnergyCore:1>, null]]);

//------------------------------------------------------------------------
//steel
mods.mekanism.Infuser.removeRecipe(<manametalmod:dustSteel>);
mods.mekanism.Infuser.removeRecipe(<Mekanism:EnrichedIron>);
mods.thermalexpansion.Smelter.removeRecipe(<ore:ingotIron>, <ore:dustCharcoal> * 4);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustIron>, <ore:dustCharcoal> * 4);
mods.thermalexpansion.Smelter.removeRecipe(<ore:dustIron>, <ore:dustCoal> * 2);
mods.thermalexpansion.Smelter.removeRecipe(<ore:ingotIron>, <ore:dustCoal> * 2);

mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:dustSteel>);

//------------------------------------------------------------------------
//poor ore
mods.immersiveengineering.MetalPress.addRecipe(<ImmersiveEngineering:ore> * 2, <manametalmod:orePoorCopper> * 3, <minecraft:diamond_block>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<IC2:blockOreTin> * 2, <manametalmod:orePoorTin> * 3, <minecraft:diamond_block>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<ImmersiveEngineering:ore:2> * 2, <manametalmod:orePoorLead> * 3, <minecraft:diamond_block>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<minecraft:iron_ore> * 2, <manametalmod:orePoorIron> * 3, <minecraft:diamond_block>, 512);

//------------------------------------------------------------------------
//uranium
val oreUran = <ore:oreUranium>;
oreUran.add(<ReactorCraft:reactorcraft_block_ore:1>);
oreUran.add(<ReactorCraft:reactorcraft_block_ore:5>);

//------------------------------------------------------------------------
//iridium
<ore:ingotIridium>.add(<IC2:itemOreIridium>);

//------------------------------------------------------------------------
//ore processing
//<ore:dustTinyMiracle>.add(<manametalmod:MiraclePowderMini>);
//<ore:dustMiracle>.add(<manametalmod:MiraclePowder>);
//<ore:shardTinyWorldEssence>.add(<manametalmod:WorldEssenceMini>);
//<ore:shardWorldEssence>.add(<manametalmod:WorldEssence>);
//<ore:oreMiracle>.add(<manametalmod:superOre1>);
//<ore:oreWorldEssence>.add(<manametalmod:superOre2>);

val deepEpicOres = [<manametalmod:epicore1>, <manametalmod:epicore2>, <manametalmod:epicore3>, <manametalmod:epicore4>, <manametalmod:epicore5>, <manametalmod:epicore6>, <manametalmod:legend1>, <manametalmod:legend2>, <manametalmod:legend3>, <manametalmod:legend4>, <manametalmod:legend5>, <manametalmod:denseoreThulium>] as IItemStack[];
val epicIngots = [<manametalmod:ingotTitan>, <manametalmod:ingotYamagata>, <manametalmod:ingotBiliha>, <manametalmod:ingotRosite>, <manametalmod:ingotOrichalcum>, <manametalmod:ingotRainbowSteel>, <ThermalFoundation:material:70>, <manametalmod:ingotSoulSteel>, <manametalmod:ingotMysteriousIron>, <manametalmod:ingotAdamantine>, <manametalmod:ingotHolyCopper>, <manametalmod:ingotThulium>] as IItemStack[];

for i, ore in deepEpicOres {
	mods.immersiveengineering.ArcFurnace.addRecipe(epicIngots[i] * 18, ore, <ImmersiveEngineering:material:13> * 4, 200, 4096, [], "Ores");
}

//------------------------------------------------------------------------
//TC aspect
mods.thaumcraft.Aspects.set(<manametalmod:ingotTrueAncientThulium>, "metallum 64, vacuos 64, potentia 64, space 64, substance 64, universe 64, dackmagic 64");
mods.thaumcraft.Aspects.set(<manametalmod:DarkScrap>, "lucrum 48, potentia 48, space 48, universe 48, dackmagic 16");
mods.thaumcraft.Aspects.set(<DraconicEvolution:draconiumDust>, "metallum 4, dragon 4");
mods.thaumcraft.Aspects.set(<DraconicEvolution:draconiumIngot>, "metallum 4, dragon 4");
mods.thaumcraft.Aspects.set(<DraconicEvolution:draconicIngot>, "metallum 16, dragon 16, potentia 16");

//------------------------------------------------------------------------
//creative items

mods.avaritia.ExtremeCrafting.remove(<appliedenergistics2:tile.BlockCreativeEnergyCell>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <ElectriCraft:electricraft_item_rfbattery>.withTag({nrg: 60000000000000 as long}), [<appliedenergistics2:tile.BlockEnergyAcceptor>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:tile.BlockEnergyAcceptor>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:tile.BlockDenseEnergyCell>, <appliedenergistics2:tile.BlockDenseEnergyCell>], "machina 128, signum 128", <appliedenergistics2:tile.BlockCreativeEnergyCell>, 15);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <Thaumcraft:ItemThaumonomicon>, [<ChromatiCraft:chromaticraft_item_warp:1>, <manametalmod:MMMbook:3>, <manametalmod:ItemToolScribeTools>, <ThaumicTinkerer:placementMirror>], "history 128 ,cognitio 128 , instrumentum 64, perplexus 64, principia 64", <Thaumcraft:ItemThaumonomicon:42>, 15);


//------------------------------------------------------------------------
//endgame

mods.avaritia.Compressor.remove(<universalsingularities:universal.vanilla.singularity:2>);
mods.avaritia.Compressor.add(<universalsingularities:universal.vanilla.singularity:2>, 66000, <ore:blockDiamond>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.draconicEvolution.singularity>);
mods.avaritia.Compressor.add(<universalsingularities:universal.draconicEvolution.singularity>, 2000, <DraconicEvolution:draconium:2>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.general.singularity:11>);
mods.avaritia.Compressor.add(<universalsingularities:universal.general.singularity:11>, 500, <manametalmod:ingotGaia>);

mods.avaritia.Compressor.remove(<aobd:singularityAbyssalnite>);
mods.avaritia.Compressor.add(<aobd:singularityAbyssalnite>, 400, <abyssalcraft:abyblock>);
mods.avaritia.Compressor.remove(<aobd:singularityLiquifiedCoralium>);
mods.avaritia.Compressor.add(<aobd:singularityLiquifiedCoralium>, 400, <abyssalcraft:corblock>);
mods.avaritia.Compressor.remove(<aobd:singularityIronwood>);
mods.avaritia.Compressor.add(<aobd:singularityIronwood>, 100, <manametalmod:blockPowerIronwood>);
mods.avaritia.Compressor.remove(<aobd:singularityKnightmetal>);
mods.avaritia.Compressor.add(<aobd:singularityKnightmetal>, 200, <aobd:blockKnightmetal>);

mods.avaritia.Compressor.remove(<aobd:singularityMoltenGold>);
mods.avaritia.Compressor.add(<aobd:singularityMoltenGold>, 1000, <manametalmod:blockMoltenGold>);
mods.avaritia.Compressor.remove(<aobd:singularityStarSilver>);
mods.avaritia.Compressor.add(<aobd:singularityStarSilver>, 1000, <manametalmod:blockStarSilver>);
mods.avaritia.Compressor.remove(<aobd:singularityDeepiron>);
mods.avaritia.Compressor.add(<aobd:singularityDeepiron>, 3000, <manametalmod:blockDeepiron>);
mods.avaritia.Compressor.remove(<aobd:singularityFantasygold>);
mods.avaritia.Compressor.add(<aobd:singularityFantasygold>, 3000, <manametalmod:blockFantasygold>);
mods.avaritia.Compressor.remove(<aobd:singularityHighlycrystal>);
mods.avaritia.Compressor.add(<aobd:singularityHighlycrystal>, 3000, <manametalmod:blockHighlycrystal>);

mods.avaritia.Compressor.remove(<universalsingularities:universal.general.singularity:7>);
mods.avaritia.Compressor.add(<universalsingularities:universal.general.singularity:7>, 3000, <manametalmod:blockOsmium>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.general.singularity:9>);
mods.avaritia.Compressor.add(<universalsingularities:universal.general.singularity:9>, 7000, <manametalmod:blockRuby>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.general.singularity:10>);
mods.avaritia.Compressor.add(<universalsingularities:universal.general.singularity:10>, 7000, <manametalmod:blockSapphire>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.mekanism.singularity>);
mods.avaritia.Compressor.add(<universalsingularities:universal.mekanism.singularity>, 500, <Mekanism:BasicBlock:4>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.mekanism.singularity:1>);
mods.avaritia.Compressor.add(<universalsingularities:universal.mekanism.singularity:1>, 500, <Mekanism:BasicBlock:2>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.tinkersConstruct.singularity:2>);
mods.avaritia.Compressor.add(<universalsingularities:universal.tinkersConstruct.singularity:2>, 500, <TConstruct:MetalBlock:1>);
mods.avaritia.Compressor.remove(<aobd:singularityConstraintMetal>);
mods.avaritia.Compressor.add(<aobd:singularityConstraintMetal>, 4000, <aobd:blockConstraintMetal>);
mods.avaritia.Compressor.remove(<aobd:singularityImagSilicon>);
mods.avaritia.Compressor.add(<aobd:singularityImagSilicon>, 4000, <aobd:blockImagSilicon>);
mods.avaritia.Compressor.remove(<aobd:singularityCadmium>);
mods.avaritia.Compressor.add(<aobd:singularityCadmium>, 3000, <aobd:blockCadmium>);
mods.avaritia.Compressor.remove(<aobd:singularityIndium>);
mods.avaritia.Compressor.add(<aobd:singularityIndium>, 2000, <aobd:blockIndium>);
mods.avaritia.Compressor.remove(<aobd:singularityMysteriousSoul>);
mods.avaritia.Compressor.add(<aobd:singularityMysteriousSoul>, 2000, <manametalmod:blockMysteriousSoul>);
mods.avaritia.Compressor.remove(<aobd:singularityPreciousIron>);
mods.avaritia.Compressor.add(<aobd:singularityPreciousIron>, 3000, <manametalmod:blockPreciousIron>);
mods.avaritia.Compressor.remove(<aobd:singularityRainbowOpal>);
mods.avaritia.Compressor.add(<aobd:singularityRainbowOpal>, 2000, <manametalmod:blockRainbowOpal>);
mods.avaritia.Compressor.remove(<aobd:singularitySoulGold>);
mods.avaritia.Compressor.add(<aobd:singularitySoulGold>, 3000, <manametalmod:blockSoulGold>);
mods.avaritia.Compressor.remove(<aobd:singularityStartleSilver>);
mods.avaritia.Compressor.add(<aobd:singularityStartleSilver>, 3000, <manametalmod:blockStartleSilver>);
mods.avaritia.Compressor.remove(<aobd:singularityManaDragonCrystal>);
mods.avaritia.Compressor.add(<aobd:singularityManaDragonCrystal>, 2000, <manametalmod:blockManaDragonCrystal>);
mods.avaritia.Compressor.remove(<aobd:singularityManaEnderCrystal>);
mods.avaritia.Compressor.add(<aobd:singularityManaEnderCrystal>, 2000, <manametalmod:blockManaEnderCrystal>);
mods.avaritia.Compressor.remove(<aobd:singularityManaSpiritSteel>);
mods.avaritia.Compressor.add(<aobd:singularityManaSpiritSteel>, 2000, <manametalmod:blockManaSpiritSteel>);
mods.avaritia.Compressor.remove(<aobd:singularityYadras>);
mods.avaritia.Compressor.add(<aobd:singularityYadras>, 2000, <manametalmod:blockYadras>);
mods.avaritia.Compressor.remove(<aobd:singularityAcanoy>);
mods.avaritia.Compressor.add(<aobd:singularityAcanoy>, 2000, <manametalmod:blockAcanoy>);
mods.avaritia.Compressor.remove(<aobd:singularityNetherite>);
mods.avaritia.Compressor.add(<aobd:singularityNetherite>, 600, <manametalmod:blockNetherite>);
mods.avaritia.Compressor.remove(<aobd:singularitySoulstone>);
mods.avaritia.Compressor.add(<aobd:singularitySoulstone>, 800, <manametalmod:blockSoulstone>);
mods.avaritia.Compressor.remove(<aobd:singularityBadyala>);
mods.avaritia.Compressor.add(<aobd:singularityBadyala>, 800, <manametalmod:blockBadyala>);
mods.avaritia.Compressor.remove(<aobd:singularityTritanium>);
mods.avaritia.Compressor.add(<aobd:singularityTritanium>, 4000, <mo:tritanium_block>);

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <ElectriCraft:electricraft_item_rfbattery>.withTag({nrg: 60000000000000 as long}), [<universalsingularities:universal.draconicEvolution.singularity>, <ChromatiCraft:chromaticraft_item_bucket:3>, <manametalmod:shard_Creating>, <ChromatiCraft:chromaticraft_item_bucket:3>, <rftools:machineFrame>, <ChromatiCraft:chromaticraft_item_bucket:3>, <TaintedMagic:ItemMaterial:5>, <ChromatiCraft:chromaticraft_item_bucket:3>], "alienis 128, universe 256, space 64", <rftools:dimensionBuilderBlock>, 15);

mods.thaumcraft.Arcane.addShaped("ASPECTS", <DraconicEvolution:draconicCore>, "ignis 20, aqua 10, terra 5, aer 20, perditio 20, ordo 20", [[<ore:ingotManaSpiritSteel>, <ore:ingotDraconium>, <ore:ingotManaSpiritSteel>], [<ore:ingotDraconium>, <ore:ingotManaDragonCrystal>, <ore:ingotDraconium>], [<ore:ingotManaSpiritSteel>, <ore:ingotDraconium>, <ore:ingotManaSpiritSteel>]]);
mods.thaumcraft.Arcane.addShaped("ASPECTS", <DraconicEvolution:wyvernCore>, "ignis 100, aqua 50, terra 25, aer 100, perditio 100, ordo 100", [[<ore:gemFlyGem>, <DraconicEvolution:draconicCore>, <ore:gemFlyGem>], [<DraconicEvolution:draconicCore>, <ore:ingotManaEnderCrystal>, <DraconicEvolution:draconicCore>], [<ore:gemFlyGem>, <DraconicEvolution:draconicCore>, <ore:gemFlyGem>]]);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:chaosFragment:1>, [<DraconicEvolution:wyvernCore>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <manametalmod:ingotAcanoy>, <DraconicEvolution:wyvernCore>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <manametalmod:ingotYadras>], "perditio 16 ,fabrico 16 ,potentia 32, auram 32, alienis 32, dragon 8", <DraconicEvolution:awakenedCore>, 7);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:chaosShard>, [<manametalmod:DarkScrap>, <DraconicEvolution:awakenedCore>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <ChromatiCraft:chromaticraft_item_modinteract:5>, <ChromatiCraft:chromaticraft_item_modinteract:5>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:awakenedCore>], "perditio 128 ,ordo 256 , auram 64, dackmagic 64", <DraconicEvolution:chaoticCore>, 9);

mods.avaritia.ExtremeCrafting.remove(<Avaritia:Cosmic_Meatballs>);
mods.avaritia.ExtremeCrafting.addShapeless(<Avaritia:Cosmic_Meatballs> * 5, [<Avaritia:Resource:2>, <minecraft:beef>, <minecraft:chicken>, <minecraft:porkchop>, <minecraft:fish>, <arsmagica2:itemOre:8>, <MineFactoryReloaded:meat.ingot.raw>, <minecraft:spider_eye>, <abyssalcraft:antibeef>, <abyssalcraft:antichicken>, <abyssalcraft:antipork>, <abyssalcraft:antiflesh>, <abyssalcraft:antispidereye>, <abyssalcraft:anticorflesh>, <abyssalcraft:anticorbone>, <manametalmod:ItemFoodHumans>, <manametalmod:ItemFoodHumans:1>, <manametalmod:ItemFoodHumans:2>, <manametalmod:ItemFoodHumans:3>, <manametalmod:ItemFoodHumans:4>, <manametalmod:ItemFoodHumans:5>, <manametalmod:ItemFoodHumans:6>, <manametalmod:ItemFoodHumans:7>, <manametalmod:ItemFoodHumans:8>, <manametalmod:ItemFoodHumans:9>, <manametalmod:ItemFoodHumans:10>, <manametalmod:ItemFoodHumans:11>, <manametalmod:ItemFoodHumans:12>, <manametalmod:ItemFoodHumans:13>, <manametalmod:ItemFoodHumans:14>, <manametalmod:ItemFoodHumans:15>, <manametalmod:ItemFoodHumans:16>, <manametalmod:ItemFoodHumans:17>, <Thaumcraft:TripleMeatTreat>, <Thaumcraft:ItemZombieBrain>, <manametalmod:Cheese:5>, <trivialthoughts:DreamCheese>, <witchery:ingredient:23>, <witchery:ingredient:50>, <witchery:ingredient:74>, <witchery:ingredient:89>, <witchery:ingredient:90>, <witchery:louse>, <witchery:bloodedwool>, <witchery:ingredient:158>, <TConstruct:strangeFood:2>]);

mods.avaritia.ExtremeCrafting.addShapeless(<manametalmod:MagicItemMedalFXS:371>, [<manametalmod:MagicItemMedalFXS:410>, <manametalmod:MagicItemMedalFXS:411>, <manametalmod:MagicItemMedalFXS:412>, <manametalmod:MagicItemMedalFXS:413>, <manametalmod:MagicItemMedalFXS:414>, <manametalmod:MagicItemMedalFXS:415>, <manametalmod:MagicItemMedalFXS:416>, <manametalmod:MagicItemMedalFXS:417>, <manametalmod:MagicItemMedalFXS:418>, <manametalmod:MagicItemMedalFXS:472>, <TwilightForest:item.trophy:4>, <witchery:leonardsurn:3>, <witchery:deathshand>, <witchery:babashat>, <Botania:recordGaia2>, <abyssalcraft:staff>, <shincolle:ShipSpawnEgg:53>, <shincolle:ShipSpawnEgg:54>, <shincolle:ShipSpawnEgg:55>, <shincolle:ShipSpawnEgg:56>, <shincolle:ShipSpawnEgg:38>, <shincolle:ShipSpawnEgg:39>, <shincolle:ShipSpawnEgg:48>, <shincolle:ShipSpawnEgg:40>, <shincolle:ShipSpawnEgg:41>, <shincolle:ShipSpawnEgg:49>, <shincolle:ShipSpawnEgg:50>, <manametalmod:SkillBookMagicBase1:22>, <manametalmod:MagicItem:261>, <manametalmod:ItemBagBossSky12:3>, <manametalmod:ItemBagBossSky13:3>, <manametalmod:ItemBagBossAtlantis1:2>, <manametalmod:ItemBagBossSky14:1>]);

mods.avaritia.ExtremeCrafting.remove(<Avaritia:Resource:5>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Resource:6>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Neutron_Collector>);

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <flammpfeil.slashblade:proudsoul:4>, [<flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 0 as int, RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 1 as int, RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 2 as int, RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 3 as int, RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 4 as int, RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 5 as int, RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 6 as int, RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:2>.withTag({SpecialAttackType: 7 as int, RepairCost: -50 as int})], "telum 128, vitreus 64, fabrico 16", <customnpcs:npcOrb>.withTag({ench: [], display: {Name: "§bNamed Souls Crystal"}}), 10);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <eternalsingularity:eternal_singularity>, [<ChromatiCraft:chromaticraft_item_placer:42>, <Avaritia:Ultimate_Stew>, <Avaritia:Cosmic_Meatballs>, <DraconicEvolution:chaoticCore>, <ChromatiCraft:chromaticraft_item_artefact>, <ChromatiCraft:chromaticraft_item_bucket:4>, <ThaumicTinkerer:skyPearl>, <arsmagica2:essence:10>, <AWWayofTime:blockCrystal>, <ThaumicHorizons:voidPutty>, <manametalmod:MagicItemMedalFXS:371>, <RandomThings:bloodStone>, <customnpcs:npcOrb>.withTag({ench: [], display: {Name: "§bNamed Souls Crystal"}}), <ReactorCraft:reactorcraft_item_plutonium>, <manametalmod:ItemFoodFruitWisdoms>, <manametalmod:ItemProduceTreasure:*>, <manametalmod:fish_s8>], "fabrico 1024, terminus 8192", <Avaritia:Resource:5> * 2, 15);
mods.thaumcraft.Arcane.addShaped("ASPECTS", <Avaritia:Resource:6> * 1, "ignis 120000, aqua 120000, terra 120000, aer 120000, perditio 120000, ordo 120000", [[<ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>], [<ore:blockCosmicNeutronium>, <Avaritia:Resource:5>, <ore:blockCosmicNeutronium>], [<ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>]]);

val nuclearCan = <IC2:itemTinCanFilled>.withTag({display: {Name: "§4Are you serious?"}, WITCCurse: {Curse: {RemainingCapacity: 0, BrewName: "Triggered Brew of Harming & Poison ", Color: -1422423512, Splash: 1 as byte, Items: [{Count: 1 as byte, id: 399 as short, Damage: 0 as short}, {Count: 1 as byte, id: 349 as short, Damage: 2 as short}, {Count: 1 as byte, id: 348 as short, Damage: 0 as short}, {Count: 1 as byte, id: 369 as short, Damage: 0 as short}, {Count: 1 as byte, id: 376 as short, Damage: 0 as short}, {Count: 1 as byte, id: 382 as short, Damage: 0 as short}, {Count: 1 as byte, id: 348 as short, Damage: 0 as short}, {Count: 1 as byte, id: 369 as short, Damage: 0 as short}, {Count: 1 as byte, id: 331 as short, Damage: 0 as short}, {Count: 1 as byte, id: 49 as short, Damage: 0 as short}, {Count: 1 as byte, id: 375 as short, Damage: 0 as short}, {Count: 1 as byte, id: 397 as short, Damage: 2 as short}], UsedCapacity: 4, BrewDrinkSpeed: 32, RitualTriggered: 1 as byte, BrewInfo: "T", Power: 1275, EffectCount: 2}, Count: 1}});
mods.ic2.Canner.addBottleRecipe(nuclearCan, <IC2:itemTinCan>, <ReactorCraft:reactorcraft_item_waste:*>);

mods.avaritia.ExtremeCrafting.addShaped (<Avaritia:Neutron_Collector>,
 [[<Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, nuclearCan, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <ReactorCraft:reactorcraft_item_waste:*>, <ChromatiCraft:chromaticraft_item_crafting:23>, <ChromatiCraft:chromaticraft_item_crafting:23>, <ChromatiCraft:chromaticraft_item_crafting:23>, <ReactorCraft:reactorcraft_item_waste:*>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <ReactorCraft:reactorcraft_item_waste:*>, <ChromatiCraft:chromaticraft_item_crafting:23>, <Avaritia:big_pearl>, <ChromatiCraft:chromaticraft_item_crafting:23>, <ReactorCraft:reactorcraft_item_waste:*>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <ReactorCraft:reactorcraft_item_waste:*>, <ChromatiCraft:chromaticraft_item_crafting:23>, <ChromatiCraft:chromaticraft_item_crafting:23>, <ChromatiCraft:chromaticraft_item_crafting:23>, <ReactorCraft:reactorcraft_item_waste:*>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>]]);

mods.avaritia.ExtremeCrafting.remove(<Avaritia:Infinity_Sword>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Infinity_Shoes>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Infinity_Pants>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Infinity_Chest>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Infinity_Helm>);

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:MisriruArmorTrueH>, [<Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>, <Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>], "terminus 256", <manametalmod:SuperMisriruArmorTrueH>, 15);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:MisriruArmorTrueC>, [<Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>, <Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>], "terminus 256", <manametalmod:SuperMisriruArmorTrueC>, 15);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:MisriruArmorTrueL>, [<Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>, <Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>], "terminus 256", <manametalmod:SuperMisriruArmorTrueL>, 15);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:MisriruArmorTrueB>, [<Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>, <Avaritia:Resource_Block:1>, <ChromatiCraft:chromaticraft_item_crafting:21>, <ChromatiCraft:chromaticraft_item_crafting:21>], "terminus 256", <manametalmod:SuperMisriruArmorTrueB>, 15);

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueH>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Helm>, 24);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueC>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Chest>, 24);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueL>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Pants>, 24);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueB>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Shoes>, 24);

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <ExtraUtilities:lawSword>, [<Avaritia:Resource_Block:1>, <manametalmod:Dungeon_Sword4>, <manametalmod:Dungeon_Bow4>, <manametalmod:Dungeon_Dagger4>, <manametalmod:Dungeon_Hammer4>, <manametalmod:Dungeon_MagicBook4>, <manametalmod:Dungeon_WandMagic4>, <Avaritia:Resource_Block:1>, <manametalmod:Dungeon_Sickle4>, <manametalmod:Dungeon_BlowingArrows4>, <manametalmod:Dungeon_Fan4>, <manametalmod:Dungeon_Javelin4>, <manametalmod:Dungeon_Shocrtcane4>, <manametalmod:Dungeon_Katana4>], "terminus 1048576", <Avaritia:Infinity_Sword>, 24);

//slashblade gating-------------------------------------------------------

furnace.remove(<flammpfeil.slashblade:proudsoul:2>);
mods.thermalexpansion.Furnace.removeRecipe(<flammpfeil.slashblade:proudsoul:1>);
mods.immersiveengineering.BlastFurnace.addRecipe(<flammpfeil.slashblade:proudsoul:2>.withTag({RepairCost: -50 as int}), <flammpfeil.slashblade:proudsoul:1>, 2400, null);

//------------------------------------------------------------------------
//other
//恩我覺得沒必要給黑鑽石礦加denseore的礦典，因為黑鑽石在某些用途上無法使用鑽石替代，也就是說它們並非完全等價
<ore:denseoreDiamond>.remove(<manametalmod:oreBlackDiamond>);
<ore:gemDiamond>.remove(<manametalmod:gemBlackDiamond>);

mods.immersiveengineering.ArcFurnace.addRecipe(<manametalmod:ingotBrass> * 2, <ore:ingotZinc>, null, 200, 512, [<ore:ingotCopper>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<manametalmod:ingotRoseGold> * 2, <ore:ingotCopper>, null, 200, 512, [<ore:ingotGold>], "Alloying");
mods.thermalexpansion.Smelter.addRecipe(2400, <manametalmod:dustZinc>, <ImmersiveEngineering:metal:10>, <manametalmod:ingotBrass> * 2);
mods.thermalexpansion.Smelter.addRecipe(2400, <ImmersiveEngineering:metal:10>, <ImmersiveEngineering:metal:9>, <manametalmod:ingotRoseGold> * 2);
mods.thermalexpansion.Smelter.addRecipe(2400, <manametalmod:ingotZinc>, <ImmersiveEngineering:metal>, <manametalmod:ingotBrass> * 2);
mods.thermalexpansion.Smelter.addRecipe(2400, <ImmersiveEngineering:metal>, <minecraft:gold_ingot>, <manametalmod:ingotRoseGold> * 2);

//Vampirism related
mods.bloodmagic.Altar.addRecipe(<witchery:ingredient:163>, <Botania:vial>, 3, 9000);
mods.bloodmagic.Alchemy.addRecipe(<witchery:ingredient:163> * 2, [<Botania:vial>, <Botania:vial>, <AWWayofTime:bloodMagicBaseAlchemyItems:6>], 4, 300);

//金屬蘋果還原配方
mods.tconstruct.Smeltery.addMelting(<manametalmod:PalladiumApple>, <liquid:fluidpalladium> * 144, 200, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:PalladiumApple:1>, <liquid:fluidpalladium> * 1296, 200, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:SilverApples>, <liquid:silver.molten> * 144, 200, <ImmersiveEngineering:storage:3>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:SilverApples:1>, <liquid:silver.molten> * 1296, 200, <ImmersiveEngineering:storage:3>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:PlatinumApple>, <liquid:platinum.molten> * 144, 200, <ThermalFoundation:Storage:5>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:PlatinumApple:1>, <liquid:platinum.molten> * 1296, 200, <ThermalFoundation:Storage:5>);

//Miscellaneous
<ore:dustTinySilver>.add(<witchery:ingredient:157>);

//Will transformation
mods.botania.ManaInfusion.addAlchemy(<Botania:ancientWill:1>, <Botania:ancientWill>, 500000);
mods.botania.ManaInfusion.addAlchemy(<Botania:ancientWill:2>, <Botania:ancientWill:1>, 500000);
mods.botania.ManaInfusion.addAlchemy(<Botania:ancientWill:3>, <Botania:ancientWill:2>, 500000);
mods.botania.ManaInfusion.addAlchemy(<Botania:ancientWill:4>, <Botania:ancientWill:3>, 500000);
mods.botania.ManaInfusion.addAlchemy(<Botania:ancientWill:5>, <Botania:ancientWill:4>, 500000);
mods.botania.ManaInfusion.addAlchemy(<Botania:ancientWill>, <Botania:ancientWill:5>, 500000);

//20x M3 boss loot capsule
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:ItemDropTestBase>, [<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 20 as short, id: 194 as short}]}), <manametalmod:pearbreak:6>, <manametalmod:pearbreak:6>, <manametalmod:pearbreak:6>, <manametalmod:ItemSeasonGem:3>, <manametalmod:pearbreak:6>, <manametalmod:pearbreak:6>, <manametalmod:pearbreak:6>], "enchant 60, treasure 80", <manametalmod:ItemDropTestGold> * 2, 10);

//hammer transformation
mods.thaumcraft.Crucible.addRecipe("ASPECTS", <manametalmod:SilversmithHammer>, <manametalmod:GoldenCraftsmanHammer>, "perditio 8, permutatio 8, dream 2");