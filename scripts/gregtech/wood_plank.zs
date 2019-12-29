# Cutting machine, 1 slab into 1 plank
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;

val cuttingSaw = RecipeMap.getByName("cutting_saw");

cuttingSaw
    .recipeBuilder()
    .inputs(<ore:slabWood> * 1)
    .fluidInputs([<liquid:water> * 5])
    .outputs(<ore:plateWood>.firstItem)
    .duration(40)
    .EUt(8)
    .buildAndRegister();

cuttingSaw
    .recipeBuilder()
    .inputs(<ore:slabWood> * 1)
    .fluidInputs([<liquid:distilled_water> * 3])
    .outputs(<ore:plateWood>.firstItem)
    .duration(26)
    .EUt(8)
    .buildAndRegister();

cuttingSaw
    .recipeBuilder()
    .inputs(<ore:slabWood> * 1)
    .fluidInputs([<liquid:lubricant> * 1])
    .outputs(<ore:plateWood>.firstItem)
    .duration(10)
    .EUt(8)
    .buildAndRegister();

# Additional log to plank recipes
val logsAndPlanks = {
  <minecraft:log:0> : <minecraft:planks:0>,
  <minecraft:log:1> : <minecraft:planks:1>,
  <minecraft:log:2> : <minecraft:planks:2>,
  <minecraft:log:3> : <minecraft:planks:3>,
  <minecraft:log2:0> : <minecraft:planks:4>,
  <minecraft:log2:1> : <minecraft:planks:5>,
  <rustic:log:0> : <rustic:planks:0>,
  <rustic:log:1> : <rustic:planks:1>
} as IItemStack[IItemStack];

for log, plank in logsAndPlanks {
  cuttingSaw
      .recipeBuilder()
      .inputs(log * 1)
      .fluidInputs([<liquid:water> * 5])
      .outputs([plank * 6, <ore:dustWood>.firstItem * 2])
      .duration(800)
      .EUt(8)
      .buildAndRegister();
  cuttingSaw
      .recipeBuilder()
      .inputs(log * 1)
      .fluidInputs([<liquid:distilled_water> * 3])
      .outputs([plank * 6, <ore:dustWood>.firstItem * 2])
      .duration(520)
      .EUt(8)
      .buildAndRegister();
}

