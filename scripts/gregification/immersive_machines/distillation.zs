import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersivepetroleum.Distillation;

val distillationRecipes = RecipeMap.getByName("distillation_tower").recipes as Recipe[];

function addRecipe(recipe as Recipe) {
  var outputLiquids = recipe.fluidOutputs as ILiquidStack[];
  for i, outputLiquid in outputLiquids {
    outputLiquids[i] = outputLiquid * (outputLiquid.amount * 4);
  }
  var outputItems = recipe.outputs as IItemStack[];
  var outputItemChances = [] as float[];
  for i, outputItem in outputItems {
    outputItems[i] = outputItem * (outputItem.amount * 4);
    outputItemChances += 1.0;
  }
  val inputLiquids = recipe.fluidInputs as ILiquidStack[];
  var inputLiquid = inputLiquids[0];
  inputLiquid = inputLiquid * (inputLiquid.amount * 4);
  val timeInTicks = recipe.duration;
  val totalEnergy = timeInTicks * recipe.EUt * 4;
  Distillation.addRecipe(
    outputLiquids,
    outputItems,
    inputLiquid,
    totalEnergy,
    timeInTicks,
    outputItemChances
  );
}

for distillation in distillationRecipes {
  addRecipe(distillation);
}
