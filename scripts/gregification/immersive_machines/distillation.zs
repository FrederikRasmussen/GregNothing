import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersivepetroleum.Distillation;

// Recipes removed via config

// TODO: Implement tier boosting

val distillationRecipes = RecipeMap.getByName("distillation_tower").recipes as Recipe[];

function addRecipe(recipe as Recipe) {
  var outputLiquids = recipe.fluidOutputs as ILiquidStack[];
  for i, outputLiquid in outputLiquids {
    outputLiquids[i] = outputLiquid * (outputLiquid.amount);
  }
  var outputItems = recipe.outputs as IItemStack[];
  var outputItemChances = [] as float[];
  for i, outputItem in outputItems {
    outputItems[i] = outputItem * (outputItem.amount);
    outputItemChances += 1.0;
  }
  val inputLiquids = recipe.fluidInputs as ILiquidStack[];
  var inputLiquid = inputLiquids[0];
  inputLiquid = inputLiquid * (inputLiquid.amount);
  val timeInTicks = recipe.duration;
  val totalEnergy = timeInTicks * recipe.EUt;
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
