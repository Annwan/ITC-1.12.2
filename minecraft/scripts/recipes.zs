#loader crafttweaker
#modloaded thermalexpansion railcraft projecte gtadditions unidict

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.WeightedItemStack;

//===//=====//===// Functions //===//=====//===// 

function GTGearPattern(rodMaterial as IIngredient, plateMaterial as IIngredient) as IIngredient[][] {
    return [[rodMaterial,plateMaterial,rodMaterial], [plateMaterial,<ore:craftingToolScrewdriver>,plateMaterial], [rodMaterial,plateMaterial,rodMaterial]];
}

function GTSwordPattern(material as IIngredient) as IIngredient[][] {
    return [[null,material,null], [null,material,null], [<gregtech:meta_tool:9>,<ore:stickWood>,<gregtech:meta_tool:6>]];
}

//===//=====//===// Values //===//=====//===//

val remove = [
    <ic2:bronze_pickaxe>,
    <projecte:item.pe_philosophers_stone>,
    <projecte:matter_block:1>,
    <projecte:matter_block>,
] as IItemStack[];

val removeAndHide = [
    <gregtech:meta_item_1:32304>,
    <buildcraftcore:gear_diamond>,
    <buildcraftcore:gear_gold>,
    <buildcraftcore:gear_iron>,
    <buildcraftcore:gear_stone>,
    <buildcraftcore:gear_wood>,
    <forestry:gear_bronze>,
    <forestry:gear_copper>,
    <forestry:gear_tin>,
    <appliedenergistics2:material:40>,
    <railcraft:gear:1>,
    <railcraft:gear:2>,
    <railcraft:gear:3>,
    <railcraft:gear:4>,
    <railcraft:gear:5>,
] as IItemStack[];

val recipesReplace = {
    <minecraft:iron_sword> : GTSwordPattern(<ore:plateIron>),
    <minecraft:golden_sword> : GTSwordPattern(<ore:plateGold>),
    <appliedenergistics2:certus_quartz_sword> : GTSwordPattern(<ore:plateCertusQuartz>),
    <appliedenergistics2:nether_quartz_sword> : GTSwordPattern(<ore:plateNetherQuartz>),
    <minecraft:diamond_sword> : GTSwordPattern(<ore:plateDiamond>),
    <projecte:item.pe_matter:1> : [[<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>], [<projecte:item.pe_matter>,<projecte:item.pe_matter>,<projecte:item.pe_matter>], [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>]],
    <projecte:item.pe_matter> : [[<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>,<ore:blockDiamond>,<projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>]],
    <thermalfoundation:material:22> : GTGearPattern(<ore:stickWood>, <ore:plankWood>),
    <thermalfoundation:material:23> : GTGearPattern(<ore:rodStone>,<ore:plateStone>),
    <thermalfoundation:material:24> : GTGearPattern(<ore:stickIron>,<ore:plateIron>),
    <thermalfoundation:material:25> : GTGearPattern(<ore:stickGold>,<ore:plateGold>),
    <thermalfoundation:material:26> : GTGearPattern(<ore:stickDiamond>,<ore:plateDiamond>),
    <thermalfoundation:material:27> : GTGearPattern(<ore:stickEmerald>,<ore:plateEmerald>),
    <thermalfoundation:material:256> : GTGearPattern(<ore:stickCopper>,<ore:plateCopper>),
    <thermalfoundation:material:257> : GTGearPattern(<ore:stickTin>,<ore:plateTin>),
    <thermalfoundation:material:258> : GTGearPattern(<ore:stickSilver>,<ore:plateSilver>),
    <thermalfoundation:material:259> : GTGearPattern(<ore:stickLead>,<ore:plateLead>),
    <thermalfoundation:material:261> : GTGearPattern(<ore:stickNickel>,<ore:plateNickel>),
    <thermalfoundation:material:262> : GTGearPattern(<ore:stickPlatinum>,<ore:platePlatinum>),
    <thermalfoundation:material:263> : GTGearPattern(<ore:stickIridium>,<ore:plateIridium>),
    <thermalfoundation:material:288> : GTGearPattern(<ore:stickSteel>,<ore:plateSteel>),
    <thermalfoundation:material:289> : GTGearPattern(<ore:stickElectrum>,<ore:plateElectrum>),
    <thermalfoundation:material:290> : GTGearPattern(<ore:stickInvar>,<ore:plateInvar>),
    <thermalfoundation:material:291> : GTGearPattern(<ore:stickBronze>,<ore:plateBronze>),
    <railcraft:gear> : GTGearPattern(<ore:stickBrass>,<ore:plateBrass>),
    // : [[,,], [,,], [,,]],
} as IIngredient[][][IItemStack];

//===//=====//===// Code //===//=====//===//

for item in remove {
    recipes.remove(item);
}

for item in removeAndHide {
    mods.jei.JEI.removeAndHide(item);
}

for key,recipe in recipesReplace {
	recipes.remove(key);
    recipes.addShaped(key, recipe);
}

mods.thermalexpansion.Centrifuge.addRecipe([(<gtadditions:ga_meta_item:32018>) % 5], <minecraft:egg>, <liquid:binnie.dna.raw> * 1000, 80000);

mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block>, <projecte:item.pe_matter> *4);
mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block:1>, <projecte:item.pe_matter:1> *4);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter> *4, <projecte:matter_block>);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter:1> *4, <projecte:matter_block:1>);
