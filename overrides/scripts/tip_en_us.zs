//Unicode charactor conventor: https://r12a.github.io/app-conversion/

import minetweaker.item.IItemStack;

<manametalmod:ItemUniverseMessages>.addTooltip(format.darkRed("Please don't send swearing or discriminatory things, or use at your own risk"));
<manametalmod:ItemUniverseMessages>.addTooltip(format.darkRed("Currently only manametalmod official production team can send message"));
<questbook:ItemQuestBook>.addTooltip(format.gold("You can also press questing key(default: `) to open quest menu"));
<manametalmod:oreBlackDiamond>.addTooltip(format.red("Remove oredict 'denseore' for this ore. Thus can't be processed by sagmill for diamond ores"));
<minecraft:bedrock>.addTooltip(format.green("True bedrock LOL"));
<manametalmod:FakeBedrock>.addTooltip(format.red("Fake bedrock#"));
<manametalmod:ingotBedrock>.addTooltip(format.gold("Obtain by bedrock altar (Bedrock Maker), infusion"));
<manametalmod:ingotBedrock>.addTooltip(format.gold("or harvesting bedrock by using pickaxe with tooltip: "+ format.lightPurple("Strong enough to break Bedrock")));
<manametalmod:ItemPortalMineCaveCore>.addTooltip(format.gold("Buying in Mining Store"));
<manametalmod:ItemToolWandBlocks>.addTooltip(format.red("Don't use this tool to move Crystal Pylon!!"));
<DraconicEvolution:chaosShard>.addTooltip(format.gold("Obtain from Chaos Guardian or by-product of Draconic Reactor"));
<DraconicEvolution:chaosFragment:*>.addTooltip(format.gold("Obtain from Chaos Guardian or by-product of Draconic Reactor"));

<universalsingularities:universal.general.singularity:11>.addTooltip(format.gold("Recipe tweaked"));

<manametalmod:PlatinumNetherStar>.addTooltip(format.gold("Star Platinum!!"));

<manametalmod:grassman>.addTooltip(format.gold("Shift R-click to clear dummy"));

<ExtraUtilities:nodeUpgrade:2>.addTooltip(format.red("Disable infinity water generation"));

val lootTip1 = format.gold("Found in Undead Ancient Tomb or Ancient Thulium Runis");
<manametalmod:BlockMagicObject0>.addTooltip(lootTip1);
<manametalmod:BlockMagicRunes>.addTooltip(lootTip1);

<RotaryCraft:rotarycraft_item_machine:75>.addTooltip(format.gold("Can disassemble machine crafted by this table(with redstone signal)"));

<ChromatiCraft:chromaticraft_item_placer:23>.addTooltip(format.gold("Can duplicate specific liquid (give it sample in bucket form)"));

//Let BetterQuesting can handle various types of welding dusts
<ore:dustM3Welding>.add(<manametalmod:ItemCastingWeldingDusts:*>);

<manametalmod:BlockTileEntityClothesTailors>.addTooltip(format.gold("Score over 200 will be treated as 0!"));

<manametalmod:ingotCopyA>.addTooltip(format.gold("Obtained via Dragon Expedition or replicated via pylon casting"));

<ThaumicExploration:everfullUrn>.addTooltip(format.gold("It's best to not right click it with fluid container"));

<ChromatiCraft:chromaticraft_item_placer:3>.addTooltip(format.gold("Can't reprogram Boss and some mobs"));

<ChromatiCraft:chromaticraft_item_placer:29>.addTooltip(format.gold("Will scan large area when first placed, may cause server no response during scanning"));

<ChromatiCraft:chromaticraft_item_bulkmover>.addTooltip(format.gold("Click inventory slot except hotbar when open setting GUI will cause client crash"));
<ChromatiCraft:chromaticraft_item_bulkmover>.addTooltip(format.gold("Please move your filtered item to hotbar first to prevent crash"));

<Thaumcraft:ItemThaumonomicon:42>.addTooltip(format.gold("Don't let Autonomous Activator use this book"));
<Thaumcraft:ItemThaumonomicon:42>.addTooltip(format.gold("Use Tome of Knowledge Sharing instead"));

//------------------------------------------------------------------------

val nogenOres = [<manametalmod:oreMoonstone>, <manametalmod:oreSunstone>, <manametalmod:oreSilver>, <manametalmod:oreNickel>, <manametalmod:oreAluminum>, <manametalmod:oreIridium>, <Mekanism:OreBlock>, <manametalmod:oreAmber>, <manametalmod:orePurgatoryIron>, <manametalmod:oreEnderGold>, <manametalmod:orePlatinum>] as IItemStack[];

for i in nogenOres {
	i.addTooltip(format.red("Disable world generation"));
}
<manametalmod:oreIridium>.addTooltip(format.gold("Use other ore producting devices(eg: Laser Drill or Excavator) to obtain it"));

//------------------------------------------------------------------------

val thoriumDusts = [<ReactorCraft:reactorcraft_item_raw:7>, <RotaryCraft:rotarycraft_item_modingots:84>] as IItemStack[];

for i in thoriumDusts {
	i.addTooltip(format.gold("Use Uranium processor to make FLiBe salt, then use Fuel enhancer to make thorium fuel"));
	i.addTooltip(format.gold("Liquid lithium can be obtained by centrifuging lava using Centrifugal Fluid Extractor"));
}

//------------------------------------------------------------------------
//mekanism tweaked recipes

val mekTweakedItems = [<Mekanism:CardboardBox>, <Mekanism:TeleportationCore>, <Mekanism:MachineBlock:4>, <Mekanism:AtomicDisassembler>] as IItemStack[];

for i in mekTweakedItems {
	i.addTooltip(format.red("Tweaked item. Old recipe will not work!"));
}

//------------------------------------------------------------------------
//uu values

val hasUUValues = [<DraconicEvolution:draconiumIngot>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:chaosFragment>, <ChromatiCraft:chromaticraft_item_elemental:*>] as IItemStack[];

for i in hasUUValues {
	i.addTooltip(format.gold("Can be replicated using UU-Matter"));
}

//------------------------------------------------------------------------
//mana pools

val mmmManaPools = [<manametalmod:BlockManaPoolM3_1:10>, <manametalmod:BlockManaPoolM3_1:11>, <manametalmod:BlockManaPoolM3_1:12>, <manametalmod:BlockManaPoolM3_1:13>] as IItemStack[];

for i in mmmManaPools {
	i.addTooltip(format.red("Please don't bind Mana Mirror to this pool"));
}

//------------------------------------------------------------------------
//available in dungeon dimension

val availInDungeon = [<ae2wct:wirelessCraftingTerminal>,<academy-craft:ac_Item_silbarn>,<academy-craft:ac_Item_magHook>,<academy-craft:ac_Item_coin>,<TaintedMagic:ItemKatana:*>,<Mekanism:Flamethrower>,<witchery:mysticbranch>,<witchery:deathshand>,<witchery:mooncharm>,<witchery:witchhand>,<IC2:itemNanoSaber>,<RotaryCraft:rotarycraft_item_gravelgun>,<RotaryCraft:rotarycraft_item_stungun>,<ChromatiCraft:chromaticraft_item_chaingun>,<ChromatiCraft:chromaticraft_item_splashgun>,<ChromatiCraft:chromaticraft_item_splineattack>,<ChromatiCraft:chromaticraft_item_killauragun>,<ChromatiCraft:chromaticraft_item_hoverwand>,<wizardry:magic_wand>,<wizardry:apprentice_wand>,<wizardry:advanced_wand>,<wizardry:master_wand>,<wizardry:basic_fire_wand>,<wizardry:basic_ice_wand>,<wizardry:basic_lightning_wand>,<wizardry:basic_necromancy_wand>,<wizardry:basic_earth_wand>,<wizardry:basic_sorcery_wand>,<wizardry:basic_healing_wand>,<wizardry:apprentice_fire_wand>,<wizardry:apprentice_ice_wand>,<wizardry:apprentice_lightning_wand>,<wizardry:apprentice_necromancy_wand>,<wizardry:apprentice_earth_wand>,<wizardry:apprentice_sorcery_wand>,<wizardry:apprentice_healing_wand>,<wizardry:advanced_fire_wand>,<wizardry:advanced_ice_wand>,<wizardry:advanced_lightning_wand>,<wizardry:advanced_necromancy_wand>,<wizardry:advanced_earth_wand>,<wizardry:advanced_sorcery_wand>,<wizardry:advanced_healing_wand>,<wizardry:master_fire_wand>,<wizardry:master_ice_wand>,<wizardry:master_lightning_wand>,<wizardry:master_necromancy_wand>,<wizardry:master_earth_wand>,<wizardry:master_sorcery_wand>,<wizardry:master_healing_wand>,<mo:phaser_rifle>,<mo:plasma_shotgun>,<mo:ion_sniper>,<arsmagica2:spellBase>,<TConstruct:Shuriken>,<TConstruct:ThrowingKnife>,<TConstruct:Javelin>,<TConstruct:ShortBow>,<TConstruct:Crossbow>,<Botania:brewVial>,<Botania:brewFlask>,<arsmagica2:arcane_spellbook>,<arsmagica2:lesserManaPotion>,<arsmagica2:standardManaPotion>,<arsmagica2:greaterManaPotion>,<arsmagica2:epicManaPotion>,<arsmagica2:legendaryManaPotion>,<arsmagica2:manaPotionBundle:*>,<arsmagica2:liquidEssenceBottle>,<Botania:infiniteFruit>,<arsmagica2:spellBook:*>,<AWWayofTime:alchemyFlask>,<AWWayofTime:blankSpell>,<AWWayofTime:itemComplexSpellCrystal>,<AWWayofTime:customTool>] as IItemStack[];

for i in availInDungeon {
	i.addTooltip(format.gold("Can be used in M3 Dungeon dimension"));
}

//------------------------------------------------------------------------
//disable imag fusor
<academy-craft:ac_Block_imagFusor>.addTooltip(format.gold("Disabled. Recipe handled by other machine."));

//------------------------------------------------------------------------
//banned item

val bannedItems = [<MineFactoryReloaded:machine.2:2>, <WitchingGadgets:item.WG_Bag:3>, <arsmagica2:arcaneDeconstructor>, <Mekanism:BasicBlock2:1>, <Mekanism:BasicBlock2:2>, <Mekanism:BasicBlock2:3>, <Mekanism:BasicBlock2:4>, <Mekanism:MachineBlock:15>, <thaumicbases:overchanter>, <ae2fc:part_fluid_pattern_terminal_ex>] as IItemStack[];

for i in bannedItems {
	i.addTooltip(format.darkRed("Banned item"));
}