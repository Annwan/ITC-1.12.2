#modloaded gregtech projecte gtadditions genetics

import mods.gregtech.recipe.RecipeMap;

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");

assembler.recipeBuilder()
	.inputs([
		<projecte:matter_block:1>,
		<projecte:matter_block>
	])
    .fluidInputs([<fluid:coal>*3000])
	.outputs([<projecte:item.pe_philosophers_stone>])
	.duration(10000)
	.EUt(512)
	.buildAndRegister();

assembly_line.recipeBuilder()
    .inputs([
		<gtadditions:ga_meta_item:32008> * 64,
		<gtadditions:ga_meta_item:32008> * 64,
		<gtadditions:ga_meta_item:32008> * 64,
		<thermalfoundation:material:359>,
		<gregtech:meta_item_1:32677>,
		<gtadditions:ga_meta_item:32018> *24,
		<gregtech:meta_item_1:32724> *20,
		<gregtech:meta_item_1:32725> *64,
		<genetics:misc:8>,
		<gtadditions:ga_meta_item:32011> *64
	])
    .fluidInputs(<liquid:soldering_alloy> * 4000)
	.fluidInputs(<liquid:neutronium> * 4000)
    .outputs(<sgcraft:zpm>)
    .duration(600)
	.EUt(122880)
	.buildAndRegister();


autoclave.recipeBuilder()
	.inputs([<minecraft:diamond>])
    .fluidInputs([<fluid:radon>*1000])
	.outputs([<projecte:item.pe_matter:1>])
	.duration(10000)
	.EUt(512)
	.buildAndRegister();

autoclave.recipeBuilder()
	.inputs([<minecraft:coal>])
    .fluidInputs([<fluid:radon>*1000])
	.outputs([<projecte:item.pe_matter>])
	.duration(30)
	.EUt(7)
	.buildAndRegister();

autoclave.recipeBuilder()
	.inputs([<minecraft:diamond>])
    .fluidInputs([<fluid:positive_matter>*5000])
	.outputs([<projecte:item.pe_matter:1>])
	.duration(10000)
	.EUt(512)
	.buildAndRegister();

autoclave.recipeBuilder()
	.inputs([<minecraft:coal>])
    .fluidInputs([<fluid:neutral_matter>*5000])
	.outputs([<projecte:item.pe_matter>])
	.duration(30)
	.EUt(7)
	.buildAndRegister();

electrolyzer.recipeBuilder()
	.inputs([<sgcraft:zpm>])
	.outputs([<gregtech:meta_item_1:32599>])
	.duration(1240)
	.EUt(45)
	.buildAndRegister();