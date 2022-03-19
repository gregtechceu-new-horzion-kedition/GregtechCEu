


// --- Vars ---
val grainsInfinity = <enderio:item_material:20>;

// --- Removes ---
mods.jei.JEI.hideCategory("AlloySmelter");
mods.jei.JEI.hideCategory("SagMill");
mods.jei.JEI.hideCategory("GrindingBall");
mods.jei.JEI.hideCategory("StirlingGenerator");
mods.jei.JEI.hideCategory("CombustionGenerator");

mods.jei.JEI.removeAndHide(<enderio:item_alloy_ball:*>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel:*>);

mods.jei.JEI.removeAndHide(<enderio:item_material:66>);
mods.jei.JEI.removeAndHide(<enderio:block_combustion_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_enhanced_combustion_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_stirling_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_stirling_generator>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_enhanced_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_enhanced_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_lava_generator>);

// remove high tier conduits
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:7>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:8>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:9>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:10>);
mods.jei.JEI.removeAndHide(<enderio:item_endergy_conduit:11>);

// --- Recipes ----
// Basic Capacitor
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped(<enderio:item_basic_capacitor>, 
	[[null, <ore:nuggetGold>, grainsInfinity],
	[<ore:nuggetGold>, <ore:circuitPrimitive>, <ore:nuggetGold>],
	[grainsInfinity, <ore:nuggetGold>, null]]);
recipes.addShaped(<enderio:item_basic_capacitor>, 
	[[null, <ore:nuggetGold>, grainsInfinity],
	[<ore:nuggetGold>, <ore:componentCapacitor>, <ore:nuggetGold>],
	[grainsInfinity, <ore:nuggetGold>, null]]);
assembler.recipeBuilder()
    .inputs([<ore:ingotGold>, <ore:componentCapacitor> *3, grainsInfinity *3])
    .outputs([<enderio:item_basic_capacitor> *3])
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// Double-Layer Capacitor
assembler.recipeBuilder()
    .inputs([<ore:ingotEnergeticAlloy>, <enderio:item_basic_capacitor> *6, <ore:dustCoal> *3])
    .outputs([<enderio:item_basic_capacitor:1> *3])
    .duration(400)
    .EUt(16)
    .buildAndRegister();

// Octadic Capacitor
assembler.recipeBuilder()
    .inputs([<ore:ingotVibrantAlloy>, <enderio:item_basic_capacitor:1> *6, <ore:blockGlowstone> *3])
    .outputs([<enderio:item_basic_capacitor:2> *3])
    .duration(400)
    .EUt(16)
    .buildAndRegister();

// Electrical Steel
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotIron>, <ore:dustSilicon>])
    .outputs([<enderio:item_alloy_ingot>])
    .duration(256)
    .EUt(32)
    .buildAndRegister();

// Energetic Alloy Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotGold> *2, <ore:dustGlowstone>])
    .outputs([<enderio:item_alloy_ingot:1> *2])
    .duration(256)
    .EUt(32)
    .buildAndRegister();

// Vibrant Alloy Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotEnergeticAlloy> *2, <ore:enderpearl>])
    .outputs([<enderio:item_alloy_ingot:2> *2])
    .duration(256)
    .EUt(32)
    .buildAndRegister();

// Redstone Alloy Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:dustRedstone>, <ore:dustSilicon>])
    .outputs([<enderio:item_alloy_ingot:3>])
    .duration(256)
    .EUt(32)
    .buildAndRegister();

// Conductive Iron Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:dustRedstone>, <ore:ingotIron>])
    .outputs([<enderio:item_alloy_ingot:4>])
    .duration(256)
    .EUt(32)
    .buildAndRegister();

// Pulsating Iron Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:dustUranium>, <ore:ingotIron>])
    .outputs([<enderio:item_alloy_ingot:5>])
    .duration(256)
    .EUt(32)
    .buildAndRegister();

// Dark Steel Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotSteel>, <ore:obsidian>])
    .outputs([<enderio:item_alloy_ingot:6>])
    .duration(160)
    .EUt(32)
    .buildAndRegister();

// Soularium Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotGold>, <minecraft:soul_sand>])
    .outputs([<enderio:item_alloy_ingot:7>])
    .duration(256)
    .EUt(32)
    .buildAndRegister();

// End Steel Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:ingotSteel>, <ore:obsidian>])
    .outputs([<enderio:item_alloy_ingot:8>])
    .duration(2000)
    .property("temperature", 1000)
    .EUt(120)
    .buildAndRegister();

// Crude Steel Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotIron>, <ore:ingotWroughtIron>])
    .outputs([<enderio:item_alloy_endergy_ingot> *2])
    .duration(160)
    .EUt(16)
    .buildAndRegister();

// Crystalline Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:ingotVibrantAlloy>, <ore:ingotAluminium>])
    .outputs([<enderio:item_alloy_endergy_ingot:1> *2])
    .duration(200)
    .property("temperature", 1000)
    .EUt(120)
    .buildAndRegister();

// Melodic Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:ingotCrystallineAlloy>, <ore:ingotAluminium>])
    .outputs([<enderio:item_alloy_endergy_ingot:2> *2])
    .duration(600)
    .property("temperature", 1800)
    .EUt(120)
    .buildAndRegister();

// Stellar Alloy Ingot
electric_blast_furnace.recipeBuilder()
    .inputs([<ore:ingotSteel>, <ore:obsidian>])
    .outputs([<enderio:item_alloy_endergy_ingot:3>])
    .duration(2000)
    .property("temperature", 2700)
    .EUt(120)
    .buildAndRegister();

// Energetic Silver Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotSilver>, <ore:ingotGold>])
    .outputs([<enderio:item_alloy_endergy_ingot:5> *2])
    .duration(200)
    .EUt(16)
    .buildAndRegister();

// Vivid Alloy Ingot
alloy_smelter.recipeBuilder()
    .inputs([<ore:ingotVibrantAlloy>, <ore:ingotEnergeticSilver>])
    .outputs([<enderio:item_alloy_endergy_ingot:6> *2])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

// Fused Quartz
recipes.remove(<enderio:block_fused_quartz>);
alloy_smelter.recipeBuilder()
    .inputs([<ore:gemNetherQuartz> *4])
    .outputs([<enderio:block_fused_quartz>])
    .duration(160)
    .EUt(16)
    .buildAndRegister();


// Simple Machine Chassis
recipes.remove(<enderio:item_material>);
recipes.addShaped(<enderio:item_material>, 
    [[<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>], 
    [<ore:ingotIron>, <gregtech:machine:985>, <ore:ingotIron>], 
	[<ore:barsIron>, <ore:ingotIron>, <ore:barsIron>]]);

// Industrial Machine Chassis
recipes.remove(<enderio:item_material:1>);
assembler.recipeBuilder()
    .inputs([<enderio:item_material:1>, <ore:ingotSteel> *4])
    .outputs([<enderio:item_material:1>])
    .duration(200)
    .EUt(32)
    .buildAndRegister();

// Soul Machine Chassis
recipes.remove(<enderio:item_material:53>);
assembler.recipeBuilder()
    .inputs([<enderio:item_material:1>, <ore:ingotSoularium> *4])
    .outputs([<enderio:item_material:53>])
    .duration(200)
    .EUt(32)
    .buildAndRegister();

// Enhanced Machine Chassis
recipes.remove(<enderio:item_material:54>);
assembler.recipeBuilder()
    .inputs([<enderio:item_material:1>, <ore:ingotNichrome> *4])
    .outputs([<enderio:item_material:54>])
    .duration(200)
    .EUt(120)
    .buildAndRegister();

// Blank Dark Steel Upgrade
recipes.remove(<enderio:item_dark_steel_upgrade>);
assembler.recipeBuilder()
    .inputs([<ore:plateDoubleSteel> *2, <ore:ingotDarkSteel>])
    .outputs([<enderio:item_dark_steel_upgrade>])
    .duration(200)
    .EUt(16)
    .buildAndRegister();


// Simple Solar Upgrade
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"}));
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar"}), 
	[<enderio:item_dark_steel_upgrade>, <gregtech:meta_item_1:331>]);

// Solar I Upgrade
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1"}));
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar1"}), 
	[<enderio:item_dark_steel_upgrade>, <gregtech:meta_item_1:332>]);

// Solar II Upgrade
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2"}));
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar2"}), 
	[<enderio:item_dark_steel_upgrade>, <gregtech:meta_item_1:333>]);

// Solar III Upgrade
recipes.remove(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"}));
recipes.addShapeless(<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"}), 
	[<enderio:item_dark_steel_upgrade>, <gregtech:meta_item_1:334>]);

