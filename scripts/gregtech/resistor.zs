import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;

val resistor = <gregtech:meta_item_2:32455>;

# Traditional crafting
recipes.addShaped(
  "crafttweaker_gregtech_resistor_from_wire_and_charcoal",
  resistor * 3,
  [
    [null, <ore:paper>, null],
    [<ore:wireGtSingleCopper>, <ore:dustCharcoal>, <ore:wireGtSingleCopper>],
    [null, <ore:paper>, null]
  ]
);
recipes.addShaped(
  "crafttweaker_gregtech_resistor_from_fine_wire_and_charcoal",
  resistor * 3,
  [
    [null, <ore:paper>, null],
    [<ore:wireFineCopper>, <ore:dustCharcoal>, <ore:wireFineCopper>],
    [null, <ore:paper>, null]
  ]
);

recipes.addShaped(
  "crafttweaker_gregtech_resistor_from_wire_and_carbon",
  resistor * 3,
  [
    [null, <ore:paper>, null],
    [<ore:wireGtSingleCopper>, <ore:dustCarbon>, <ore:wireGtSingleCopper>],
    [null, <ore:paper>, null]
  ]
);
recipes.addShaped(
  "crafttweaker_gregtech_resistor_from_fine_wire_and_carbon",
  resistor * 3,
  [
    [null, <ore:paper>, null],
    [<ore:wireFineCopper>, <ore:dustCarbon>, <ore:wireFineCopper>],
    [null, <ore:paper>, null]
  ]
);

# Assembler

val assembler = RecipeMap.getByName("assembler");

assembler.recipeBuilder()
  .inputs([<ore:wireFineCopper> * 4, <ore:dustCharcoal>])
  .outputs(resistor * 12)
  .duration(160)
  .EUt(6)
  .buildAndRegister();

assembler.recipeBuilder()
  .inputs([<ore:wireFineCopper> * 4, <ore:dustCarbon>])
  .outputs(resistor * 12)
  .duration(160)
  .EUt(6)
  .buildAndRegister();
