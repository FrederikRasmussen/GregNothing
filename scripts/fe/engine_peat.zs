import mods.forestry.engine.peat;
import mods.jei.JEI;

JEI.addDescription(
  <forestry:engine_peat>,
  "Peat-Fired Engine",
  "Produces power when provided with peat. The FE per tick is determined by the peat type. One item lasts 4000 ticks.",
  "",
  "",
  "",
  "32FE/tick: Peat",
  "128FE/tick: Bituminous Peat",
  "512FE/tick: Diesel-Soaked Peat (not implemented)",
  "2048FE/tick: Toluene Peat (not implemented)"
);

peat.removeAll();
# LV
peat.addRecipe(<forestry:peat>, 32, 4000);
# MV (2 x peat + 2 x coal or lignite + binder)
peat.addRecipe(<forestry:bituminous_peat>, 128, 4000);
# HV (2 x bituminous peat + 1B diesel or 1B biodiesel) (in bottling machine + mixer)
// peat.addRecipe(<contenttweaker:diesel_peat>, 512, 4000);
# EV (2 x diesel peat + 4 x gelled toluene + 250mB Sulfuric Acid) (in bottling machine + mixer)
// peat.addRecipe(itemStack, energyPerTick, burnDurationInTicks)


