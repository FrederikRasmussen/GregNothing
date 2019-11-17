import mods.gregtech.recipe.RecipeMap;

val pyroRecipes = RecipeMap.getByName("pyro");

pyroRecipes.recipeBuilder()
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 0)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:creosote> * 4000])
  .EUt(64)
  .duration(330)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .fluidInputs([<liquid:nitrogen> * 400])
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 1)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:creosote> * 4000])
  .EUt(96)
  .duration(150)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 2)
  .outputs(<ore:dustAsh>.firstItem * 4)
  .fluidOutputs([<liquid:oil_heavy> * 200])
  .EUt(192)
  .duration(210)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 3)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:wood_vinegar> * 3000])
  .EUt(64)
  .duration(480)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .fluidInputs([<liquid:nitrogen> * 400])
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 4)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:wood_vinegar> * 3000])
  .EUt(96)
  .duration(240)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 5)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:wood_gas> * 1500])
  .EUt(64)
  .duration(480)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .fluidInputs([<liquid:nitrogen> * 400])
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 6)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:wood_gas> * 1500])
  .EUt(96)
  .duration(240)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 7)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:wood_tar> * 1500])
  .EUt(64)
  .duration(480)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .fluidInputs([<liquid:nitrogen> * 400])
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 8)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:wood_tar> * 1500])
  .EUt(96)
  .duration(240)
  .buildAndRegister();

pyroRecipes.recipeBuilder()
  .fluidInputs([<liquid:nitrogen> * 400])
  .inputs(<forestry:wood_pile> * 4)
  .property("circuit", 9)
  .outputs(<ore:charcoal>.firstItem * 20)
  .fluidOutputs([<liquid:charcoal_byproducts> * 4000])
  .EUt(96)
  .duration(240)
  .buildAndRegister();
