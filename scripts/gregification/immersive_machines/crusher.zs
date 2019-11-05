import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.Crusher;

Crusher.removeAll();

// TODO: Implement tier boosting
val tier = 1.0;

val pulverizations = RecipeMap.getByName("macerator").recipes as Recipe[];

for pulverization in pulverizations {
  val outputItem = pulverization.outputs[0];
  val totalEnergy = pulverization.duration * pulverization.EUt;
  var chance as double = 0.0;
  var chanceItem as IItemStack = <minecraft:bedrock>; // Unused block
  for entry in pulverization.changedOutputs {
    val baseChance as double = 1.0 * entry.chance;
    val boost as double = tier * entry.boostPerTier;
    chance = 0.0001 * (baseChance + boost);
    chanceItem = entry.output;
    break;
  }
  for stack in pulverization.inputs[0].matchingItems {
    if (chance == 0.0) {
      Crusher.addRecipe(
        outputItem,
        stack * pulverization.inputs[0].amount,
        totalEnergy
      );
    } else {
      Crusher.addRecipe(
        outputItem,
        stack * pulverization.inputs[0].amount,
        totalEnergy,
        chanceItem,
        chance
      );
    }
  }
}
