#priority 1

import mods.jei.JEI;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.RecipeMaps;

function switchGearTypeAndHideUnused(
  material as string,
  liquid as ILiquidStack,
  unwantedGear as IItemStack,
  wantedGear as IItemStack
) {
  val gearDict as IOreDictEntry = oreDict.get("gear" ~ material);
  gearDict.remove(unwantedGear);
  JEI.removeAndHide(unwantedGear);
  val gearMold = <gregtech:meta_item_1:32303>;
  val gearShape = <gregtech:meta_item_1:32372>;
  val solidifier = RecipeMap.getByName("fluid_solidifier");
  val alloySmelter = RecipeMap.getByName("alloy_smelter");
  val extruder = RecipeMap.getByName("extruder");
  val ingotDict as IOreDictEntry = oreDict.get("ingot" ~ material);
  solidifier.findRecipe(
    8,
    [gearMold],
    [liquid * 576]
  ).remove();
  alloySmelter.findRecipe(
    16,
    [ingotDict.firstItem * 8, gearMold],
    null
  ).remove();
  extruder.findRecipe(
    64,
    [ingotDict.firstItem * 4, gearShape],
    null
  ).remove();

  val screwdrivers = <gregtech:meta_tool:11> | <gregtech:meta_tool:34>;
  val plateDict as IOreDictEntry = oreDict.get("plate" ~ material);
  val stickDict as IOreDictEntry = oreDict.get("stick" ~ material);

  recipes.addShaped(
    "crafftweaker_make_" + material + "_gear",
    wantedGear,
    [
      [stickDict, plateDict, stickDict],
      [plateDict, screwdrivers, plateDict],
      [stickDict, plateDict, stickDict]
    ]
  );
  solidifier.recipeBuilder()
      .fluidInputs([liquid * 576])
      .inputs(gearMold)
      .outputs(wantedGear)
      .duration(100)
      .EUt(8)
      .buildAndRegister();
  alloySmelter.recipeBuilder()
      .inputs([ingotDict * 8, gearMold])
      .outputs(wantedGear)
      .duration(760)
      .EUt(16)
      .buildAndRegister();
  extruder.recipeBuilder()
      .inputs(ingotDict * 4, gearShape)
      .outputs(wantedGear)
      .duration(380)
      .EUt(64)
      .buildAndRegister();
}

function removeFromDictAndJei(
  item as IItemStack,
  dict as IOreDictEntry
) {
  dict.remove(item);
  JEI.hide(item);
}

JEI.removeAndHide(<ore:gearStone>.firstItem);
oreDict.get("gearIron").remove(<thermalfoundation:material:24>);
JEI.removeAndHide(<thermalfoundation:material:24>);
oreDict.get("gearGold").remove(<thermalfoundation:material:25>);
JEI.removeAndHide(<thermalfoundation:material:25>);
oreDict.get("gearDiamond").remove(<thermalfoundation:material:26>);
JEI.removeAndHide(<thermalfoundation:material:26>);
oreDict.get("gearEmerald").remove(<thermalfoundation:material:27>);
JEI.removeAndHide(<thermalfoundation:material:27>);
oreDict.get("gearCopper").remove(<thermalfoundation:material:256>);
JEI.removeAndHide(<thermalfoundation:material:256>);
oreDict.get("gearTin").remove(<thermalfoundation:material:257>);
JEI.removeAndHide(<thermalfoundation:material:257>);
oreDict.get("gearSilver").remove(<thermalfoundation:material:258>);
JEI.removeAndHide(<thermalfoundation:material:258>);
oreDict.get("gearLead").remove(<thermalfoundation:material:259>);
JEI.removeAndHide(<thermalfoundation:material:259>);
oreDict.get("gearAluminum").remove(<thermalfoundation:material:260>);
JEI.removeAndHide(<thermalfoundation:material:260>);
oreDict.get("gearNickel").remove(<thermalfoundation:material:261>);
JEI.removeAndHide(<thermalfoundation:material:261>);
oreDict.get("gearPlatinum").remove(<thermalfoundation:material:262>);
JEI.removeAndHide(<thermalfoundation:material:262>);
oreDict.get("gearIridium").remove(<thermalfoundation:material:263>);
JEI.removeAndHide(<thermalfoundation:material:263>);
oreDict.get("gearMithril").remove(<thermalfoundation:material:264>);
JEI.removeAndHide(<thermalfoundation:material:264>);
oreDict.get("gearSteel").remove(<thermalfoundation:material:288>);
JEI.removeAndHide(<thermalfoundation:material:288>);
oreDict.get("gearElectrum").remove(<thermalfoundation:material:289>);
JEI.removeAndHide(<thermalfoundation:material:289>);
oreDict.get("gearInvar").remove(<thermalfoundation:material:290>);
JEI.removeAndHide(<thermalfoundation:material:290>);
oreDict.get("gearBronze").remove(<thermalfoundation:material:291>);
JEI.removeAndHide(<thermalfoundation:material:291>);
oreDict.get("gearConstantan").remove(<thermalfoundation:material:292>);
JEI.removeAndHide(<thermalfoundation:material:292>);
oreDict.get("gearSignalum").remove(<thermalfoundation:material:293>);
JEI.removeAndHide(<thermalfoundation:material:293>);
oreDict.get("gearLumium").remove(<thermalfoundation:material:294>);
JEI.removeAndHide(<thermalfoundation:material:294>);
oreDict.get("gearEnderium").remove(<thermalfoundation:material:295>);
JEI.removeAndHide(<thermalfoundation:material:295>);

switchGearTypeAndHideUnused(
  "Bronze",
  <liquid:bronze>,
  <forestry:gear_bronze>,
  <gregtech:meta_item_2:26095>
);
switchGearTypeAndHideUnused(
  "Copper",
  <liquid:copper>,
  <forestry:gear_copper>,
  <gregtech:meta_item_2:26018>
);
switchGearTypeAndHideUnused(
  "Tin",
  <liquid:tin>,
  <forestry:gear_tin>,
  <gregtech:meta_item_2:26071>
);
