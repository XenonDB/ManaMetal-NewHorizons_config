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
<MineFactoryReloaded:machine.2:2>.addTooltip(format.darkRed("Banned item"));

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

//------------------------------------------------------------------------

val nogenOres = [<manametalmod:oreMoonstone>, <manametalmod:oreSunstone>, <manametalmod:oreSilver>, <manametalmod:oreNickel>, <manametalmod:oreAluminum>, <manametalmod:oreIridium>, <Mekanism:OreBlock>, <manametalmod:oreAmber>, <manametalmod:orePurgatoryIron>, <manametalmod:oreEnderGold>, <manametalmod:orePlatinum>] as IItemStack[];

for i in nogenOres {
	i.addTooltip(format.red("Disable world generation"));
}
<manametalmod:oreIridium>.addTooltip(format.gold("Use other ore producting devices(eg: Laser Drill or Excavator) to obtain it"));

//------------------------------------------------------------------------
//NEI recipes synchronized alert

val pigIronWarning = format.red("Molten iron cased in TiC casting table/basin will become M3 wrought iron");
<minecraft:iron_block>.addTooltip(pigIronWarning);
<minecraft:iron_ingot>.addTooltip(pigIronWarning);
<ImmersiveEngineering:metal:21>.addTooltip(pigIronWarning);

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
