#loader crafttweaker
#modloaded thermalexpansion railcraft projecte gtadditions unidict

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.WeightedItemStack;

val remove = [
    <ic2:bronze_pickaxe>,
    <projecte:item.pe_philosophers_stone>,
    <projecte:matter_block:1>,
    <projecte:matter_block>,
    <railcraft:gear:3>,
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
] as IItemStack[];

val recipesReplace = {
    <minecraft:iron_sword> : [[null,<ore:plateIron>,null], [null,<ore:plateIron>,null], [<gregtech:meta_tool:9>,<ore:stickWood>,<gregtech:meta_tool:6>]],
    <minecraft:golden_sword> : [[null,<ore:plateGold>,null], [null,<ore:plateGold>,null], [<gregtech:meta_tool:9>,<ore:stickWood>,<gregtech:meta_tool:6>]],
    <appliedenergistics2:certus_quartz_sword> : [[null,<ore:plateCertusQuartz>,null], [null,<ore:plateCertusQuartz>,null], [<gregtech:meta_tool:9>,<ore:stickWood>,<gregtech:meta_tool:6>]],
    <appliedenergistics2:nether_quartz_sword> : [[null,<ore:plateNetherQuartz>,null], [null,<ore:plateNetherQuartz>,null], [<gregtech:meta_tool:9>,<ore:stickWood>,<gregtech:meta_tool:6>]],
    <minecraft:diamond_sword> : [[null,<ore:plateDiamond>,null], [null, <ore:plateDiamond>, null], [<gregtech:meta_tool:9>,<ore:stickWood>,<gregtech:meta_tool:6>]],
    <projecte:item.pe_matter:1> : [[<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>], [<projecte:item.pe_matter>,<projecte:item.pe_matter>,<projecte:item.pe_matter>], [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>]],
    <projecte:item.pe_matter> : [[<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>,<ore:blockDiamond>,<projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>,<projecte:item.pe_fuel:2>]],
    // : [[,,], [,,], [,,]],
} as IIngredient[][][IItemStack];

val gearReplace = {
    <thermalfoundation:material:22> : [<ore:stickWood>, <ore:plankWood>],
    <thermalfoundation:material:23> : [<ore:rodStone>,<ore:plateStone>],
    <thermalfoundation:material:24> : [<ore:stickIron>,<ore:plateIron>],
    <thermalfoundation:material:25> : [<ore:stickGold>,<ore:plateGold>],
    <thermalfoundation:material:26> : [<ore:stickDiamond>,<ore:plateDiamond>],
    <thermalfoundation:material:27> : [<ore:stickEmerald>,<ore:plateEmerald>],
    <railcraft:gear> : [<ore:stickBrass>,<ore:plateBrass>],
    // : [,],
} as IIngredient[][IItemStack];

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

for key,materials in gearReplace {
    recipes.remove(key);
    recipes.addShaped(key,[[materials[0],materials[1],materials[0]], [materials[1],<ore:craftingToolScrewdriver>,materials[1]], [materials[0],materials[1],materials[0]]]);
}

mods.thermalexpansion.Centrifuge.addRecipe([(<gtadditions:ga_meta_item:32018>) % 5], <minecraft:egg>, <liquid:binnie.dna.raw> * 1000, 80000);

mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block>, <projecte:item.pe_matter> *4);
mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block:1>, <projecte:item.pe_matter:1> *4);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter> *4, <projecte:matter_block>);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter:1> *4, <projecte:matter_block:1>);
