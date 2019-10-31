#modloaded gregtech

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import mods.immersivepetroleum.Distillation;

function addDistillationWithByproduct(
  input as ILiquidStack,
  energy as int,
  time as int,
  outputs as ILiquidStack[],
  byproduct as IItemStack
) {
  Distillation.addRecipe(
    outputs,
    [byproduct],
    input,
    energy,
    time,
    [1.0]
  );
}

function addDistillation(
  input as ILiquidStack,
  energy as int,
  time as int,
  outputs as ILiquidStack[]
) {
  Distillation.addRecipe(
    outputs,
    [],
    input,
    energy,
    time,
    []
  );
}

val creosote = <liquid:creosote> as ILiquidStack;
val lubricant = <liquid:lubricant> as ILiquidStack;
val hydroCrackedEthane = <liquid:hydrocracked_ethane> as ILiquidStack;
val methane = <liquid:methane> as ILiquidStack;
val steamCrackedEthane = <liquid:steamcracked_ethane> as ILiquidStack;
val smallPileCarbon = <ore:dustSmallCarbon>.firstItem;
val hydroCrackedEthylene = <liquid:hydrocracked_ethylene> as ILiquidStack;
val ethane = <liquid:ethane> as ILiquidStack;
val steamCrackedEthylene = <liquid:steamcracked_ethylene> as ILiquidStack;
val dustCarbon = <ore:dustCarbon>.firstItem;
val hydroCrackedPropene = <liquid:hydrocracked_propene> as ILiquidStack;
val propane = <liquid:propane> as ILiquidStack;
val ethylene = <liquid:ethylene> as ILiquidStack;
val steamCrackedPropene = <liquid:steamcracked_propene> as ILiquidStack;
val hydroCrackedPropane = <liquid:hydrocracked_propane> as ILiquidStack;
val steamCrackedPropane = <liquid:steamcracked_propane> as ILiquidStack;
val hydroCrackedLightFuel = <liquid:hydrocracked_light_fuel> as ILiquidStack;
val naphtha = <liquid:naphtha> as ILiquidStack;
val butane = <liquid:butane> as ILiquidStack;
val crackedLightFuel = <liquid:cracked_light_fuel> as ILiquidStack;
val heavyFuel = <liquid:heavy_fuel> as ILiquidStack;
val toluene = <liquid:toluene> as ILiquidStack;
val benzene = <liquid:benzene> as ILiquidStack;
val butene = <liquid:butene> as ILiquidStack;
val butadiene = <liquid:butadiene> as ILiquidStack;
val propene = <liquid:propene> as ILiquidStack;
val tinyPileCarbon = <ore:dustTinyCarbon>.firstItem;
val hydroCrackedButane = <liquid:hydrocracked_butane> as ILiquidStack;
val steamCrackedButane = <liquid:steamcracked_butane> as ILiquidStack;
val hydroCrackedNaphtha = <liquid:hydrocracked_naphtha> as ILiquidStack;
val steamCrackedNaphtha = <liquid:steamcracked_naphtha> as ILiquidStack;
val lightFuel = <liquid:light_fuel> as ILiquidStack;
val hydroCrackedHeavyFuel = <liquid:hydrocracked_heavy_fuel> as ILiquidStack;
val crackedHeavyFuel = <liquid:cracked_heavy_fuel> as ILiquidStack;
val hydroCrackedRefineryGas = <liquid:hydrocracked_gas> as ILiquidStack;
val hydrogen = <liquid:hydrogen> as ILiquidStack;
val helium = <liquid:helium> as ILiquidStack;
val steamCrackedRefineryGas = <liquid:steamcracked_gas> as ILiquidStack;
val hydroCrackedButene = <liquid:hydrocracked_butene> as ILiquidStack;
val steamCrackedButene = <liquid:steamcracked_butene> as ILiquidStack;
val hydroCrackedButadiene = <liquid:hydrocracked_butadiene> as ILiquidStack;
val steamCrackedButadiene = <liquid:steamcracked_butadiene> as ILiquidStack;
val lightOil = <liquid:oil_light> as ILiquidStack;
val sulfuricHeavyFuel = <liquid:sulfuric_heavy_fuel> as ILiquidStack;
val sulfuricLightFuel = <liquid:sulfuric_light_fuel> as ILiquidStack;
val sulfuricNaphtha = <liquid:sulfuric_naphtha> as ILiquidStack;
val sulfuricGas = <liquid:sulfuric_gas> as ILiquidStack;
val rawOil = <liquid:oil_medium> as ILiquidStack;
val heavyOil = <liquid:oil_heavy> as ILiquidStack;
val oil = <liquid:oil> as ILiquidStack;
val dilutedHydrochloricAcid = <liquid:diluted_hydrochloric_acid> as ILiquidStack;
val water = <liquid:water> as ILiquidStack;
val hydrochloricAcid = <liquid:hydrochloric_acid> as ILiquidStack;
val dilutedSulfuricAcid = <liquid:diluted_sulfuric_acid> as ILiquidStack;
val sulfuricAcid = <liquid:sulfuric_acid> as ILiquidStack;
val charcoalByproducts = <liquid:charcoal_byproducts> as ILiquidStack;
val woodTar = <liquid:wood_tar> as ILiquidStack;
val woodVinegar = <liquid:wood_vinegar> as ILiquidStack;
val woodGas = <liquid:wood_gas> as ILiquidStack;
val smallPileCharcoal = <ore:dustSmallCharcoal>.firstItem;
val phenol = <liquid:phenol> as ILiquidStack;
val carbonDioxide = <liquid:carbon_dioxide> as ILiquidStack;
val carbonMonoxide = <liquid:carbon_monoxide> as ILiquidStack;
val distilledWater = <liquid:distilled_water> as ILiquidStack;
val calciumAcetateSolution = <liquid:calcium_acetate> as ILiquidStack;
val acetone = <liquid:acetone> as ILiquidStack;
val smallPileQuicklime = <ore:dustSmallQuicklime>.firstItem;
val ethenone = <liquid:ethenone> as ILiquidStack;
val seedOil = <liquid:seed_oil> as ILiquidStack;
val aceticAcid = <liquid:acetic_acid> as ILiquidStack;
val ethanol = <liquid:ethanol> as ILiquidStack;
val methanol = <liquid:methanol> as ILiquidStack;
val methylAcetate = <liquid:methyl_acetate> as ILiquidStack;
val fermentedBiomass = <liquid:fermented_biomass> as ILiquidStack;
val ammonia = <liquid:ammonia> as ILiquidStack;
val biomass = <liquid:biomass> as ILiquidStack;
val smallPileWood = <ore:dustSmallWood>.firstItem;

addDistillation(
  creosote * 96,
  6144,
  4,
  [
    lubricant * 48
  ]
);
addDistillation(
  hydroCrackedEthane * 4000,
  57600,
  120,
  [
    methane * 8000
  ]
);
addDistillationWithByproduct(
  steamCrackedEthane * 4000,
  57600,
  120,
  [
    methane * 6000
  ],
  smallPileCarbon * 4
);
addDistillation(
  hydroCrackedEthylene * 4000,
  57600,
  120,
  [
    ethane * 4000
  ]
);
addDistillationWithByproduct(
  steamCrackedEthylene * 4000,
  57600,
  120,
  [
    methane * 4000
  ],
  dustCarbon * 4
);
addDistillation(
  hydroCrackedPropene * 4000,
  57600,
  120,
  [
    propane * 2000,
    ethylene * 2000,
    methane * 2000
  ]
);
addDistillationWithByproduct(
  steamCrackedPropene * 4000,
  86400,
  180,
  [
    methane * 6000
  ],
  smallPileCarbon * 24
);
addDistillation(
  hydroCrackedPropane * 4000,
  57600,
  120,
  [
    ethane * 4000,
    methane * 4000
  ]
);
addDistillationWithByproduct(
  steamCrackedPropane * 8000,
  86400,
  240,
  [
    ethylene * 2000,
    methane * 14000
  ],
  smallPileCarbon * 12
);
addDistillation(
  hydroCrackedLightFuel * 4000,
  57600,
  120,
  [
    naphtha * 2400,
    butane * 600,
    propane * 800,
    ethane * 500,
    methane * 500
  ]
);
addDistillationWithByproduct(
  crackedLightFuel * 4000,
  57600,
  120,
  [
    heavyFuel * 200,
    naphtha * 400,
    toluene * 120,
    benzene * 600,
    butene * 260,
    butadiene * 200,
    propane * 200,
    propene * 1000,
    ethane * 200,
    ethylene * 1000,
    methane * 1000
  ],
  tinyPileCarbon * 4
);
addDistillation(
  hydroCrackedButane * 3000,
  43200,
  90,
  [
    propane * 2000,
    ethane * 2000,
    methane * 2000
  ]
);
addDistillationWithByproduct(
  steamCrackedButane * 8000,
  115200,
  240,
  [
    propane * 1000,
    ethane * 1000,
    ethylene * 1000,
    methane * 1600
  ],
  dustCarbon * 9
);
addDistillation(
  hydroCrackedNaphtha * 4000,
  57600,
  120,
  [
    butane * 3200,
    propane * 1200,
    ethane * 1000,
    methane * 1000
  ]
);
addDistillationWithByproduct(
  steamCrackedNaphtha * 4000,
  57600,
  120,
  [
    heavyFuel * 100,
    lightFuel * 200,
    toluene * 80,
    benzene * 400,
    butene * 200,
    butadiene * 200,
    propane * 60,
    propene * 1200,
    ethane * 260,
    ethylene * 2000,
    methane * 2000
  ],
  tinyPileCarbon * 12
);
addDistillation(
  hydroCrackedHeavyFuel * 4000,
  57600,
  120,
  [
    lightFuel * 2400,
    naphtha * 400,
    butane * 400,
    propane * 400,
    ethane * 300,
    methane * 300
  ]
);
addDistillationWithByproduct(
  crackedHeavyFuel * 4000,
  57600,
  120,
  [
    lightFuel * 400,
    naphtha * 500,
    toluene * 320,
    benzene * 1600,
    butene * 240,
    butadiene * 200,
    propane * 40,
    propene * 400,
    ethane * 60,
    ethylene * 600,
    methane * 600
  ],
  tinyPileCarbon * 12
);
addDistillation(
  hydroCrackedRefineryGas * 4000,
  57600,
  120,
  [
    methane * 5600,
    hydrogen * 5360,
    helium * 80
  ]
);
addDistillationWithByproduct(
  steamCrackedRefineryGas * 2400,
  46080,
  96,
  [
    propene * 24,
    ethane * 24,
    ethylene * 80,
    methane * 3656,
    helium * 64
  ],
  tinyPileCarbon * 4
);
addDistillation(
  hydroCrackedButene * 3000,
  43200,
  90,
  [
    butane * 1000,
    propene * 1000,
    ethane * 1000,
    methane * 1000
  ]
);
addDistillationWithByproduct(
  steamCrackedButene * 8000,
  115200,
  240,
  [
    propene * 1000,
    ethylene * 2500,
    methane * 12000
  ],
  dustCarbon * 12
);
addDistillation(
  hydroCrackedButadiene * 3000,
  43200,
  90,
  [
    butene * 2000,
    ethylene * 2000
  ]
);
addDistillationWithByproduct(
  steamCrackedButadiene * 8000,
  115200,
  240,
  [
    propene * 1000,
    ethylene * 1500,
    methane * 9000
  ],
  dustCarbon * 8
);
addDistillation(
  lightOil * 600,
  7680,
  20,
  [
    sulfuricHeavyFuel * 40,
    sulfuricLightFuel * 80,
    sulfuricNaphtha * 120,
    sulfuricGas * 960
  ]
);
addDistillation(
  rawOil * 400,
  7680,
  20,
  [
    sulfuricHeavyFuel * 60,
    sulfuricLightFuel * 200,
    sulfuricNaphtha * 80,
    sulfuricGas * 240
  ]
);
addDistillation(
  heavyOil * 600,
  23040,
  20,
  [
    sulfuricHeavyFuel * 1000,
    sulfuricLightFuel * 180,
    sulfuricNaphtha * 60,
    sulfuricGas * 2400
  ]
);
addDistillation(
  oil * 200,
  7680,
  20,
  [
    sulfuricHeavyFuel * 60,
    sulfuricLightFuel * 200,
    sulfuricNaphtha * 80,
    sulfuricGas * 240
  ]
);
addDistillation(
  dilutedHydrochloricAcid * 8000,
  153600,
  600,
  [
    water * 4000,
    hydrochloricAcid * 4000
  ]
);
addDistillation(
  dilutedSulfuricAcid * 12000,
  288000,
  600,
  [
    sulfuricAcid * 8000,
    water * 4000
  ]
);
addDistillationWithByproduct(
  charcoalByproducts * 4000,
  40960,
  40,
  [
    woodTar * 1000,
    woodVinegar * 2000,
    woodGas * 1000
  ],
  smallPileCharcoal * 4
);
addDistillation(
  woodTar * 4000,
  40960,
  40,
  [
    creosote * 2000,
    phenol * 300,
    benzene * 1400,
    toluene * 300
  ]
);
addDistillation(
  woodGas * 4000,
  40960,
  40,
  [
    carbonDioxide * 1960,
    ethylene * 80,
    methane * 520,
    carbonMonoxide * 1360,
    hydrogen * 80
  ]
);
addDistillation(
  water * 2304,
  76800,
  160,
  [
    distilledWater * 2080
  ]
);
addDistillationWithByproduct(
  calciumAcetateSolution * 4000,
  153600,
  80,
  [
    acetone * 4000,
    carbonDioxide * 4000
  ],
  smallPileQuicklime * 12
);
addDistillation(
  acetone * 4000,
  204800,
  80,
  [
    ethenone * 4000,
    methane * 4000
  ]
);
addDistillation(
  seedOil * 96,
  6144,
  16,
  [
    lubricant * 48
  ]
);
addDistillation(
  woodVinegar * 4000,
  40960,
  40,
  [
    aceticAcid * 400,
    water * 2000,
    ethanol * 40,
    methanol * 1200,
    acetone * 200,
    methylAcetate * 40
  ]
);
addDistillation(
  fermentedBiomass * 4000,
  54000,
  75,
  [
    aceticAcid * 100,
    water * 1500,
    ethanol * 600,
    methanol * 600,
    ammonia * 400,
    carbonDioxide * 1600,
    methane * 2400
  ]
);
addDistillationWithByproduct(
  biomass * 4000,
  51200,
  32,
  [
    ethanol * 2400,
    water * 1200
  ],
  smallPileWood * 8
);
