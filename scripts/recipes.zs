#loader crafttweaker
#modloaded gregtech
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.WeightedItemStack;

//This file was created via CT-GUI! Editing it is not advised!
//Don't touch me!
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
//recipes.addShaped(<appliedenergistics2:controller>, [[<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>],[<appliedenergistics2:material:24>, <appliedenergistics2:fluix_block>, <appliedenergistics2:material:24>], [<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]]);
//File End
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
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

mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block>, <projecte:item.pe_matter> *4);
mods.thermalexpansion.Factorizer.addRecipeSplit(<projecte:matter_block:1>, <projecte:item.pe_matter:1> *4);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter> *4, <projecte:matter_block>);
mods.thermalexpansion.Factorizer.addRecipeCombine(<projecte:item.pe_matter:1> *4, <projecte:matter_block:1>);

val assembly_line = mods.gregtech.recipe.RecipeMap.getByName("assembly_line");
assembly_line.recipeBuilder()
    .inputs(<gtadditions:ga_meta_item:32008> * 64,
            <gtadditions:ga_meta_item:32008> * 64,
            <gtadditions:ga_meta_item:32008> * 64,
            <thermalfoundation:material:359>,
            <gregtech:meta_item_1:32677>,
            <gtadditions:ga_meta_item:32018> *24,
            <gregtech:meta_item_1:32724> *20,
            <gregtech:meta_item_1:32725> *64,
            <genetics:misc:8>,
            <gtadditions:ga_meta_item:32011> *64)
    .fluidInputs(<liquid:soldering_alloy> * 4000)
	.fluidInputs(<liquid:neutronium> * 4000)
    .outputs(<sgcraft:zpm>)
    .duration(600)
	.EUt(122880)
	.buildAndRegister();

mods.thermalexpansion.Centrifuge.addRecipe([(<gtadditions:ga_meta_item:32018>) % 5], <minecraft:egg>, <liquid:binnie.dna.raw> * 1000, 80000);

val autoclavered100 = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
autoclavered100.recipeBuilder()
	.inputs([
		<minecraft:diamond>
	])
    .fluidInputs([<fluid:radon>*1000])
	.outputs([<projecte:item.pe_matter:1>])
	.duration(10000)
	.EUt(512)
	.buildAndRegister();

val autoclavedark100 = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
autoclavedark100.recipeBuilder()
	.inputs([
		<minecraft:coal>
	])
    .fluidInputs([<fluid:radon>*1000])
	.outputs([<projecte:item.pe_matter>])
	.duration(30)
	.EUt(7)
	.buildAndRegister();

val autoclavered1 = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
autoclavered1.recipeBuilder()
	.inputs([
		<minecraft:diamond>
	])
    .fluidInputs([<fluid:positive_matter>*5000])
	.outputs([<projecte:item.pe_matter:1>])
	.duration(10000)
	.EUt(512)
	.buildAndRegister();

val autoclavedark1 = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
autoclavedark1.recipeBuilder()
	.inputs([
		<minecraft:coal>
	])
    .fluidInputs([<fluid:neutral_matter>*5000])
	.outputs([<projecte:item.pe_matter>])
	.duration(30)
	.EUt(7)
	.buildAndRegister();

val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
electrolyzer.recipeBuilder()
	.inputs([
		<sgcraft:zpm>
	])
	.outputs([<gregtech:meta_item_1:32599>])
	.duration(1240)
	.EUt(45)
	.buildAndRegister();


val rftool = [
        <rftools:smartwrench>,
		<rftools:rftools_manual>,
		<rftools:rftools_shape_manual>,
		<rftools:dimensional_shard>,
		<rftools:shard_wand>,
		<rftools:infused_diamond>,
		<rftools:infused_enderpearl>,
		<rftools:syringe>,
		<rftools:peace_essence>,
		<rftools:developers_delight>,
		<rftools:network_monitor>,
		<rftools:modifier_module>,
		<rftools:storage_module_tablet>,
		<rftools:storage_module>,
		<rftools:storage_module:1>,
		<rftools:storage_module:2>,
		<rftools:storage_module:6>,
		<rftools:oredict_module>,
		<rftools:generic_module>,
		<rftools:filter_module>,
		<rftools:teleport_probe>,
		<rftools:charged_porter>,
		<rftools:advanced_charged_porter>,
		<rftools:text_module>,
		<rftools:inventory_module>,
		<rftools:inventoryplus_module>,
		<rftools:energy_module>,
		<rftools:energyplus_module>,
		<rftools:clock_module>,
		<rftools:fluid_module>,
		<rftools:fluidplus_module>,
		<rftools:machineinformation_module>,
		<rftools:computer_module>,
		<rftools:button_module>,
		<rftools:elevator_button_module>,
		<rftools:redstone_module>,
		<rftools:counter_module>,
		<rftools:counterplus_module>,
		<rftools:storage_control_module>,
		<rftools:dump_module>,
		<rftools:space_chamber_card>,
		<rftools:shape_card>,
		<rftools:shape_card:1>,
		<rftools:shape_card:2>,
		<rftools:shape_card:3>,
		<rftools:shape_card:4>,
		<rftools:shape_card:5>,
		<rftools:shape_card:6>,
		<rftools:shape_card:7>,
		<rftools:shape_card:8>,
		<rftools:shape_card:9>,
		<rftools:shape_card:10>,
		<rftools:powercell_card>,
		<rftools:regeneration_module>,
		<rftools:regenerationplus_module>,
		<rftools:speed_module>,
		<rftools:speedplus_module>,
		<rftools:haste_module>,
		<rftools:hasteplus_module>,
		<rftools:saturation_module>,
		<rftools:saturationplus_module>,
		<rftools:featherfalling_module>,
		<rftools:featherfallingplus_module>,
		<rftools:flight_module>,
		<rftools:peaceful_module>,
		<rftools:waterbreathing_module>,
		<rftools:nightvision_module>,
		<rftools:blindness_module>,
		<rftools:weakness_module>,
		<rftools:poison_module>,
		<rftools:slowness_module>,
		<rftools:glowing_module>,
		<rftools:luck_module>,
		<rftools:noteleport_module>,
		<rftools:orphaning_card>,
		<rftools:security_card>,
		<rftools:machine_base>,
		<rftools:dimensional_shard_ore>,
		<rftools:dimensional_shard_ore:1>,
		<rftools:dimensional_shard_ore:2>,
		<rftools:coalgenerator>,
		<rftools:crafter1>,
		<rftools:crafter2>,
		<rftools:crafter3>,
		<rftools:modular_storage>,
		<rftools:remote_storage>,
		<rftools:matter_transmitter>,
		<rftools:matter_receiver>,
		<rftools:dialing_device>,
		<rftools:destination_analyzer>,
		<rftools:matter_booster>,
		<rftools:screen>,
		<rftools:creative_screen>,
		<rftools:screen_controller>,
		<rftools:redstone_transmitter_block>,
		<rftools:redstone_receiver_block>,
		<rftools:sequencer_block>,
		<rftools:counter_block>,
		<rftools:logic_block>,
		<rftools:invchecker_block>,
		<rftools:sensor_block>,
		<rftools:analog_block>,
		<rftools:digit_block>,
		<rftools:wire_block>,
		<rftools:timer_block>,
		<rftools:machine_infuser>,
		<rftools:space_chamber>,
		<rftools:space_chamber_controller>,
		<rftools:support_block>,
		<rftools:builder>,
		<rftools:composer>,
		<rftools:locator>,
		<rftools:projector>,
		<rftools:scanner>,
		<rftools:remote_scanner>,
		<rftools:powercell>,
		<rftools:powercell_advanced>,
		<rftools:powercell_creative>,
		<rftools:powercell_simple>,
		<rftools:relay>,
		<rftools:rf_monitor>,
		<rftools:liquid_monitor>,
		<rftools:shield_block1>,
		<rftools:shield_block2>,
		<rftools:shield_block3>,
		<rftools:shield_block4>,
		<rftools:shield_template_block>,
		<rftools:shield_template_block:1>,
		<rftools:shield_template_block:2>,
		<rftools:shield_template_block:3>,
		<rftools:environmental_controller>,
		<rftools:spawner>,
		<rftools:matter_beamer>,
		<rftools:block_protector>,
		<rftools:item_filter>,
		<rftools:security_manager>,
		<rftools:endergenic>,
		<rftools:pearl_injector>,
		<rftools:ender_monitor>,
		<rftools:storage_scanner>,
		<rftools:elevator>,
		<rftools:booster>,
		<rftools:storage_terminal>,
		<rftools:level_emitter>,
		<rftools:simple_dialer>,
		<rftools:invisible_shield_block>,
		<rftools:notick_invisible_shield_block>,
		<rftools:invisible_shield_block_opaque>,
		<rftools:notick_invisible_shield_block_opaque>,
		<rftools:solid_shield_block>,
		<rftools:notick_solid_shield_block>,
		<rftools:camo_shield_block>,
		<rftools:notick_camo_shield_block>,
		<rftools:solid_shield_block_opaque>,
		<rftools:notick_solid_shield_block_opaque>,
		<rftools:camo_shield_block_opaque>,
		<rftools:notick_camo_shield_block_opaque>,
		<rftoolsdim:dimlet_base>,
		<rftoolsdim:dimlet_control_circuit>,
		<rftoolsdim:dimlet_control_circuit:1>,
		<rftoolsdim:dimlet_control_circuit:2>,
		<rftoolsdim:dimlet_control_circuit:3>,
		<rftoolsdim:dimlet_control_circuit:4>,
		<rftoolsdim:dimlet_control_circuit:5>,
		<rftoolsdim:dimlet_control_circuit:6>,
		<rftoolsdim:dimlet_energy_module>,
		<rftoolsdim:dimlet_energy_module:1>,
		<rftoolsdim:dimlet_energy_module:2>,
		<rftoolsdim:dimlet_memory_unit:1>,
		<rftoolsdim:dimlet_memory_unit>,
		<rftoolsdim:dimlet_memory_unit:2>,
		<rftoolsdim:dimlet_type_controller>,
		<rftoolsdim:dimlet_type_controller:1>,
		<rftoolsdim:dimlet_type_controller:2>,
		<rftoolsdim:dimlet_type_controller:3>,
		<rftoolsdim:dimlet_type_controller:4>,
		<rftoolsdim:dimlet_type_controller:5>,
		<rftoolsdim:dimlet_type_controller:6>,
		<rftoolsdim:dimlet_type_controller:7>,
		<rftoolsdim:dimlet_type_controller:8>,
		<rftoolsdim:dimlet_type_controller:9>,
		<rftoolsdim:dimlet_type_controller:10>,
		<rftoolsdim:dimlet_type_controller:11>,
		<rftoolsdim:dimlet_type_controller:12>,
		<rftoolsdim:dimlet_type_controller:13>,
		<rftoolsdim:dimlet_type_controller:14>,
		<rftoolsdim:structure_essence>,
		<rftoolsdim:structure_essence:1>,
		<rftoolsdim:structure_essence:2>,
		<rftoolsdim:structure_essence:3>,
		<rftoolsdim:structure_essence:4>,
		<rftoolsdim:structure_essence:5>,
		<rftoolsdim:structure_essence:6>,
		<rftoolsdim:structure_essence:7>,
		<rftoolsdim:structure_essence:8>,
		<rftoolsdim:structure_essence:9>,
		<rftoolsdim:structure_essence:10>,
		<rftoolsdim:structure_essence:11>,
		<rftoolsdim:known_dimlet:5>.withTag({dkey: "None"}),
		<rftoolsdim:known_dimlet:10>.withTag({dkey: "None"}),
		<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal"}),
		<rftoolsdim:known_dimlet:2>.withTag({dkey: "minecraft:stone@0"}),
		<rftoolsdim:known_dimlet:1>.withTag({dkey: "minecraft:water@0"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "1"}),
		<rftoolsdim:known_dimlet:12>.withTag({dkey: "Single"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "0"}),
		<rftoolsdim:known_dimlet:3>.withTag({dkey: "Default"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "3"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "2"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "5"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "4"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "7"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "6"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "9"}),
		<rftoolsdim:known_dimlet:6>.withTag({dkey: "Void"}),
		<rftoolsdim:known_dimlet:9>.withTag({dkey: "8"}),
		<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.night"}),
		<rftoolsdim:known_dimlet:4>.withTag({dkey: "normal.day"}),
		<rftoolsdim:known_dimlet:8>.withTag({dkey: "Normal"}),
		<rftoolsdim:known_dimlet:7>.withTag({dkey: "None"}),
		<rftoolsdim:known_dimlet:6>.withTag({dkey: "Flat"}),
		<rftoolsdim:known_dimlet:13>.withTag({dkey: "Default"}),
		<rftoolsdim:known_dimlet:12>.withTag({dkey: "Default"}),
		<rftoolsdim:efficiency_essence>,
		<rftoolsdim:mediocre_efficiency_essence>,
		<rftoolsdim:empty_dimension_tab>,
		<rftoolsdim:dimlet_template>,
		<rftoolsdim:dimlet_parcel>,
		<rftoolsdim:rftoolsdim_manual>,
		<rftoolsdim:dimension_monitor>,
		<rftoolsdim:dimension_module>,
		<rftoolsdim:phased_field_generator>,
		<rftoolsdim:dimensional_blank_block>,
		<rftoolsdim:dimensional_block>,
		<rftoolsdim:dimensional_cross2_block>,
		<rftoolsdim:dimensional_cross_block>,
		<rftoolsdim:dimensional_pattern1_block>,
		<rftoolsdim:dimensional_pattern2_block>,
		<rftoolsdim:dimensional_small_blocks>,
		<rftoolsdim:dimension_enscriber>,
		<rftoolsdim:dimension_builder>,
		<rftoolsdim:dimension_editor>,
		<rftoolsdim:dimlet_workbench>,
		<rftoolsdim:activity_probe>,
		<rftoolsdim:energy_extractor>,
		<rftoolsdim:material_absorber>,
		<rftoolsdim:liquid_absorber>,
		<rftoolsdim:biome_absorber>,
		<rftoolsdim:terrain_absorber>,
		<rftoolsdim:feature_absorber>,
		<rftoolsdim:time_absorber>,
		<rftoolsdim:fake_water>,
		<rftoolsdim:fake_gravel>,
		<rftoolsdim:fake_sand>,

] as IIngredient[];

for remove in rftool{
    mods.jei.JEI.removeAndHide(remove);
}