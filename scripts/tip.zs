import minetweaker.item.IItemStack;

<manametalmod:BlockTileEntityStrengthenTables>.addTooltip(format.darkRed("該功能維修中，請勿使用"));
//<manametalmod:OreMine>.addTooltip(format.darkRed("年久失修，請勿使用"));
//<manametalmod:SwordGem>.addTooltip(format.darkRed("該功能維修中，請勿使用"));
<manametalmod:ItemUniverseMessages>.addTooltip(format.darkRed("請勿傳送違反善良風俗或中華民國法律的字句，否則後果自負"));
<questbook:ItemQuestBook>.addTooltip(format.gold("按下快捷鍵(預設`)也可以開啟任務清單，本書並非必要。"));
<manametalmod:oreBlackDiamond>.addTooltip(format.red("該礦物移除了denseore的礦典名，所以不能放入sagmill磨出鑽石礦"));
<minecraft:bedrock>.addTooltip(format.green("True bedrock LOL"));
<manametalmod:FakeBedrock>.addTooltip(format.red("Fake bedrock#"));
<manametalmod:ingotBedrock>.addTooltip(format.gold("透過基岩術式、注魔或使用帶有'"+ format.lightPurple("強大到足以破壞基岩") +"'標示的工具挖掘基岩來獲得"));
<manametalmod:ItemPortalMineCaveCore>.addTooltip(format.gold("可於採礦技巧商店中購買"));
<manametalmod:ItemToolWandBlocks>.addTooltip(format.red("不要用它搬pylon!!否則Reika會「預防性崩潰」!!"));
<DraconicEvolution:chaosShard>.addTooltip(format.gold("透過擊倒混沌守衛，或神龍反應爐的燃料反應完後的產物得到"));
<DraconicEvolution:chaosFragment:*>.addTooltip(format.gold("透過擊倒混沌守衛，或神龍反應爐的燃料反應完後的產物得到"));

<RotaryCraft:rotarycraft_item_customextract:*>.addTooltip(format.gold("如果有人覺得顏色母湯的話，可以幫我設定"));
<RotaryCraft:rotarycraft_item_customingot:*>.addTooltip(format.gold("如果有人覺得顏色母湯的話，可以幫我設定"));

<universalsingularities:universal.general.singularity:11>.addTooltip(format.gold("配方更改為使用終極泰拉鋼錠製作"));

<manametalmod:PlatinumNetherStar>.addTooltip(format.gold("Star Platinum!!"));

//------------------------------------------------------------------------
//礦物生成統一

val nogenOres = [<manametalmod:oreMoonstone>, <manametalmod:oreSunstone>, <manametalmod:oreSilver>, <manametalmod:oreNickel>, <manametalmod:oreAluminum>, <manametalmod:oreIridium>, <Mekanism:OreBlock>, <manametalmod:oreAmber>, <manametalmod:orePurgatoryIron>, <manametalmod:oreEnderGold>, <manametalmod:orePlatinum>] as IItemStack[];

for i in nogenOres {
	i.addTooltip(format.red("調整為不會自然生成"));
}
<manametalmod:oreIridium>.addTooltip(format.gold("可透過其他方法(雷射挖礦、斗輪挖礦...)來獲得原礦"));
