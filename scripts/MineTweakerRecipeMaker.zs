// File generated by MineTweakerRecipeMaker
//                     READ THIS HEADER BEFORE EDITING ANYTHING
// ================================================================================
//     This file is read and changed by the mod.
//     If you remove/edit any of the markers, IT WILL STOP WORKING!
//     If you want to make manual edits, make a backup of this file!
//     Markers look like this: "//#MARKER something"
//     They indicate where calls should be placed, so that MineTweaker does them in the correct order.
//     Removes come first, then stuff is added.
// ================================================================================
//

// ================================================================================
//#MARKER REMOVE
recipes.remove(<IC2:itemDiamondBlockCuttingBlade>);
recipes.remove(<DraconicEvolution:draconicSword>);
recipes.remove(<DraconicEvolution:draconium>);
recipes.remove(<MineFactoryReloaded:machine.2:1>);
recipes.remove(<MineFactoryReloaded:machine.2>);
recipes.remove(<manametalmod:nuggetPigIron>);
recipes.remove(<manametalmod:ingotPigIron>);
recipes.remove(<manametalmod:blockPigIron>);
recipes.remove(<manametalmod:MagicItemMedalFXS:371>);
recipes.remove(<IC2:itemPurifiedCrushedOre:4>);
recipes.remove(<DraconicEvolution:wyvernBoots>);
recipes.remove(<DraconicEvolution:wyvernLeggs>);
recipes.remove(<DraconicEvolution:wyvernChest>);
recipes.remove(<DraconicEvolution:wyvernHelm>);
recipes.remove(<DraconicEvolution:draconicAxe>);
recipes.remove(<DraconicEvolution:wyvernSword>);
recipes.remove(<DraconicEvolution:wyvernShovel>);
recipes.remove(<DraconicEvolution:wyvernPickaxe>);
recipes.remove(<DraconicEvolution:wyvernBow>);
recipes.remove(<MineFactoryReloaded:machine.0:10> * 4);
recipes.remove(<ThermalExpansion:capacitor:5>);
recipes.remove(<ThermalExpansion:capacitor:4>);
recipes.remove(<ThermalExpansion:capacitor:3>);
recipes.remove(<ThermalExpansion:capacitor:2>);
recipes.remove(<ThermalExpansion:capacitor:1>);
recipes.remove(<manametalmod:BlockManaPoolM3_1:11>);
recipes.remove(<manametalmod:BlockManaPoolM3_1:13>);
recipes.remove(<manametalmod:BlockManaPoolM3_1:12>);
recipes.remove(<manametalmod:BlockManaPoolM3_1:10>);
recipes.remove(<manametalmod:goldNetherStar>);
recipes.remove(<manametalmod:PlatinumNetherStar>);
recipes.remove(<customnpcs:npcScripter>);
recipes.remove(<customnpcs:npcMobCloner>);
recipes.remove(<customnpcs:npcMounter>);
recipes.remove(<customnpcs:npcTeleporter>);
recipes.remove(<customnpcs:npcMovingPath>);
recipes.remove(<customnpcs:npcWand>);
recipes.remove(<Mekanism:CardboardBox>);
recipes.remove(<rftools:dimensionBuilderBlock>);
recipes.remove(<IC2:itemCable:9>);
recipes.remove(<IC2:blockMachine2>);
recipes.remove(<Mekanism:TeleportationCore>);
recipes.remove(<Mekanism:MachineBlock:4>);
recipes.remove(<Mekanism:AtomicDisassembler>);
recipes.remove(<DraconicEvolution:chaoticCore>);
recipes.remove(<DraconicEvolution:awakenedCore>);
recipes.remove(<DraconicEvolution:wyvernCore>);
recipes.remove(<DraconicEvolution:draconicCore>);
recipes.remove(<manametalmod:ingotNetherite>);
recipes.remove(<manametalmod:copperGear>);
recipes.remove(<manametalmod:ironGear>);
recipes.remove(<manametalmod:brassGear>);
recipes.remove(<manametalmod:steelGear>);
recipes.remove(<manametalmod:ManaSGear>);
recipes.remove(<manametalmod:bronzeDoublePlate>);
recipes.remove(<manametalmod:ironDoublePlate>);
recipes.remove(<manametalmod:steelDoublePlate>);
recipes.remove(<Thaumcraft:ItemNugget:2> * 9);
recipes.remove(<IC2:itemPartIridium>);
recipes.remove(<abyssalcraft:shadowgem>);
recipes.remove(<DraconicEvolution:draconiumIngot>);

// ================================================================================
//#MARKER REMOVE SHAPELESS

// ================================================================================
//#MARKER REMOVE SHAPED
recipes.removeShaped(<abyssalcraft:ironp> * 2, [[<ore:ingotIron>], [<ore:ingotIron>]]);

// ================================================================================
//#MARKER ADD

// ================================================================================
//#MARKER ADD SHAPELESS
recipes.addShapeless(<manametalmod:ItemMedical:7>, [<minecraft:glass_bottle>, <manametalmod:RedMushroom_crop>, <TConstruct:strangeFood:1>, <TConstruct:strangeFood:1>, <TConstruct:strangeFood:1>, <TConstruct:strangeFood:1>, <minecraft:golden_apple>, <minecraft:golden_apple>]);
recipes.addShapeless(<TConstruct:materials:35> * 9, [<TConstruct:materials:34>]);
recipes.addShapeless(<manametalmod:nuggetPigIron> * 9, [<manametalmod:ingotPigIron>]);
recipes.addShapeless(<manametalmod:ingotPigIron> * 9, [<manametalmod:blockPigIron>]);
recipes.addShapeless(<mo:tritanium_ingot> * 9, [<ore:blockTritanium>]);
recipes.addShapeless(<manametalmod:Poachedeggs>, [<abyssalcraft:friedegg>]);
recipes.addShapeless(<abyssalcraft:friedegg>, [<manametalmod:Poachedeggs>]);
recipes.addShapeless(<ThermalExpansion:capacitor:1>.withTag({RepairCost: 48763, Energy: 32000}), [<minecraft:poisonous_potato>, <ore:dustRedstone>, <ore:nuggetLead>]);
recipes.addShapeless(<ThermalExpansion:capacitor:1>.withTag({RepairCost: 48763, Energy: 32000}), [<ore:cropPotato>, <ore:dustRedstone>, <ore:nuggetLead>]);
recipes.addShapeless(<manametalmod:ingotNetherite> * 9, [<ore:blockNetherite>]);
recipes.addShapeless(<manametalmod:ingotNetherite>, [<ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:nuggetNetherite>, <ore:nuggetNetherite>]);
recipes.addShapeless(<minecraft:gold_ore>, [<ore:oreGold>]);
recipes.addShapeless(<ThermalFoundation:material:12>, [<manametalmod:ironGear>]);
recipes.addShapeless(<manametalmod:ironGear>, [<ThermalFoundation:material:12>]);
recipes.addShapeless(<ThermalFoundation:material:128>, [<manametalmod:copperGear>]);
recipes.addShapeless(<manametalmod:copperGear>, [<ThermalFoundation:material:128>]);
recipes.addShapeless(<manametalmod:ironDoublePlate>, [<ore:plateIron>, <ore:plateIron>]);
recipes.addShapeless(<manametalmod:bronzeDoublePlate>, [<ore:plateBronze>, <ore:plateBronze>]);
recipes.addShapeless(<manametalmod:steelDoublePlate>, [<ore:plateSteel>, <ore:plateSteel>]);
recipes.addShapeless(<Thaumcraft:ItemNugget:2> * 9, [<ore:ingotTin>]);
recipes.addShapeless(<manametalmod:ingotMana>, [<RotaryCraft:rotarycraft_item_modingots:82>]);
recipes.addShapeless(<minecraft:iron_ore>, [<ImmersiveEngineering:tool>, <ore:orePoorIron>, <ore:orePoorIron>, <ore:orePoorIron>]);
recipes.addShapeless(<ThermalFoundation:Ore:3>, [<ImmersiveEngineering:tool>, <ore:orePoorLead>, <ore:orePoorLead>, <ore:orePoorLead>]);
recipes.addShapeless(<ThermalFoundation:Ore:1>, [<ImmersiveEngineering:tool>, <ore:orePoorTin>, <ore:orePoorTin>, <ore:orePoorTin>]);
recipes.addShapeless(<ThermalFoundation:Ore>, [<ImmersiveEngineering:tool>, <ore:orePoorCopper>, <ore:orePoorCopper>, <ore:orePoorCopper>]);
recipes.addShapeless(<abyssalcraft:shadowgem>, [<abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>, <abyssalcraft:shadowshard>]);
recipes.addShapeless(<IC2:blockOreUran>, [<ore:orePitchblende>]);

// ================================================================================
//#MARKER ADD SHAPED
recipes.addShaped(<IC2:itemDiamondBlockCuttingBlade>, [[<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>], [<ore:dustDiamond>, <IC2:itemAdvIronBlockCuttingBlade>, <ore:dustDiamond>], [<ore:dustDiamond>, <ore:dustDiamond>, <ore:dustDiamond>]]);
recipes.addShaped(<EnderIO:blockBuffer:3>, [[null,null,null],[<manametalmod:ingotCopyA> ,<EnderIO:blockBuffer:2>, <ore:ingotInfinity>],[null,null,null]]);
recipes.addShaped(<abyssalcraft:ironp> * 4, [[<ore:plateIron>, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>]]);
recipes.addShaped(<DraconicEvolution:draconicSword>, [[<DraconicEvolution:awakenedCore>, <manametalmod:ItemLapudaArtifacts:4>, <DraconicEvolution:awakenedCore>], [<ore:ingotDraconiumAwakened>, <DraconicEvolution:wyvernSword>, <ore:ingotDraconiumAwakened>], [null, <DraconicEvolution:draconiumEnergyCore:1>, null]]);
recipes.addShaped(<customnpcs:npcHolySpell>.withTag({display: {Lore: ["\u00A76\u53EF\u900F\u904E\u4EFB\u52D9\u56DE\u5FA9\u70BA\u5047\u4EBA\u9748\u9B42\u77F3"], Name: "\u00A7a\u5047\u4EBA\u9748\u9B42"}}), [[null, <minecraft:hay_block>, null], [<minecraft:hay_block>, <ore:blockWool>, <minecraft:hay_block>], [null, <ore:logWood>, null]]);
recipes.addShaped(<DraconicEvolution:draconiumIngot>, [[<ore:nuggetDraconium>, <ore:nuggetDraconium>, <ore:nuggetDraconium>], [<ore:nuggetDraconium>, <ore:nuggetDraconium>, <ore:nuggetDraconium>], [<ore:nuggetDraconium>, <ore:nuggetDraconium>, <ore:nuggetDraconium>]]);
recipes.addShaped(<MineFactoryReloaded:machine.2:1>, [[<DraconicEvolution:draconium:2>, <MineFactoryReloaded:pinkslime:1>, <DraconicEvolution:draconium:2>], [<ore:blockGlassHardened>, <EnderIO:blockElectricLight:2>, <ore:blockGlassHardened>], [<EnderIO:itemBasicCapacitor:1>, <ore:gemDiamond>, <EnderIO:itemBasicCapacitor:1>]]);
recipes.addShaped(<MineFactoryReloaded:machine.2>, [[<ore:sheetPlastic>, <EnderIO:blockElectricLight:2>, <ore:sheetPlastic>], [<EnderIO:itemBasicCapacitor:2>, <EnderIO:blockElectricLight:2>, <EnderIO:itemBasicCapacitor:2>], [<DraconicEvolution:draconium:2>, <ore:blockGlassHardened>, <DraconicEvolution:draconium:2>]]);
recipes.addShaped(<TConstruct:materials:34>, [[<TConstruct:materials:35>, <TConstruct:materials:35>, <TConstruct:materials:35>], [<TConstruct:materials:35>, <TConstruct:materials:35>, <TConstruct:materials:35>], [<TConstruct:materials:35>, <TConstruct:materials:35>, <TConstruct:materials:35>]]);
recipes.addShaped(<manametalmod:ingotPigIron>, [[<manametalmod:nuggetPigIron>, <manametalmod:nuggetPigIron>, <manametalmod:nuggetPigIron>], [<manametalmod:nuggetPigIron>, <manametalmod:nuggetPigIron>, <manametalmod:nuggetPigIron>], [<manametalmod:nuggetPigIron>, <manametalmod:nuggetPigIron>, <manametalmod:nuggetPigIron>]]);
recipes.addShaped(<manametalmod:blockPigIron>, [[<manametalmod:ingotPigIron>, <manametalmod:ingotPigIron>, <manametalmod:ingotPigIron>], [<manametalmod:ingotPigIron>, <manametalmod:ingotPigIron>, <manametalmod:ingotPigIron>], [<manametalmod:ingotPigIron>, <manametalmod:ingotPigIron>, <manametalmod:ingotPigIron>]]);
recipes.addShaped(<ae2wct:infinityBoosterCard>, [[<ore:ingotUniverseEnergy>, <ChromatiCraft:chromaticraft_item_rift>, <ore:ingotUniverseEnergy>], [<manametalmod:superEnderPearl>, <appliedenergistics2:item.ItemMultiMaterial:42>, <manametalmod:superEnderPearl>], [<ore:ingotUniverseEnergy>, <ChromatiCraft:chromaticraft_item_rift>, <ore:ingotUniverseEnergy>]]);
recipes.addShaped(<IC2:itemPurifiedCrushedOre:4> * 2, [[<ore:ingotUranium>], [<ore:ingotUranium>]]);
recipes.addShaped(<MineFactoryReloaded:machine.0:10> * 4, [[<ore:sheetPlastic>, <minecraft:bucket>, <ore:sheetPlastic>], [<ore:ingotBrick>, <ore:itemMachineChassi>, <ore:ingotBrick>], [<ore:ingotBrick>, <minecraft:cauldron>, <ore:ingotBrick>]]);
recipes.addShaped(<ThermalExpansion:capacitor:5>.withTag({RepairCost: 48763, Energy: 0}), [[null, <ore:dustRedstone>, null], [<ore:ingotEnderium>, <ThermalExpansion:capacitor:4>, <ore:ingotEnderium>], [<ore:dustRedstone>, <ore:dustPyrotheum>, <ore:dustRedstone>]]);
recipes.addShaped(<ThermalExpansion:capacitor:4>.withTag({RepairCost: 48763, Energy: 0}), [[null, <ore:dustRedstone>, null], [<ore:ingotElectrum>, <ThermalExpansion:capacitor:3>, <ore:ingotElectrum>], [<ore:dustRedstone>, <ore:gemDiamond>, <ore:dustRedstone>]]);
recipes.addShaped(<ThermalExpansion:capacitor:3>.withTag({RepairCost: 48763, Energy: 0}), [[null, <ore:dustRedstone>, null], [<ore:ingotInvar>, <ThermalExpansion:capacitor:2>, <ore:ingotInvar>], [<ore:dustRedstone>, <ore:ingotTin>, <ore:dustRedstone>]]);
recipes.addShaped(<ThermalExpansion:capacitor:2>.withTag({RepairCost: 48763, Energy: 0}), [[null, <ore:dustRedstone>, null], [<ore:ingotLead>, <ore:ingotCopper>, <ore:ingotLead>], [<ore:dustRedstone>, <ore:dustSulfur>, <ore:dustRedstone>]]);
recipes.addShaped(<appliedenergistics2:item.ItemCreativeStorageCell>, [[<Avaritia:Infinity_Sword>], [<appliedenergistics2:item.ItemMultiMaterial:39>], [<EnderIO:blockBuffer:3>]]);
recipes.addShaped(<manametalmod:goldNetherStar>, [[<ore:ingotMana>, <ore:blockGold>, <ore:ingotMana>], [<ore:itemNetherStar>, <ore:ingotMana>, <ore:itemNetherStar>], [<ore:ingotMana>, <ore:blockGold>, <ore:ingotMana>]]);
recipes.addShaped(<manametalmod:PlatinumNetherStar>, [[<ore:ingotMana>, <ore:blockPlatinum>, <manametalmod:ingotMana>], [<manametalmod:goldNetherStar>, <ore:ingotMana>, <manametalmod:goldNetherStar>], [<ore:ingotMana>, <ore:blockPlatinum>, <ore:ingotMana>]]);
recipes.addShaped(<Mekanism:CardboardBox>, [[null, <ore:dustWood>, null], [<ore:dustWood>, null, <ore:dustWood>], [null, <ore:dustWood>, null]]);
recipes.addShaped(<IC2:itemCable:9> * 4, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<IC2:itemDust2:2>, <ore:dustSilver>, <IC2:itemDust2:2>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
recipes.addShaped(<IC2:blockMachine2>, [[<ore:circuitAdvanced>, <IC2:itemFreq>, <ore:circuitAdvanced>], [<IC2:itemCable:9>, <IC2:blockMachine:12>, <IC2:itemCable:9>], [<ore:circuitAdvanced>, <ThermalExpansion:Plate:6>, <ore:circuitAdvanced>]]);
recipes.addShaped(<IC2:blockMachine2>, [[<ore:circuitAdvanced>, <IC2:itemFreq>, <ore:circuitAdvanced>], [<IC2:itemCable:9>, <IC2:blockMachine:12>, <IC2:itemCable:9>], [<ore:circuitAdvanced>, <Mekanism:TeleportationCore>, <ore:circuitAdvanced>]]);
recipes.addShaped(<Mekanism:TeleportationCore>, [[<ore:gemLapis>, <ore:alloyUltimate>, <ore:gemLapis>], [<ore:ingotGold>, <ore:itemEnderCrystal>, <ore:ingotGold>], [<ore:gemLapis>, <ore:alloyUltimate>, <ore:gemLapis>]]);
recipes.addShaped(<Mekanism:MachineBlock:4>, [[<Mekanism:MachineBlock:15>, <Mekanism:Robit>, <Mekanism:MachineBlock:15>], [<Mekanism:PartTransmitter:3>, <IC2:blockMachine2:11>, <IC2:itemScannerAdv:*>]]);
recipes.addShaped(<Mekanism:AtomicDisassembler>, [[<ore:ingotTrueAncientThulium>, <ore:battery>, <ore:ingotTrueAncientThulium>], [<ore:ingotTrueAncientThulium>, <ore:alloyUltimate>, <ore:ingotTrueAncientThulium>], [null, <ore:ingotRefinedObsidian>, null]]);
recipes.addShaped(<DraconicEvolution:chaosFragment> * 9, [[<DraconicEvolution:chaosFragment:1>]]);
recipes.addShaped(<DraconicEvolution:chaosFragment:1> * 9, [[<DraconicEvolution:chaosFragment:2>]]);
recipes.addShaped(<DraconicEvolution:chaosFragment:2> * 9, [[<DraconicEvolution:chaosShard>]]);
recipes.addShaped(<mo:tritanium_block>, [[<ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>], [<ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>], [<ore:ingotTritanium>, <ore:ingotTritanium>, <ore:ingotTritanium>]]);
recipes.addShaped(<manametalmod:brassGear>, [[null, <ore:ingotBrass>, null], [<ore:ingotBrass>, <ore:ingotIron>, <ore:ingotBrass>], [null, <ore:ingotBrass>, null]]);
recipes.addShaped(<manametalmod:ManaSGear>, [[null, <ore:ingotManaS>, null], [<ore:ingotManaS>, <ore:ingotIron>, <ore:ingotManaS>], [null, <ore:ingotManaS>, null]]);
recipes.addShaped(<manametalmod:steelGear>, [[null, <ore:ingotSteel>, null], [<ore:ingotSteel>, <ore:ingotIron>, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);
recipes.addShaped(<IC2:itemPartIridium>, [[<ore:ingotIridium>, <IC2:itemPartAlloy>, <ore:ingotIridium>], [<IC2:itemPartAlloy>, <ore:gemDiamond>, <IC2:itemPartAlloy>], [<ore:ingotIridium>, <IC2:itemPartAlloy>, <ore:ingotIridium>]]);

