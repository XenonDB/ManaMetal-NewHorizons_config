import minetweaker.item.IItemStack;

//ThermalFoundation的Mana Dust是使用dustMana做為註冊名子並可能會跟據此被拿去做粉碎機的輸出產物，但卻連任何一個礦典名都沒有。與此同時AOBD加了有dustMana礦典的東西，導致添加粉碎機的dustMana產物時崩潰。這BUG真的很神奇。
//<ore:dustMana>.add(<ThermalFoundation:material:516>);

//不要亂加礦典名，謝謝
<ore:ingotIron>.remove(<manametalmod:ingotPurgatoryIron>);
<ore:ingotGold>.remove(<manametalmod:ingotEnderGold>);

//所以說你的終結金礦和煉獄鐵礦到底是金/鐵還是終結金/煉獄鐵阿?
//<ore:denseoreGold>.remove(<manametalmod:oreEnderGold>);
//<ore:denseoreIron>.remove(<manametalmod:orePurgatoryIron>);

//不鏽鋼不是殷瓦
mods.tconstruct.Smeltery.removeMelting(<manametalmod:ingotStainlessSteel>);
mods.tconstruct.Smeltery.removeMelting(<manametalmod:nuggetStainlessSteel>);
mods.tconstruct.Smeltery.removeMelting(<manametalmod:blockStainlessSteel>);


//所以說為甚麼水銀會有這兩個礦典名阿?
<ore:nuggetQuicksilver>.remove(<Thaumcraft:ItemResource:3>);
<ore:MMMgem>.remove(<Thaumcraft:ItemResource:3>);

//暗影寶石礦典名衝突
mods.immersiveengineering.Crusher.removeRecipe(<abyssalcraft:shadowgem>);

//netherite
//furnace.remove(<manametalmod:ingotNetherite>); //下列的addRecipe已會自動覆蓋。若多了這行，使用mt reload的時候會出錯誤訊息。其實不會怎樣但很煩。

furnace.addRecipe(<manametalmod:plateNetherite> * 2, <aobd:crushedPurifiedNetherite>, 0.5);
furnace.addRecipe(<manametalmod:plateNetherite> * 2, <aobd:crushedNetherite>, 0.5);
furnace.addRecipe(<manametalmod:plateNetherite> * 4, <aobd:clusterNetherite>, 0.5);
furnace.addRecipe(<manametalmod:plateNetherite>, <ore:dustNetherite>, 0.5);
//furnace.addRecipe(<manametalmod:plateNetherite> * 4, <manametalmod:ItemMetalCrystals:142>, 0.5);

mods.immersiveengineering.ArcFurnace.removeRecipe(<manametalmod:ingotNetherite>);
mods.immersiveengineering.ArcFurnace.addRecipe(<manametalmod:plateNetherite> * 4, <manametalmod:oreNetherite>, <ImmersiveEngineering:material:13>, 200, 512, [], "Ores");

mods.thermalexpansion.Furnace.removeRecipe(<aobd:crushedPurifiedNetherite>);
mods.thermalexpansion.Furnace.removeRecipe(<aobd:crushedNetherite>);
mods.thermalexpansion.Furnace.removeRecipe(<aobd:clusterNetherite>);
//mods.thermalexpansion.Furnace.removeRecipe(<manametalmod:ItemMetalCrystals:142>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustNetherite>);

mods.thermalexpansion.Furnace.addRecipe(1600, <aobd:crushedPurifiedNetherite>, <manametalmod:plateNetherite> * 2);
mods.thermalexpansion.Furnace.addRecipe(1600, <aobd:crushedNetherite>, <manametalmod:plateNetherite> * 2);
mods.thermalexpansion.Furnace.addRecipe(1600, <aobd:clusterNetherite>, <manametalmod:plateNetherite> * 4);
//mods.thermalexpansion.Furnace.addRecipe(1600, <manametalmod:ItemMetalCrystals:142>, <manametalmod:plateNetherite> * 4);

mods.thermalexpansion.Smelter.removeRecipe(<ThermalExpansion:material:515>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:20>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:512>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:dustNetherite>);

mods.thermalexpansion.Smelter.addRecipe(4000, <manametalmod:oreNetherite>, <ThermalExpansion:material:515>, <manametalmod:plateNetherite> * 6, <ThermalExpansion:material:514>, 75);
mods.thermalexpansion.Smelter.addRecipe(4000, <manametalmod:oreNetherite>, <ThermalFoundation:material:20>, <manametalmod:plateNetherite> * 6, <ThermalExpansion:material:515>, 75);
mods.thermalexpansion.Smelter.addRecipe(4000, <manametalmod:oreNetherite>, <ThermalFoundation:material:512>, <manametalmod:plateNetherite> * 4, <ThermalExpansion:material:515>, 15);
mods.thermalexpansion.Smelter.addRecipe(3200, <manametalmod:oreNetherite>, <minecraft:sand>, <manametalmod:plateNetherite> * 4, <ThermalExpansion:material:515>, 5);

mods.tconstruct.Smeltery.removeMelting(<manametalmod:oreNetherite>);
mods.tconstruct.Smeltery.removeMelting(<aobd:crushedNetherite>);
mods.tconstruct.Smeltery.removeMelting(<manametalmod:dustNetherite>);
mods.tconstruct.Smeltery.removeMelting(<aobd:clusterNetherite>);

mods.witchinggadgets.InfernalBlastfurnace.removeRecipe(<manametalmod:ingotNetherite>);
mods.witchinggadgets.InfernalBlastfurnace.addRecipe(<manametalmod:dustNetherite> * 6,<aobd:clusterNetherite>,440,<aobd:dustTinyNetherite>,false);

mods.mekanism.Enrichment.removeRecipe(<aobd:dustDirtyNetherite>);
mods.mekanism.Enrichment.addRecipe(<aobd:dustDirtyNetherite>, <manametalmod:dustNetherite> * 2);

//避免使用該自我注魔能力進行無消耗合成
mods.thaumcraft.Research.removeResearch("morphicFingers");

//移除超吟附魔台
mods.thaumcraft.Research.removeResearch("TB.Overchanter");

//other
//mods.tconstruct.Smeltery.addMelting(<ore:ingotBrass>, <liquid:brass.molten> * 144, 200, <manametalmod:blockBrass>);
mods.tconstruct.Smeltery.addMelting(<ore:gearManaS>, <liquid:fluidmanas> * 576, 200, <manametalmod:blockManaS>);
mods.mekanism.Combiner.addRecipe(<minecraft:iron_ore> * 8, <gas:liquidStone>, <manametalmod:orePurgatoryIron>);
mods.mekanism.Combiner.addRecipe(<minecraft:gold_ore> * 8, <gas:liquidStone>, <manametalmod:oreEnderGold>);

//三鈦鑄造成錠
mods.tconstruct.Casting.addTableRecipe(<mo:tritanium_ingot>, <liquid:molten_tritanium> * 144, <TConstruct:metalPattern>, false, 20);

//終界被置換導致沒水晶的問題
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <ChromatiCraft:chromaticraft_item_endercrystal>, [<minecraft:nether_star>, <minecraft:glass_pane>, <minecraft:ghast_tear>, <minecraft:glass_pane>, <minecraft:bedrock>, <minecraft:glass_pane>, <manametalmod:ingotManaDragonCrystal>, <minecraft:glass_pane>], "fabrico 8 ,auram 16, dragon 8, signum 16", <ChromatiCraft:chromaticraft_item_endercrystal:1>, 3);

//終界被置換導致沒有閻魔刀問題
mods.thaumcraft.Infusion.addRecipe("ASPECTS", <TaintedMagic:ItemKatana:2>, [<DraconicEvolution:dragonHeart>,<flammpfeil.slashblade:proudsoul>,<flammpfeil.slashblade:proudsoul>], "fabrico 32 ,space 48, dragon 48, alienis 24", <flammpfeil.slashblade:slashbladeNamed>.withTag({isSealed: 1 as byte, ModelName: "named/yamato", isNoScabbard: 1 as byte, CurrentItemName: "flammpfeil.slashblade.named.yamato.broken", AttackAmplifier: -5.0 as float, TextureName: "named/yamato", SpecialAttackType: 0, TrueItemName: "flammpfeil.slashblade.named.yamato", CustomMaxDamage: 40, isBroken: 1 as byte, baseAttackModifier: 7.0 as float, AttributeModifiers: [{UUIDMost: -3801225194067177672 as long, UUIDLeast: -6586624321849018929 as long, Amount: 2.0, AttributeName: "generic.attackDamage", Operation: 0, Name: "Weapon modifier"}], "SB.SEffect": {}, StandbyRenderType: 1}), 9);

//白石塊和電路基板配方衝突
mods.thermalexpansion.Furnace.removeRecipe(<minecraft:stone>);
mods.thermalexpansion.Furnace.addRecipe(1000, <minecraft:stone>, <manametalmod:WhiteStone1> * 4);
furnace.addRecipe(<manametalmod:WhiteStone1> * 4, <minecraft:stone>, 0.5);

//ExU和TiC連動的 Unstable part遺失問題(問題原因應該是模組載入順序導致配方遺失)

val unstableParts = [<TConstruct:toolRod:314>, <TConstruct:pickaxeHead:314>, <TConstruct:shovelHead:314>, <TConstruct:hatchetHead:314>, <TConstruct:binding:314>, <TConstruct:toughBinding:314>, <TConstruct:toughRod:314>, <TConstruct:heavyPlate:314>, <TConstruct:swordBlade:314>, <TConstruct:wideGuard:314>, <TConstruct:handGuard:314>, <TConstruct:crossbar:314>, <TConstruct:knifeBlade:314>, <TConstruct:frypanHead:314>, <TConstruct:signHead:314>, <TConstruct:chiselHead:314>, <TConstruct:scytheBlade:314>, <TConstruct:broadAxeHead:314>, <TConstruct:excavatorHead:314>, <TConstruct:largeSwordBlade:314>, <TConstruct:hammerHead:314>, <TConstruct:arrowhead:314>, <TConstruct:ShurikenPart:314>, <TConstruct:BowLimbPart:314>, <TConstruct:CrossbowLimbPart:314>, <TConstruct:CrossbowBodyPart:314>, <TConstruct:fullGuard:314>] as IItemStack[];
val partCasts = [<TConstruct:metalPattern:1>, <TConstruct:metalPattern:2>, <TConstruct:metalPattern:3>, <TConstruct:metalPattern:4>, <TConstruct:metalPattern:9>, <TConstruct:metalPattern:15>, <TConstruct:metalPattern:14>, <TConstruct:metalPattern:16>, <TConstruct:metalPattern:5>, <TConstruct:metalPattern:6>, <TConstruct:metalPattern:7>, <TConstruct:metalPattern:8>, <TConstruct:metalPattern:12>, <TConstruct:metalPattern:10>, <TConstruct:metalPattern:11>, <TConstruct:metalPattern:13>, <TConstruct:metalPattern:18>, <TConstruct:metalPattern:17>, <TConstruct:metalPattern:19>, <TConstruct:metalPattern:20>, <TConstruct:metalPattern:21>, <TConstruct:metalPattern:25>, <TConstruct:Cast>, <TConstruct:Cast:3>, <TConstruct:Cast:1>, <TConstruct:Cast:2>, <TConstruct:metalPattern:22>] as IItemStack[];
val fluidAmount = [72, 144, 144, 144, 72, 432, 432, 1152, 144, 72, 72, 72, 72, 144, 144, 72, 1152, 1152, 1152, 1152, 1152, 144, 72, 216, 576, 720, 432] as int[];

for i, part in unstableParts {
	//好der，因為不穩定部件有10秒後失效特性，增加回融配方可以讓人無限次嘗試製作而幾乎不損失任何材料。因此取消回融配方。
	//mods.tconstruct.Smeltery.addMelting(part, <liquid:molten.unstableingots> * fluidAmount[i], 850, <ExtraUtilities:decorativeBlock1:5>);
	mods.tconstruct.Casting.addTableRecipe(part, <liquid:molten.unstableingots> * fluidAmount[i], partCasts[i], false, 20);
}

//禁用Imag Fusor並給予替代配方
mods.thermalexpansion.Transposer.addFillRecipe(6000, <academy-craft:ac_Item_crystalLow>, <academy-craft:ac_Item_crystalNormal>, <liquid:imagproj> * 3000);
mods.thermalexpansion.Transposer.addFillRecipe(6000, <academy-craft:ac_Item_crystalNormal>, <academy-craft:ac_Item_crystalPure>, <liquid:imagproj> * 8000);

//Tinker熔融配方有誤,單人端沒問題伺福端上確有問題(會鑄造出12個錠...?),不知道問題怎麼發生的所以乾脆全部重寫一遍
mods.tconstruct.Casting.removeTableRecipe(<abyssalcraft:abyingot>);
mods.tconstruct.Casting.removeTableRecipe(<abyssalcraft:cingot>);
mods.tconstruct.Casting.removeTableRecipe(<academy-craft:ac_Item_ingotConst>);
mods.tconstruct.Casting.removeTableRecipe(<academy-craft:ac_Item_ingotImagSil>);
mods.tconstruct.Casting.removeTableRecipe(<ExtraUtilities:bedrockiumIngot>);
mods.tconstruct.Casting.removeTableRecipe(<IC2:itemIngot:1>);
mods.tconstruct.Casting.removeTableRecipe(<IC2:itemIngot:2>);
mods.tconstruct.Casting.removeTableRecipe(<ImmersiveEngineering:metal:1>);
mods.tconstruct.Casting.removeTableRecipe(<ImmersiveEngineering:metal:7>);
mods.tconstruct.Casting.removeTableRecipe(<ImmersiveEngineering:metal>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotAcanoy>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotAdamantine>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotAncientThulium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotAntimony>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotBadyala>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotBedrock>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotBiliha>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotBismuth>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotBloodMetal>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotCerium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotChromium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotCobalt>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotCrimson>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotDark>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotDeepiron>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotElectrum>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotEndless>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotFantasygold>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotHighlycrystal>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotHolyCopper>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotLead>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotLithium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotMana>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotManaDragonCrystal>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotManaEnderCrystal>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotManaS>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotManaSpiritSteel>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotManganese>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotMoltenGold>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotMolybdenum>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotMysteriousIron>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotMysteriousSoul>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotNetherite>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotNeutronEnergy>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotNickel>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotOrichalcum>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotPlatinum>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotPreciousIron>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotRainbowOpal>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotRainbowSteel>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotRhodium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotRosite>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotRuneSteel>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotScandium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotShadowSecretGold>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotSilver>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotSoulGold>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotSoulSteel>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotSoulstone>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotStainlessSteel>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotStarSilver>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotStartleSilver>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotTitan>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotTrueAncientThulium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotUniverseEnergy>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotVanadium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotWolfram>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotYadras>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotYamagata>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotYttrium>);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:gold_ingot>);
mods.tconstruct.Casting.removeTableRecipe(<minecraft:iron_ingot>);
mods.tconstruct.Casting.removeTableRecipe(<ProjRed|Core:projectred.core.part:10>);
mods.tconstruct.Casting.removeTableRecipe(<ReactorCraft:reactorcraft_item_ingots:1>);
mods.tconstruct.Casting.removeTableRecipe(<ReactorCraft:reactorcraft_item_ingots:2>);
mods.tconstruct.Casting.removeTableRecipe(<ReactorCraft:reactorcraft_item_ingots>);
mods.tconstruct.Casting.removeTableRecipe(<RotaryCraft:rotarycraft_item_modingots:45>);
mods.tconstruct.Casting.removeTableRecipe(<RotaryCraft:rotarycraft_item_modingots:46>);
mods.tconstruct.Casting.removeTableRecipe(<RotaryCraft:rotarycraft_item_modingots:63>);
mods.tconstruct.Casting.removeTableRecipe(<RotaryCraft:rotarycraft_item_modingots:7>);
mods.tconstruct.Casting.removeTableRecipe(<RotaryCraft:rotarycraft_item_shaftcraft:1>);
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:14>);
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:15>);
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:18>);
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:2>);
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:34>);
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:4>);
mods.tconstruct.Casting.removeTableRecipe(<TConstruct:materials:5>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:74>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:75>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:76>);
mods.tconstruct.Casting.removeTableRecipe(<TwilightForest:item.ironwoodIngot>);
mods.tconstruct.Casting.removeTableRecipe(<TwilightForest:item.knightMetal>);

mods.tconstruct.Casting.addTableRecipe(<abyssalcraft:abyingot>, <liquid:abyssalnite> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<abyssalcraft:cingot>, <liquid:liquifiedcoralium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<academy-craft:ac_Item_ingotConst>, <liquid:constraintmetal> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<academy-craft:ac_Item_ingotImagSil>, <liquid:imagsilicon> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<ExtraUtilities:bedrockiumIngot>, <liquid:molten.bedrockiumingots> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<IC2:itemIngot:1>, <liquid:tin.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<IC2:itemIngot:2>, <liquid:bronze.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<ImmersiveEngineering:metal:1>, <liquid:aluminum.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<ImmersiveEngineering:metal:7>, <liquid:steel.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<ImmersiveEngineering:metal>, <liquid:copper.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotAcanoy>, <liquid:acanoy> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotAdamantine>, <liquid:fluidadamantine> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotAncientThulium>, <liquid:fluidancientthulium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotAntimony>, <liquid:antimony> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotBadyala>, <liquid:badyala> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotBedrock>, <liquid:fluidbedrock> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotBiliha>, <liquid:biliha> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotBismuth>, <liquid:bismuth> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotBloodMetal>, <liquid:fluidbloodmetal> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotCerium>, <liquid:cerium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotChromium>, <liquid:chromium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotCobalt>, <liquid:cobalt.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotCrimson>, <liquid:fluidcrimson> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotDark>, <liquid:fluiddark> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotDeepiron>, <liquid:deepiron> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotElectrum>, <liquid:electrum.molten> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotEndless>, <liquid:fluidendless> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotFantasygold>, <liquid:fantasygold> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotHighlycrystal>, <liquid:highlycrystal> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotHolyCopper>, <liquid:fluidholycopper> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotLead>, <liquid:lead.molten> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotLithium>, <liquid:lithium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotMana>, <liquid:fluidmana> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotManaDragonCrystal>, <liquid:manadragoncrystal> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotManaEnderCrystal>, <liquid:manaendercrystal> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotManaS>, <liquid:fluidmanas> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotManaSpiritSteel>, <liquid:manaspiritsteel> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotManganese>, <liquid:manganese> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotMoltenGold>, <liquid:moltengold> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotMolybdenum>, <liquid:molybdenum> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotMysteriousIron>, <liquid:fluidmysteriousiron> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotMysteriousSoul>, <liquid:mysterioussoul> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotNetherite>, <liquid:netherite> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotNeutronEnergy>, <liquid:fluidneutronenergy> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotNickel>, <liquid:nickel.molten> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotOrichalcum>, <liquid:orichalcum> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotPlatinum>, <liquid:platinum.molten> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotPreciousIron>, <liquid:preciousiron> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotRainbowOpal>, <liquid:rainbowopal> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotRainbowSteel>, <liquid:rainbowsteel> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotRhodium>, <liquid:rhodium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotRosite>, <liquid:rosite> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotRuneSteel>, <liquid:fluidrunesteel> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotScandium>, <liquid:scandium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotShadowSecretGold>, <liquid:shadowsecretgold> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotSilver>, <liquid:silver.molten> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotSoulGold>, <liquid:soulgold> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotSoulSteel>, <liquid:fluidsoulsteel> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotSoulstone>, <liquid:soulstone> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotStainlessSteel>, <liquid:invar.molten> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotStarSilver>, <liquid:starsilver> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotStartleSilver>, <liquid:startlesilver> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotTitan>, <liquid:titan> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotTrueAncientThulium>, <liquid:fluidtrueancientthulium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotUniverseEnergy>, <liquid:fluiduniverseenergy> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotVanadium>, <liquid:vanadium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotWolfram>, <liquid:wolfram> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotYadras>, <liquid:yadras> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotYamagata>, <liquid:yamagata> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotYttrium>, <liquid:yttrium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<minecraft:gold_ingot>, <liquid:gold.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<minecraft:iron_ingot>, <liquid:iron.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<ProjRed|Core:projectred.core.part:10>, <liquid:redmetal.molten> * 144, <TConstruct:metalPattern>, false, 32);
mods.tconstruct.Casting.addTableRecipe(<ReactorCraft:reactorcraft_item_ingots:1>, <liquid:cadmium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<ReactorCraft:reactorcraft_item_ingots:2>, <liquid:indium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<ReactorCraft:reactorcraft_item_ingots>, <liquid:uranium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<RotaryCraft:rotarycraft_item_modingots:45>, <liquid:zinc> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<RotaryCraft:rotarycraft_item_modingots:46>, <liquid:osmium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<RotaryCraft:rotarycraft_item_modingots:63>, <liquid:titanium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<RotaryCraft:rotarycraft_item_modingots:7>, <liquid:iridium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<RotaryCraft:rotarycraft_item_shaftcraft:1>, <liquid:molten hsla> * 144, <TConstruct:metalPattern>, false, 40);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:materials:14>, <liquid:aluminumbrass.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:materials:15>, <liquid:alumite.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:materials:18>, <liquid:obsidian.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:materials:2>, <liquid:stone.seared> * 36, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:materials:34>, <liquid:pigiron.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:materials:4>, <liquid:ardite.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<TConstruct:materials:5>, <liquid:manyullyn.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:74>, <liquid:signalum.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:75>, <liquid:lumium.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:76>, <liquid:enderium.molten> * 144, <TConstruct:metalPattern>, false, 80);
mods.tconstruct.Casting.addTableRecipe(<TwilightForest:item.ironwoodIngot>, <liquid:ironwood> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<TwilightForest:item.knightMetal>, <liquid:knightmetal> * 144, <TConstruct:metalPattern>, false, 50);


mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotThulium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:nuggetThulium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:ingotPalladium>);
mods.tconstruct.Casting.removeTableRecipe(<manametalmod:nuggetPalladium>);

mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotPalladium>, <liquid:fluidpalladium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:ingotThulium>, <liquid:fluidthulium> * 144, <TConstruct:metalPattern>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:nuggetPalladium>, <liquid:fluidpalladium> * 16, <TConstruct:metalPattern:27>, false, 50);
mods.tconstruct.Casting.addTableRecipe(<manametalmod:nuggetThulium>, <liquid:fluidthulium> * 16, <TConstruct:metalPattern:27>, false, 50);

mods.tconstruct.Smeltery.addMelting(<manametalmod:blockPalladium>, <liquid:fluidpalladium> * 1296, 600, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<aobd:clusterPalladium>, <liquid:fluidpalladium> * 288, 600, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:dustPalladium>, <liquid:fluidpalladium> * 144, 600, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:nuggetPalladium>, <liquid:fluidpalladium> * 16, 600, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:ingotPalladium>, <liquid:fluidpalladium> * 144, 600, <manametalmod:blockPalladium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:orePalladium>, <liquid:fluidpalladium> * 288, 600, <manametalmod:orePalladium>);
mods.tconstruct.Smeltery.addMelting(<aobd:crushedPalladium>, <liquid:fluidpalladium> * 144, 600, <manametalmod:blockPalladium>);

mods.tconstruct.Smeltery.addMelting(<manametalmod:nuggetThulium>, <liquid:fluidthulium> * 16, 600, <manametalmod:blockThulium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:oreThulium>, <liquid:fluidthulium> * 288, 600, <manametalmod:oreThulium>);
mods.tconstruct.Smeltery.addMelting(<aobd:crushedThulium>, <liquid:fluidthulium> * 144, 600, <manametalmod:blockThulium>);
mods.tconstruct.Smeltery.addMelting(<aobd:clusterThulium>, <liquid:fluidthulium> * 288, 600, <manametalmod:blockThulium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:blockThulium>, <liquid:fluidthulium> * 1296, 600, <manametalmod:blockThulium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:ingotThulium>, <liquid:fluidthulium> * 144, 600, <manametalmod:blockThulium>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:dustThulium>, <liquid:fluidthulium> * 144, 600, <manametalmod:blockThulium>);


mods.tconstruct.Smeltery.removeMelting(<manametalmod:ingotMithril>);
mods.tconstruct.Casting.removeBasinRecipe(<ThermalFoundation:Storage:6>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:102>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:134>);
mods.tconstruct.Casting.removeTableRecipe(<ThermalFoundation:material:70>);

mods.tconstruct.Casting.addBasinRecipe(<ThermalFoundation:Storage:6>, <liquid:fluidmithril> * 1296, null, false, 100);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:102>, <liquid:fluidmithril> * 16, <TConstruct:metalPattern:27>, false, 40);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:134>, <liquid:fluidmithril> * 576, <TConstruct:gearCast>, false, 55);
mods.tconstruct.Casting.addTableRecipe(<ThermalFoundation:material:70>, <liquid:fluidmithril> * 144, <TConstruct:metalPattern>, false, 80);

mods.tconstruct.Smeltery.addMelting(<customnpcs:npcMithrilIngot>, <liquid:fluidmithril> * 144, 750, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:Storage:6>, <liquid:fluidmithril> * 1296, 900, <ThermalFoundation:Storage:6>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:dustMithril>, <liquid:fluidmithril> * 144, 725, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<WitchingGadgets:item.WG_Cluster:24>, <liquid:fluidmithril> * 432, 550, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:legend1>, <liquid:fluidmithril> * 864, 875, <manametalmod:legend1>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:nuggetMithril>, <liquid:fluidmithril> * 16, 700, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:oreMithril>, <liquid:fluidmithril> * 288, 800, <manametalmod:oreMithril>);
mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:Ore:6>, <liquid:fluidmithril> * 288, 800, <ThermalFoundation:Ore:6>);
mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:material:134>, <liquid:fluidmithril> * 576, 900, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:material:102>, <liquid:fluidmithril> * 16, 700, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:blockMithril>, <liquid:fluidmithril> * 1296, 900, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:material:70>, <liquid:fluidmithril> * 144, 750, <manametalmod:blockMithril>);
mods.tconstruct.Smeltery.addMelting(<ThermalFoundation:material:38>, <liquid:fluidmithril> * 144, 725, <manametalmod:blockMithril>);

//禁用饕餮袋子避免複製bug
mods.thaumcraft.Research.removeResearch("HUNGERBAG");