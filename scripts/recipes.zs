#loader crafttweaker
#modloaded thermalexpansion thermalfoundation appliedenergistics2 railcraft projecte gtadditions binnie

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.WeightedItemStack;


val ironsword = <minecraft:iron_sword>;
val goldsword = <minecraft:golden_sword>;
val diamondsword = <minecraft:diamond_sword>;
val certussword = <appliedenergistics2:certus_quartz_sword>;
val nethersword = <appliedenergistics2:nether_quartz_sword>;


//#Remove
recipes.remove(<thermalfoundation:material:24>);
recipes.remove(<thermalfoundation:material:25>);
recipes.removeShaped(<thermalfoundation:material:25>, [[null, <minecraft:gold_ingot>, null],[<minecraft:gold_ingot>, <thermalfoundation:material:24>, <minecraft:gold_ingot>], [null, <minecraft:gold_ingot>, null]]);
recipes.remove(<thermalfoundation:material:24>);
recipes.remove(<thermalfoundation:material:25>);
recipes.remove(<thermalfoundation:material:26>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_wood>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_stone>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_diamond>);
recipes.remove(<thermalfoundation:material:23>);
recipes.remove(<railcraft:gear:3>);
mods.jei.JEI.removeAndHide(<gregtech:meta_item_1:32304>);
recipes.remove(<thermalfoundation:material:25>);
recipes.remove(<thermalfoundation:material:24>);
recipes.remove(<thermalfoundation:material:22>);
recipes.remove(<railcraft:gear>);
recipes.remove(<projecte:item.pe_philosophers_stone>);
recipes.remove(<projecte:item.pe_matter>);
recipes.remove(<projecte:matter_block>);
recipes.remove(<projecte:item.pe_matter:1>);
recipes.remove(<projecte:matter_block:1>);
recipes.remove(ironsword);
recipes.remove(goldsword);
recipes.remove(diamondsword);
recipes.remove(certussword);
recipes.remove(nethersword);
recipes.remove(<ic2:bronze_pickaxe>);
//Don't touch me!
//#Add
recipes.addShaped(<thermalfoundation:material:26>, [[<ore:stickDiamond>, <ore:plateDiamond>, <ore:stickDiamond>],[<ore:plateDiamond>, <ore:craftingToolScrewdriver>, <ore:plateDiamond>], [<ore:stickDiamond>, <ore:plateDiamond>, <ore:stickDiamond>]]);
recipes.addShapedMirrored(<thermalfoundation:material:25>, [[<ore:stickGold>, <ore:plateGold>, <ore:stickGold>],[<ore:plateGold>, <gregtech:meta_tool:11>, <ore:plateGold>], [<ore:stickGold>, <ore:plateGold>, <ore:stickGold>]]);
recipes.addShapedMirrored(<thermalfoundation:material:23>, [[<ore:rodStone>, <ore:plateStone>, <ore:rodStone>],[<ore:plateStone>, <gregtech:meta_tool:11>, <ore:plateStone>], [<ore:rodStone>, <ore:plateStone>, <ore:rodStone>]]);
recipes.addShaped(<thermalfoundation:material:24>, [[<ore:stickIron>, <ore:plateIron>, <ore:stickIron>],[<ore:plateIron>, <gregtech:meta_tool:11>, <ore:plateIron>], [<ore:stickIron>, <ore:plateIron>, <ore:stickIron>]]);
recipes.addShaped(<thermalfoundation:material:22>, [[<ore:stickWood>, <ore:plankWood>, <ore:stickWood>],[<ore:plankWood>, <gregtech:meta_tool:11>, <ore:plankWood>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>]]);
recipes.addShapedMirrored(<railcraft:gear>, [[<ore:stickBrass>, <ore:plateBrass>, <ore:stickBrass>],[<ore:plateBrass>, <gregtech:meta_tool:11>, <ore:plateBrass>], [<ore:stickBrass>, <ore:plateBrass>, <ore:stickBrass>]]);
recipes.addShapedMirrored(<projecte:item.pe_matter:1>, [[<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>],[<projecte:item.pe_matter>, <projecte:item.pe_matter>, <projecte:item.pe_matter>], [<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>]]);
recipes.addShaped(<projecte:item.pe_matter>, [[<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>],[<projecte:item.pe_fuel:2>, <ore:blockDiamond>, <projecte:item.pe_fuel:2>], [<projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>]]);
recipes.addShapedMirrored(ironsword, [[null, <ore:plateIron>, null],[null, <ore:plateIron>, null], [<gregtech:meta_tool:9>, <ore:stickWood>, <gregtech:meta_tool:6>]]);
recipes.addShapedMirrored(goldsword, [[null, <ore:plateGold>, null],[null, <ore:plateGold>, null], [<gregtech:meta_tool:9>, <ore:stickWood>, <gregtech:meta_tool:6>]]);
recipes.addShapedMirrored(diamondsword, [[null, <ore:plateDiamond>, null],[null, <ore:plateDiamond>, null], [<gregtech:meta_tool:9>, <ore:stickWood>, <gregtech:meta_tool:6>]]);
recipes.addShapedMirrored(certussword, [[null, <ore:plateCertusQuartz>, null],[null, <ore:plateCertusQuartz>, null], [<gregtech:meta_tool:9>, <ore:stickWood>, <gregtech:meta_tool:6>]]);
recipes.addShapedMirrored(nethersword, [[null, <ore:plateNetherQuartz>, null],[null, <ore:plateNetherQuartz>, null], [<gregtech:meta_tool:9>, <ore:stickWood>, <gregtech:meta_tool:6>]]);
//File End

mods.thermalexpansion.Centrifuge.addRecipe([(<gtadditions:ga_meta_item:32018>) % 5], <minecraft:egg>, <liquid:binnie.dna.raw> * 1000, 80000);
mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block>, <projecte:item.pe_matter> *4);
mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block:1>, <projecte:item.pe_matter:1> *4);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter> *4, <projecte:matter_block>);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter:1> *4, <projecte:matter_block:1>);
