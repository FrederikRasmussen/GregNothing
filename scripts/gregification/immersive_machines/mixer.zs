import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.Mixer;

Mixer.removeAll();

val tier = 4.0;
// TODO: Implement tier boosting

val mixings = RecipeMap.getByName("mixer").recipes as Recipe[];

for mixing in mixings {
  val fluidInputs = mixing.fluidInputs;
  val itemOutputs = mixing.outputs;
  if (1 == fluidInputs.length & 0 == itemOutputs.length) {
    print("Success!");
    val fluidInput = fluidInputs[0];
    val inputItems = mixing.inputs;
    val fluidOutput = mixing.fluidOutputs[0];
    val totalEnergy = mixing.duration * mixing.EUt;
    if (1 == inputItems.length) {
      for stack in inputItems[0].matchingItems {
        Mixer.addRecipe(
          fluidOutput,
          fluidInput,
          [stack * inputItems[0].amount],
          totalEnergy
        );
      }
    } else if (2 == inputItems.length) {
      for stackA in inputItems[0].matchingItems {
        for stackB in inputItems[1].matchingItems {
          Mixer.addRecipe(
            fluidOutput,
            fluidInput,
            [
              stackA * inputItems[0].amount,
              stackB * inputItems[1].amount
            ],
            totalEnergy
          );
        }
      }
    } else if (3 == inputItems.length) {
      for stackA in inputItems[0].matchingItems {
        for stackB in inputItems[1].matchingItems {
          for stackC in inputItems[2].matchingItems {
            Mixer.addRecipe(
              fluidOutput,
              fluidInput,
              [
                stackA * inputItems[0].amount,
                stackB * inputItems[1].amount,
                stackC * inputItems[2].amount
              ],
              totalEnergy
            );
          }
        }
      }
    } else if (4 == inputItems.length) {
      for stackA in inputItems[0].matchingItems {
        for stackB in inputItems[1].matchingItems {
          for stackC in inputItems[2].matchingItems {
            for stackD in inputItems[2].matchingItems {
              Mixer.addRecipe(
                fluidOutput,
                fluidInput,
                [
                  stackA * inputItems[0].amount,
                  stackB * inputItems[1].amount,
                  stackC * inputItems[2].amount,
                  stackD * inputItems[3].amount
                ],
                totalEnergy
              );
            }
          }
        }
      }
    } else {
      print("Unexpected number of mixer ingredients");
    }
  }
}
