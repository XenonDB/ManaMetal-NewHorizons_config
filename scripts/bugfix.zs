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

furnace.addRecipe(<manametalmod:plateNetherite> * 4, <aobd:crushedPurifiedNetherite>, 0.5);
furnace.addRecipe(<manametalmod:plateNetherite> * 4, <aobd:crushedNetherite>, 0.5);
furnace.addRecipe(<manametalmod:plateNetherite> * 8, <aobd:clusterNetherite>, 0.5);
furnace.addRecipe(<manametalmod:plateNetherite>, <ore:dustNetherite>, 0.5);
//furnace.addRecipe(<manametalmod:plateNetherite> * 8, <manametalmod:ItemMetalCrystals:142>, 0.5);

mods.immersiveengineering.ArcFurnace.removeRecipe(<manametalmod:ingotNetherite>);
mods.immersiveengineering.ArcFurnace.addRecipe(<manametalmod:plateNetherite> * 8, <manametalmod:oreNetherite>, <ImmersiveEngineering:material:13>, 200, 512, [], "Ores");

mods.thermalexpansion.Furnace.removeRecipe(<aobd:crushedPurifiedNetherite>);
mods.thermalexpansion.Furnace.removeRecipe(<aobd:crushedNetherite>);
mods.thermalexpansion.Furnace.removeRecipe(<aobd:clusterNetherite>);
//mods.thermalexpansion.Furnace.removeRecipe(<manametalmod:ItemMetalCrystals:142>);
mods.thermalexpansion.Furnace.removeRecipe(<ore:dustNetherite>);

mods.thermalexpansion.Furnace.addRecipe(1600, <aobd:crushedPurifiedNetherite>, <manametalmod:plateNetherite> * 4);
mods.thermalexpansion.Furnace.addRecipe(1600, <aobd:crushedNetherite>, <manametalmod:plateNetherite> * 4);
mods.thermalexpansion.Furnace.addRecipe(1600, <aobd:clusterNetherite>, <manametalmod:plateNetherite> * 8);
//mods.thermalexpansion.Furnace.addRecipe(1600, <manametalmod:ItemMetalCrystals:142>, <manametalmod:plateNetherite> * 8);

mods.thermalexpansion.Smelter.removeRecipe(<ThermalExpansion:material:515>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:20>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<ThermalFoundation:material:512>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:oreNetherite>);
mods.thermalexpansion.Smelter.removeRecipe(<minecraft:sand>, <ore:dustNetherite>);

mods.thermalexpansion.Smelter.addRecipe(4000, <manametalmod:oreNetherite>, <ThermalExpansion:material:515>, <manametalmod:plateNetherite> * 12, <ThermalExpansion:material:514>, 75);
mods.thermalexpansion.Smelter.addRecipe(4000, <manametalmod:oreNetherite>, <ThermalFoundation:material:20>, <manametalmod:plateNetherite> * 12, <ThermalExpansion:material:515>, 75);
mods.thermalexpansion.Smelter.addRecipe(4000, <manametalmod:oreNetherite>, <ThermalFoundation:material:512>, <manametalmod:plateNetherite> * 8, <ThermalExpansion:material:515>, 15);
mods.thermalexpansion.Smelter.addRecipe(3200, <manametalmod:oreNetherite>, <minecraft:sand>, <manametalmod:plateNetherite> * 8, <ThermalExpansion:material:515>, 5);

mods.tconstruct.Smeltery.removeMelting(<manametalmod:oreNetherite>);
mods.tconstruct.Smeltery.removeMelting(<aobd:crushedNetherite>);
mods.tconstruct.Smeltery.removeMelting(<manametalmod:dustNetherite>);
mods.tconstruct.Smeltery.removeMelting(<aobd:clusterNetherite>);

mods.witchinggadgets.InfernalBlastfurnace.removeRecipe(<manametalmod:ingotNetherite>);
mods.witchinggadgets.InfernalBlastfurnace.addRecipe(<manametalmod:dustNetherite> * 12,<aobd:clusterNetherite>,440,<aobd:dustTinyNetherite>,false);

mods.mekanism.Enrichment.removeRecipe(<aobd:dustDirtyNetherite>);
mods.mekanism.Enrichment.addRecipe(<aobd:dustDirtyNetherite>, <manametalmod:dustNetherite> * 4);

//避免使用該自我注魔能力進行無消耗合成
mods.thaumcraft.Research.removeResearch("morphicFingers");

//移除超吟附魔台
mods.thaumcraft.Research.removeResearch("TB.Overchanter");

//給M3流體祕銀配方
mods.tconstruct.Smeltery.removeMelting(<manametalmod:ingotMithril>);
mods.tconstruct.Smeltery.addMelting(<manametalmod:ingotMithril>, <liquid:fluidmithril> * 144, 200, <manametalmod:blockMithril>);

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

//在下個版本修好配方前先暫時由我代替修
//mods.immersiveengineering.BlastFurnace.removeRecipe(<manametalmod:ingotCompressionSteel>);
//mods.immersiveengineering.BlastFurnace.addRecipe(<manametalmod:ingotCompressionSteel>, <ore:ingotSteel>, 2400, <ImmersiveEngineering:material:13> * 4);

