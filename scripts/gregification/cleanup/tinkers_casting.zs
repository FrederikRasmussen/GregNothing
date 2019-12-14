#priority 0

import crafttweaker.item.IIngredient;
import mods.tconstruct.Casting;

val castableGears = [
  <ore:gearGold>,
  <ore:gearBrass>,
  <ore:gearTin>,
  <ore:gearAluminum>,
  <ore:gearPlatinum>,
  <ore:gearIridium>,
  <ore:gearInvar>,
  <ore:gearConstantan>,
  <ore:gearSignalum>,
  <ore:gearLumium>,
  <ore:gearEnderium>,
  <ore:gearSilver>
] as IIngredient[];

for gearIngredient in castableGears {
  for gear in gearIngredient.items {
    Casting.removeTableRecipe(gear);
  } 
}

val castablePlates = [
  <ore:plateGold>,
  <ore:plateBrass>,
  <ore:plateTin>,
  <ore:plateNickel>,
  <ore:plateZinc>,
  <ore:plateAluminum>,
  <ore:platePlatinum>,
  <ore:plateIridium>,
  <ore:plateInvar>,
  <ore:plateConstantan>,
  <ore:plateSignalum>,
  <ore:plateLumium>,
  <ore:plateEnderium>,
  <ore:plateUranium>,
  <ore:plateThorium>,
  <ore:plateLithium>,
  <ore:plateBeryllium>,
  <ore:plateManganese>,
  <ore:plateSilver>,
  <ore:plateSodium>,
  <ore:platePotassium>,
  <ore:platePlutonium>
] as IIngredient[];

for plateIngredient in castablePlates {
  for plate in plateIngredient.items {
    Casting.removeTableRecipe(plate);
  }
}
