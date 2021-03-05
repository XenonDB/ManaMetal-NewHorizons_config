import minetweaker.item.IItemStack;

//Draconic Evoluation
furnace.remove(<DraconicEvolution:draconiumIngot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<DraconicEvolution:draconiumIngot>);
mods.thermalexpansion.Furnace.removeRecipe(<DraconicEvolution:draconiumBlend>);
mods.thermalexpansion.Furnace.removeRecipe(<manametalmod:ItemMetalCrystals:51>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:20>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalExpansion:material:515>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:512>, <ore:oreDraconium>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:dustDraconium> * 2);

mods.mfr.MiningLaser.addOre(<DraconicEvolution:draconiumOre>.weight(3));
mods.mfr.MiningLaser.addPreferredOre(2, <DraconicEvolution:draconiumOre>);

furnace.addRecipe(<DraconicEvolution:draconiumDust> * 8, <manametalmod:ItemMetalCrystals:51>);

//HOLY SHIT THE FUCKING INVISIBLE ANNOTATION
//mods.rotarycraft.Friction.addRecipe(<DraconicEvolution:draconiumDust>,<DraconicEvolution:draconiumIngot>,1990,50);

mods.immersiveengineering.ArcFurnace.addRecipe(<DraconicEvolution:draconiumIngot> * 4, <ore:ingotTrueAncientThulium>, null, 600, 1024, [<RotaryCraft:rotarycraft_item_powders:4> * 2, <DraconicEvolution:draconiumDust> * 4], "Alloying");

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
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:Ore> * 2, <manametalmod:orePoorCopper> * 3, <minecraft:diamond_block>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:Ore:1> * 2, <manametalmod:orePoorTin> * 3, <minecraft:diamond_block>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<ThermalFoundation:Ore:3> * 2, <manametalmod:orePoorLead> * 3, <minecraft:diamond_block>, 512);
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
//endgame

mods.avaritia.Compressor.remove(<universalsingularities:universal.vanilla.singularity:2>);
mods.avaritia.Compressor.add(<universalsingularities:universal.vanilla.singularity:2>, 66000, <ore:blockDiamond>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.draconicEvolution.singularity>);
mods.avaritia.Compressor.add(<universalsingularities:universal.draconicEvolution.singularity>, 1000, <DraconicEvolution:draconium:2>);
mods.avaritia.Compressor.remove(<universalsingularities:universal.general.singularity:11>);
mods.avaritia.Compressor.add(<universalsingularities:universal.general.singularity:11>, 1000, <ore:ingotUltimateTerrasteel>);

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <ElectriCraft:electricraft_item_rfbattery>.withTag({nrg: 60000000000000 as long}), [<universalsingularities:universal.draconicEvolution.singularity>, <ChromatiCraft:chromaticraft_item_bucket:3>, <manametalmod:shard_Creating>, <ChromatiCraft:chromaticraft_item_bucket:3>, <rftools:machineFrame>, <ChromatiCraft:chromaticraft_item_bucket:3>, <TaintedMagic:ItemMaterial:5>, <ChromatiCraft:chromaticraft_item_bucket:3>], "alienis 128, universe 256, space 64", <rftools:dimensionBuilderBlock>, 15);

mods.thaumcraft.Arcane.addShaped("ASPECTS", <DraconicEvolution:draconicCore>, "ignis 20, aqua 10, terra 5, aer 20, perditio 20, ordo 20", [[<ore:ingotManaSpiritSteel>, <ore:ingotDraconium>, <ore:ingotManaSpiritSteel>], [<ore:ingotDraconium>, <ore:ingotManaDragonCrystal>, <ore:ingotDraconium>], [<ore:ingotManaSpiritSteel>, <ore:ingotDraconium>, <ore:ingotManaSpiritSteel>]]);
mods.thaumcraft.Arcane.addShaped("ASPECTS", <DraconicEvolution:wyvernCore>, "ignis 100, aqua 50, terra 25, aer 100, perditio 100, ordo 100", [[<ore:gemFlyGem>, <DraconicEvolution:draconicCore>, <ore:gemFlyGem>], [<DraconicEvolution:draconicCore>, <ore:ingotManaEnderCrystal>, <DraconicEvolution:draconicCore>], [<ore:gemFlyGem>, <DraconicEvolution:draconicCore>, <ore:gemFlyGem>]]);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:chaosFragment:1>, [<DraconicEvolution:wyvernCore>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <manametalmod:ingotAcanoy>, <DraconicEvolution:wyvernCore>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <manametalmod:ingotYadras>], "perditio 16 ,fabrico 16 ,potentia 32, auram 32, alienis 32, dragon 8", <DraconicEvolution:awakenedCore>, 7);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <DraconicEvolution:chaosShard>, [<manametalmod:DarkScrap>, <DraconicEvolution:awakenedCore>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <ChromatiCraft:chromaticraft_item_modinteract:5>, <ChromatiCraft:chromaticraft_item_modinteract:5>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:awakenedCore>], "perditio 128 ,ordo 256 , auram 64, dackmagic 64", <DraconicEvolution:chaoticCore>, 9);

mods.avaritia.ExtremeCrafting.remove(<Avaritia:Cosmic_Meatballs>);
mods.avaritia.ExtremeCrafting.addShapeless(<Avaritia:Cosmic_Meatballs> * 5, [<Avaritia:Resource:2>, <minecraft:beef>, <minecraft:chicken>, <minecraft:porkchop>, <minecraft:fish>, <arsmagica2:itemOre:8>, <MineFactoryReloaded:meat.ingot.raw>, <minecraft:spider_eye>, <abyssalcraft:antibeef>, <abyssalcraft:antichicken>, <abyssalcraft:antipork>, <abyssalcraft:antiflesh>, <abyssalcraft:antispidereye>, <abyssalcraft:anticorflesh>, <abyssalcraft:anticorbone>, <manametalmod:ItemFoodHumans>, <manametalmod:ItemFoodHumans:1>, <manametalmod:ItemFoodHumans:2>, <manametalmod:ItemFoodHumans:3>, <manametalmod:ItemFoodHumans:4>, <manametalmod:ItemFoodHumans:5>, <manametalmod:ItemFoodHumans:6>, <manametalmod:ItemFoodHumans:7>, <manametalmod:ItemFoodHumans:8>, <manametalmod:ItemFoodHumans:9>, <Thaumcraft:TripleMeatTreat>, <Thaumcraft:ItemZombieBrain>, <manametalmod:Cheese:5>, <witchery:ingredient:23>, <witchery:ingredient:50>, <witchery:ingredient:74>, <witchery:ingredient:89>, <witchery:ingredient:90>, <witchery:louse>, <witchery:bloodedwool>, <witchery:ingredient:158>, <TConstruct:strangeFood:2>]);


mods.avaritia.ExtremeCrafting.remove(<Avaritia:Resource:5>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Resource:6>);
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Neutron_Collector>);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <eternalsingularity:eternal_singularity>, [<ChromatiCraft:chromaticraft_item_placer:42>, <Avaritia:Ultimate_Stew>, <Avaritia:Cosmic_Meatballs>, <DraconicEvolution:chaoticCore>, <ChromatiCraft:chromaticraft_item_artefact>, <witchery:leonardsurn:3>, <witchery:deathshand>, <witchery:babashat>, <Botania:recordGaia2>, <abyssalcraft:staff>, <ThaumicTinkerer:skyPearl>, <arsmagica2:essence:10>, <EMT:SuperchargedMjolnir:*>, <AWWayofTime:blockCrystal>, <ThaumicHorizons:voidPutty>, <manametalmod:MagicItemMedalFXS:371>, <manametalmod:MagicItemMedalFXS:409>, <RandomThings:bloodStone>, <manametalmod:ItemFeatherSnake>, <manametalmod:ItemProduceTreasure:*>, <manametalmod:ItemProduceTreasure:*>, <manametalmod:fish_s1>], "fabrico 1024, terminus 8192", <Avaritia:Resource:5> * 2, 15);
mods.thaumcraft.Arcane.addShaped("ASPECTS", <Avaritia:Resource:6> * 1, "ignis 120000, aqua 120000, terra 120000, aer 120000, perditio 120000, ordo 120000", [[<ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>], [<ore:blockCosmicNeutronium>, <Avaritia:Resource:5>, <ore:blockCosmicNeutronium>], [<ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>, <ore:blockCosmicNeutronium>]]);
mods.avaritia.ExtremeCrafting.addShaped (<Avaritia:Neutron_Collector>,
 [[<Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
  [<Avaritia:Resource:1>, <RotaryCraft:rotarycraft_block_deco:4>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <ReactorCraft:reactorcraft_item_waste:*>, <RotaryCraft:rotarycraft_block_deco:4>, <Avaritia:Resource:1>],
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

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueH>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Helm>, 25);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueC>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Chest>, 25);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueL>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Pants>, 25);
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <manametalmod:SuperMisriruArmorTrueB>, [<Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>, <Avaritia:Resource_Block>], "terminus 1024", <Avaritia:Infinity_Shoes>, 25);

mods.thaumcraft.Infusion.addRecipe("ASPECTS", <ExtraUtilities:lawSword>, [<Avaritia:Resource_Block:1>, <manametalmod:Dungeon_Sword4>, <manametalmod:Dungeon_Bow4>, <manametalmod:Dungeon_Dagger4>, <Avaritia:Resource_Block:1>, <manametalmod:Dungeon_Hammer4>, <manametalmod:Dungeon_MagicBook4>, <manametalmod:Dungeon_WandMagic4>, <Avaritia:Resource_Block:1>, <manametalmod:Dungeon_Sickle4>, <manametalmod:Dungeon_BlowingArrows4>, <manametalmod:Dungeon_Fan4>], "terminus 1048576", <Avaritia:Infinity_Sword>, 33);

//------------------------------------------------------------------------
//other
//恩我覺得沒必要給黑鑽石礦加denseore的礦典，因為黑鑽石在某些用途上無法使用鑽石替代，也就是說它們並非完全等價
<ore:denseoreDiamond>.remove(<manametalmod:oreBlackDiamond>);
<ore:gemDiamond>.remove(<manametalmod:gemBlackDiamond>);

mods.immersiveengineering.ArcFurnace.addRecipe(<manametalmod:ingotBrass> * 4, <ore:dustZinc>, null, 200, 512, [<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>], "Alloying");
mods.immersiveengineering.ArcFurnace.addRecipe(<manametalmod:ingotRoseGold> * 4, <ore:dustCopper>, null, 200, 512, [<ore:dustGold>, <ore:dustGold>, <ore:dustGold>], "Alloying");
mods.thermalexpansion.Smelter.addRecipe(2400, <manametalmod:dustZinc>, <ImmersiveEngineering:metal:10> * 3, <manametalmod:ingotBrass> * 4);
mods.thermalexpansion.Smelter.addRecipe(2400, <ImmersiveEngineering:metal:10>, <ImmersiveEngineering:metal:9> * 3, <manametalmod:ingotRoseGold> * 4);

//Vampirism related
mods.bloodmagic.Altar.addRecipe(<witchery:ingredient:163>, <Botania:vial>, 3, 9000);
mods.bloodmagic.Alchemy.addRecipe(<witchery:ingredient:163> * 2, [<Botania:vial>, <Botania:vial>, <AWWayofTime:bloodMagicBaseAlchemyItems:6>], 4, 300);

//金屬蘋果還原配方
mods.tconstruct.Smeltery.addMelting(<manametalmod:PalladiumApple>, <liquid:palladium> * 144, 200, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:PalladiumApple:1>, <liquid:palladium> * 1296, 200, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:SilverApples>, <liquid:silver.molten> * 144, 200, <ImmersiveEngineering:storage:3>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:SilverApples:1>, <liquid:silver.molten> * 1296, 200, <ImmersiveEngineering:storage:3>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:PlatinumApple>, <liquid:platinum.molten> * 144, 200, <ThermalFoundation:Storage:5>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:PlatinumApple:1>, <liquid:platinum.molten> * 1296, 200, <ThermalFoundation:Storage:5>);

//Miscellaneous
<ore:dustTinySilver>.add(<witchery:ingredient:157>);
