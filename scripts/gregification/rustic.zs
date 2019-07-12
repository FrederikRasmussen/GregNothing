recipes.remove(<rustic:crushing_tub>, false);
recipes.addShaped(
    "crafttweaker_rustic_crushing_tub",
    <rustic:crushing_tub>,
    [
      [<ore:slabWood>, null, <ore:slabWood>],
      [<ore:plateIron>, null, <ore:plateIron>],
      [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
    ]
);

recipes.remove(<rustic:brewing_barrel>, false);
recipes.addShaped(
    "crafttweaker_rustic_brewing_barrel",
    <rustic:brewing_barrel>,
    [
      [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>],
      [<ore:plateIron>, null, <ore:plateIron>],
      [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]
    ]
);

mods.jei.JEI.removeAndHide(<rustic:liquid_barrel>, false);