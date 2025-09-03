//Unicode charactor conventor: https://r12a.github.io/app-conversion/

import minetweaker.item.IItemStack;

<manametalmod:ItemUniverseMessages>.addTooltip(format.darkRed("\u8ACB\u52FF\u50B3\u9001\u9055\u53CD\u5584\u826F\u98A8\u4FD7\u6216\u4E2D\u83EF\u6C11\u570B\u6CD5\u5F8B\u7684\u5B57\u53E5\uFF0C\u5426\u5247\u5F8C\u679C\u81EA\u8CA0"));
<manametalmod:ItemUniverseMessages>.addTooltip(format.darkRed("\u73FE\u7248\u672C\u7121\u6CD5\u7531\u975E\u9B54\u6CD5\u91D1\u5C6C\u5B98\u65B9\u4EBA\u54E1\u767C\u9001\u5B87\u5B99\u8A0A\u606F\u3002"));
<questbook:ItemQuestBook>.addTooltip(format.gold("\u6309\u4E0B\u5FEB\u6377\u9375(\u9810\u8A2D`)\u4E5F\u53EF\u4EE5\u958B\u555F\u4EFB\u52D9\u6E05\u55AE\uFF0C\u672C\u66F8\u4E26\u975E\u5FC5\u8981\u3002"));
<manametalmod:oreBlackDiamond>.addTooltip(format.red("\u8A72\u7926\u7269\u79FB\u9664\u4E86denseore\u7684\u7926\u5178\u540D\uFF0C\u6240\u4EE5\u4E0D\u80FD\u653E\u5165sagmill\u78E8\u51FA\u947D\u77F3\u7926"));
<minecraft:bedrock>.addTooltip(format.green("True bedrock LOL"));
<manametalmod:FakeBedrock>.addTooltip(format.red("Fake bedrock#"));
<manametalmod:ingotBedrock>.addTooltip(format.gold("\u900F\u904E\u57FA\u5CA9\u8853\u5F0F\u3001\u6CE8\u9B54\u6216\u4F7F\u7528\u5E36\u6709'"+ format.lightPurple("\u5F37\u5927\u5230\u8DB3\u4EE5\u7834\u58DE\u57FA\u5CA9") +"'\u6A19\u793A\u7684\u5DE5\u5177\u6316\u6398\u57FA\u5CA9\u4F86\u7372\u5F97"));

<manametalmod:ItemPortalMineCaveCore>.addTooltip(format.gold("\u53EF\u65BC\u63A1\u7926\u6280\u5DE7\u5546\u5E97\u4E2D\u8CFC\u8CB7"));
<manametalmod:ItemToolWandBlocks>.addTooltip(format.red("\u4E0D\u8981\u7528\u5B83\u642Cpylon!!\u5426\u5247Reika\u6703\u300C\u9810\u9632\u6027\u5D29\u6F70\u300D!!"));
<DraconicEvolution:chaosShard>.addTooltip(format.gold("\u900F\u904E\u64CA\u5012\u6DF7\u6C8C\u5B88\u885B\uFF0C\u6216\u795E\u9F8D\u53CD\u61C9\u7210\u7684\u71C3\u6599\u53CD\u61C9\u5B8C\u5F8C\u7684\u7522\u7269\u5F97\u5230"));
<DraconicEvolution:chaosFragment:*>.addTooltip(format.gold("\u900F\u904E\u64CA\u5012\u6DF7\u6C8C\u5B88\u885B\uFF0C\u6216\u795E\u9F8D\u53CD\u61C9\u7210\u7684\u71C3\u6599\u53CD\u61C9\u5B8C\u5F8C\u7684\u7522\u7269\u5F97\u5230"));

<universalsingularities:universal.general.singularity:11>.addTooltip(format.gold("\u914D\u65B9\u66F4\u6539\u70BA\u4F7F\u7528\u771F\u84CB\u4E9E\u4E4B\u9B42\u9320\u88FD\u4F5C"));

<manametalmod:PlatinumNetherStar>.addTooltip(format.gold("Star Platinum!!"));

<manametalmod:grassman>.addTooltip(format.gold("\u8E72\u4E0B\u53F3\u9375\u4EE5\u6E05\u9664\u7A3B\u8349\u4EBA"));

<ExtraUtilities:nodeUpgrade:2>.addTooltip(format.red("\u62BD\u7121\u9650\u6C34\u7684\u529F\u80FD\u5DF2\u88AB\u53D6\u6D88"));

val lootTip1 = format.gold("\u53EF\u65BC\u4EA1\u9748\u53E4\u5893\u3001\u9060\u53E4\u92A9\u4E16\u754C\u4E2D\u5C0B\u7372");
<manametalmod:BlockMagicObject0>.addTooltip(lootTip1);
<manametalmod:BlockMagicRunes>.addTooltip(lootTip1);

<RotaryCraft:rotarycraft_item_machine:75>.addTooltip(format.gold("\u53EF\u62C6\u89E3\u900F\u904E\u6B64\u53F0\u684C\u88FD\u4F5C\u51FA\u7684\u6A5F\u5668(\u9700\u7D66\u4E88\u7D05\u77F3\u8A0A\u865F)"));

<ChromatiCraft:chromaticraft_item_placer:23>.addTooltip(format.gold("\u53EF\u8907\u88FD\u90E8\u5206\u6D41\u9AD4(\u4EE5\u6876\u88DD\u5F62\u5F0F\u7D66\u4E88\u6A23\u672C)"));

//Let BetterQuesting can handle various types of welding dusts
<ore:dustM3Welding>.add(<manametalmod:ItemCastingWeldingDusts:*>);

<manametalmod:BlockTileEntityClothesTailors>.addTooltip(format.gold("\u4FEE\u88DC\u7A4D\u5206\u82E5\u8D85\u904E200\u5206\uFF0C\u5247\u8996\u70BA0\u5206!"));

<manametalmod:ingotCopyA>.addTooltip(format.gold("\u5F9E\u9F8D\u65CF\u63A2\u96AA\u968A\u7372\u5F97\uFF0C\u6216\u662F\u4F7F\u7528\u5F69\u80FD\u9444\u4EF6\u914D\u65B9\u8907\u88FD"));

<ThaumicExploration:everfullUrn>.addTooltip(format.gold("\u8ACB\u76E1\u91CF\u4E0D\u8981\u62FF\u6D41\u9AD4\u5BB9\u5668\u53F3\u9375\u5B83"));

<ChromatiCraft:chromaticraft_item_placer:3>.addTooltip(format.gold("BOSS\u751F\u7269\u4EE5\u53CA\u90E8\u5206\u751F\u7269\u5DF2\u7981\u6B62\u5728\u6B64\u7DE8\u7A0B"));

<ChromatiCraft:chromaticraft_item_placer:29>.addTooltip(format.gold("\u9996\u6B21\u653E\u7F6E\u6642\u6703\u6383\u63CF\u5927\u7BC4\u570D\u5340\u57DF\uFF0C\u53EF\u80FD\u5C0E\u81F4\u4F3A\u670D\u5668\u6C92\u6709\u56DE\u61C9"));

<ChromatiCraft:chromaticraft_item_bulkmover>.addTooltip(format.gold("\u8A2D\u5B9A\u904E\u6FFE\u7269\u54C1\u6216\u6578\u91CF\u5F8C\u518D\u9EDE\u64CA\u5176\u4ED6\u6B04\u4F4D\u6703\u5C0E\u81F4\u5BA2\u6236\u7AEF\u5D29\u6F70"));
<ChromatiCraft:chromaticraft_item_bulkmover>.addTooltip(format.gold("\u70BA\u4E86\u907F\u514D\u5D29\u6F70\uFF0C\u5728\u8A2D\u5B9A\u904E\u6FFE\u6216\u6578\u91CF\u5F8C\u6309\u4E0BESC\u76F4\u63A5\u9000\u51FA\u8A2D\u5B9A\u4ECB\u9762\u5373\u53EF"));

//------------------------------------------------------------------------

val nogenOres = [<manametalmod:oreMoonstone>, <manametalmod:oreSunstone>, <manametalmod:oreSilver>, <manametalmod:oreNickel>, <manametalmod:oreAluminum>, <manametalmod:oreIridium>, <Mekanism:OreBlock>, <manametalmod:oreAmber>, <manametalmod:orePurgatoryIron>, <manametalmod:oreEnderGold>, <manametalmod:orePlatinum>] as IItemStack[];

for i in nogenOres {
	i.addTooltip(format.red("\u8ABF\u6574\u70BA\u4E0D\u6703\u81EA\u7136\u751F\u6210"));
}
<manametalmod:oreIridium>.addTooltip(format.gold("\u53EF\u900F\u904E\u5176\u4ED6\u65B9\u6CD5(\u96F7\u5C04\u6316\u7926\u3001\u6597\u8F2A\u6316\u7926...)\u4F86\u7372\u5F97\u539F\u7926"));

//------------------------------------------------------------------------

val thoriumDusts = [<ReactorCraft:reactorcraft_item_raw:7>, <RotaryCraft:rotarycraft_item_modingots:84>] as IItemStack[];

for i in thoriumDusts {
	i.addTooltip(format.gold("\u900F\u904EUranium processor\u4F86\u88FD\u9020\u6C1F\u92F0\u9239\u7194\u9E7D\uFF0C\u518D\u900F\u904EFuel enhancer\u5C07\u6B64\u52A0\u5165\u4F86\u88FD\u9020\u53EF\u7528\u7684\u91F7\u71C3\u6599\u3002"));
	i.addTooltip(format.gold("\u7194\u9E7D\u4E2D\u7684\u6DB2\u614B\u92F0\u53EF\u900F\u904E\u5C07Centrifugal Fluid Extractor\u7F6E\u65BC\u5CA9\u6F3F\u4E2D\u96E2\u5FC3\u7372\u5F97\u3002"));
}

//------------------------------------------------------------------------
//mekanism tweaked recipes

val mekTweakedItems = [<Mekanism:CardboardBox>, <Mekanism:TeleportationCore>, <Mekanism:MachineBlock:4>, <Mekanism:AtomicDisassembler>] as IItemStack[];

for i in mekTweakedItems {
	i.addTooltip(format.red("\u914D\u65B9\u5DF2\u66F4\u52D5\uFF0C\u820A\u914D\u65B9\u5C07\u4E0D\u8D77\u4F5C\u7528"));
}

//------------------------------------------------------------------------
//uu values

val hasUUValues = [<DraconicEvolution:draconiumIngot>, <DraconicEvolution:draconicIngot>, <DraconicEvolution:chaosFragment>, <ChromatiCraft:chromaticraft_item_elemental:*>] as IItemStack[];

for i in hasUUValues {
	i.addTooltip(format.gold("\u53EF\u4F7F\u7528UU-Matter\u8907\u88FD"));
}

//------------------------------------------------------------------------
//mana pools

val mmmManaPools = [<manametalmod:BlockManaPoolM3_1:10>, <manametalmod:BlockManaPoolM3_1:11>, <manametalmod:BlockManaPoolM3_1:12>, <manametalmod:BlockManaPoolM3_1:13>] as IItemStack[];

for i in mmmManaPools {
	i.addTooltip(format.red("\u8ACB\u4E0D\u8981\u5C07\u9B54\u529B\u624B\u93E1\u7D81\u5B9A\u5230\u8A72\u6C60\u4E0A"));
}

//------------------------------------------------------------------------
//available in dungeon dimension

val availInDungeon = [<ae2wct:wirelessCraftingTerminal>,<academy-craft:ac_Item_silbarn>,<academy-craft:ac_Item_magHook>,<academy-craft:ac_Item_coin>,<TaintedMagic:ItemKatana:*>,<Mekanism:Flamethrower>,<witchery:mysticbranch>,<witchery:deathshand>,<witchery:mooncharm>,<witchery:witchhand>,<IC2:itemNanoSaber>,<RotaryCraft:rotarycraft_item_gravelgun>,<RotaryCraft:rotarycraft_item_stungun>,<ChromatiCraft:chromaticraft_item_chaingun>,<ChromatiCraft:chromaticraft_item_splashgun>,<ChromatiCraft:chromaticraft_item_splineattack>,<ChromatiCraft:chromaticraft_item_killauragun>,<ChromatiCraft:chromaticraft_item_hoverwand>,<wizardry:magic_wand>,<wizardry:apprentice_wand>,<wizardry:advanced_wand>,<wizardry:master_wand>,<wizardry:basic_fire_wand>,<wizardry:basic_ice_wand>,<wizardry:basic_lightning_wand>,<wizardry:basic_necromancy_wand>,<wizardry:basic_earth_wand>,<wizardry:basic_sorcery_wand>,<wizardry:basic_healing_wand>,<wizardry:apprentice_fire_wand>,<wizardry:apprentice_ice_wand>,<wizardry:apprentice_lightning_wand>,<wizardry:apprentice_necromancy_wand>,<wizardry:apprentice_earth_wand>,<wizardry:apprentice_sorcery_wand>,<wizardry:apprentice_healing_wand>,<wizardry:advanced_fire_wand>,<wizardry:advanced_ice_wand>,<wizardry:advanced_lightning_wand>,<wizardry:advanced_necromancy_wand>,<wizardry:advanced_earth_wand>,<wizardry:advanced_sorcery_wand>,<wizardry:advanced_healing_wand>,<wizardry:master_fire_wand>,<wizardry:master_ice_wand>,<wizardry:master_lightning_wand>,<wizardry:master_necromancy_wand>,<wizardry:master_earth_wand>,<wizardry:master_sorcery_wand>,<wizardry:master_healing_wand>,<mo:phaser_rifle>,<mo:plasma_shotgun>,<mo:ion_sniper>,<arsmagica2:spellBase>,<TConstruct:Shuriken>,<TConstruct:ThrowingKnife>,<TConstruct:Javelin>,<TConstruct:ShortBow>,<TConstruct:Crossbow>,<Botania:brewVial>,<Botania:brewFlask>,<arsmagica2:arcane_spellbook>,<arsmagica2:lesserManaPotion>,<arsmagica2:standardManaPotion>,<arsmagica2:greaterManaPotion>,<arsmagica2:epicManaPotion>,<arsmagica2:legendaryManaPotion>,<arsmagica2:manaPotionBundle:*>,<arsmagica2:liquidEssenceBottle>,<Botania:infiniteFruit>] as IItemStack[];

for i in availInDungeon {
	i.addTooltip(format.gold("\u53EF\u5728M3\u5730\u4E0B\u57CE\u7DAD\u5EA6\u4E2D\u4F7F\u7528"));
}

//------------------------------------------------------------------------
//disable imag fusor
<academy-craft:ac_Block_imagFusor>.addTooltip(format.gold("\u7981\u7528\u7269\u54C1\u3002\u914D\u65B9\u4EA4\u7531\u5176\u4ED6\u6A5F\u5668\u8CA0\u8CAC\u3002"));

//------------------------------------------------------------------------
//banned item

val bannedItems = [<MineFactoryReloaded:machine.2:2>, <WitchingGadgets:item.WG_Bag:3>, <arsmagica2:arcaneDeconstructor>, <Mekanism:BasicBlock2:1>, <Mekanism:BasicBlock2:2>, <Mekanism:BasicBlock2:3>, <Mekanism:BasicBlock2:4>, <Mekanism:MachineBlock:15>, <thaumicbases:overchanter>] as IItemStack[];

for i in bannedItems {
	i.addTooltip(format.darkRed("\u7981\u7528\u7269\u54C1"));
}