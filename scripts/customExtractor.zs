import minetweaker.item.IItemStack;

<ore:ingotShadow>.add(<RotaryCraft:rotarycraft_item_customingot:0>);
mods.mekanism.Enrichment.addRecipe(<RotaryCraft:rotarycraft_item_modingots:87>, <mo:dilithium_crystal>);

<ore:ingotLiquifiedCoralium>.add(<RotaryCraft:rotarycraft_item_customingot:1>);
<ore:ingotAbyssalnite>.add(<RotaryCraft:rotarycraft_item_customingot:2>);
<ore:gemCoralium>.add(<RotaryCraft:rotarycraft_item_customingot:3>);

<ore:gemBlackDiamond>.add(<RotaryCraft:rotarycraft_item_customingot:4>);

<ore:ingotManaDragonCrystal>.add(<RotaryCraft:rotarycraft_item_customingot:20>);
<ore:ingotManaEnderCrystal>.add(<RotaryCraft:rotarycraft_item_customingot:21>);
<ore:ingotManaSpiritSteel>.add(<RotaryCraft:rotarycraft_item_customingot:22>);
<ore:ingotAdamantine>.add(<RotaryCraft:rotarycraft_item_customingot:27>);
<ore:ingotMithril>.add(<RotaryCraft:rotarycraft_item_customingot:28>);
<ore:ingotSoulSteel>.add(<RotaryCraft:rotarycraft_item_customingot:29>);
<ore:ingotMysteriousIron>.add(<RotaryCraft:rotarycraft_item_customingot:30>);
<ore:ingotHolyCopper>.add(<RotaryCraft:rotarycraft_item_customingot:31>);
<ore:ingotRainbowSteel>.add(<RotaryCraft:rotarycraft_item_customingot:32>);
<ore:ingotTitan>.add(<RotaryCraft:rotarycraft_item_customingot:33>);
<ore:ingotOrichalcum>.add(<RotaryCraft:rotarycraft_item_customingot:34>);
<ore:ingotRosite>.add(<RotaryCraft:rotarycraft_item_customingot:35>);
<ore:ingotYamagata>.add(<RotaryCraft:rotarycraft_item_customingot:36>);
<ore:ingotBiliha>.add(<RotaryCraft:rotarycraft_item_customingot:37>);
<ore:ingotYadras>.add(<RotaryCraft:rotarycraft_item_customingot:38>);
<ore:ingotAcanoy>.add(<RotaryCraft:rotarycraft_item_customingot:39>);
<ore:ingotShadowSecretGold>.add(<RotaryCraft:rotarycraft_item_customingot:40>);
<ore:ingotTritanium>.add(<RotaryCraft:rotarycraft_item_customingot:41>);

<ore:gemFlyGem>.add(<RotaryCraft:rotarycraft_item_customingot:55>);
<ore:gemLightScrap>.add(<RotaryCraft:rotarycraft_item_customingot:56>);
<ore:gemRainbowDiamond>.add(<RotaryCraft:rotarycraft_item_customingot:57>);

<ore:ingotBismuth>.add(<RotaryCraft:rotarycraft_item_customingot:5>);
<ore:ingotChromium>.add(<RotaryCraft:rotarycraft_item_customingot:6>);
<ore:ingotLithium>.add(<RotaryCraft:rotarycraft_item_customingot:7>);
<ore:ingotManganese>.add(<RotaryCraft:rotarycraft_item_customingot:8>);
<ore:ingotMolybdenum>.add(<RotaryCraft:rotarycraft_item_customingot:9>);
<ore:ingotPalladium>.add(<RotaryCraft:rotarycraft_item_customingot:10>);
<ore:ingotThulium>.add(<RotaryCraft:rotarycraft_item_customingot:11>);
<ore:ingotVanadium>.add(<RotaryCraft:rotarycraft_item_customingot:12>);
<ore:ingotWolfram>.add(<RotaryCraft:rotarycraft_item_customingot:13>);
<ore:ingotYttrium>.add(<RotaryCraft:rotarycraft_item_customingot:14>);
<ore:ingotMysteriousSoul>.add(<RotaryCraft:rotarycraft_item_customingot:15>);
<ore:ingotPreciousIron>.add(<RotaryCraft:rotarycraft_item_customingot:16>);
<ore:ingotRainbowOpal>.add(<RotaryCraft:rotarycraft_item_customingot:17>);
<ore:ingotSoulGold>.add(<RotaryCraft:rotarycraft_item_customingot:18>);
<ore:ingotStartleSilver>.add(<RotaryCraft:rotarycraft_item_customingot:19>);
<ore:ingotCerium>.add(<RotaryCraft:rotarycraft_item_customingot:23>);
<ore:ingotAntimony>.add(<RotaryCraft:rotarycraft_item_customingot:24>);
<ore:ingotRhodium>.add(<RotaryCraft:rotarycraft_item_customingot:25>);
<ore:ingotScandium>.add(<RotaryCraft:rotarycraft_item_customingot:26>);

<ore:gemEnergyCrystal>.add(<RotaryCraft:rotarycraft_item_customingot:42>);
<ore:gemGoslarda>.add(<RotaryCraft:rotarycraft_item_customingot:43>);
<ore:gemLunaStone>.add(<RotaryCraft:rotarycraft_item_customingot:44>);
<ore:gemAquamarine>.add(<RotaryCraft:rotarycraft_item_customingot:45>);
<ore:gemCitrine>.add(<RotaryCraft:rotarycraft_item_customingot:46>);
<ore:gemCordierite>.add(<RotaryCraft:rotarycraft_item_customingot:47>);
<ore:gemGarnet>.add(<RotaryCraft:rotarycraft_item_customingot:48>);
<ore:gemJade>.add(<RotaryCraft:rotarycraft_item_customingot:49>);
<ore:gemOpal>.add(<RotaryCraft:rotarycraft_item_customingot:50>);
<ore:gemSpinel>.add(<RotaryCraft:rotarycraft_item_customingot:51>);
<ore:gemTanzanite>.add(<RotaryCraft:rotarycraft_item_customingot:52>);
<ore:gemTourmaline>.add(<RotaryCraft:rotarycraft_item_customingot:53>);
<ore:gemZircon>.add(<RotaryCraft:rotarycraft_item_customingot:54>);

<ore:dustNetherite>.add(<RotaryCraft:rotarycraft_item_customingot:58>);


//flake燒煉處裡
//furnace.remove(<RotaryCraft:rotarycraft_item_customingot:58>);

mods.thermalexpansion.Furnace.removeRecipe(<RotaryCraft:rotarycraft_item_customextract:235>);
furnace.addRecipe(<manametalmod:plateNetherite>, <RotaryCraft:rotarycraft_item_customextract:235>);
mods.thermalexpansion.Furnace.addRecipe(1600, <RotaryCraft:rotarycraft_item_customextract:235>, <manametalmod:plateNetherite>);

//把紅寶石和藍寶石的燒煉產量調整為2份
val flakes = [
	<RotaryCraft:rotarycraft_item_modextracts:103>,
	<RotaryCraft:rotarycraft_item_modextracts:99>
] as IItemStack[];
val products = [
	<manametalmod:gemSapphire>,
	<manametalmod:gemRuby>
] as IItemStack[];

for i, flake in flakes {
	mods.thermalexpansion.Furnace.removeRecipe(flake);
	furnace.addRecipe(products[i] * 2, flake);
	mods.thermalexpansion.Furnace.addRecipe(1600, flake, products[i] * 2);
}
