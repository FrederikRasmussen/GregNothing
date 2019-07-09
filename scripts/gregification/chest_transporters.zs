mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_copper>, false);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_tin>, false);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_gold>, false);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_silver>, false);
mods.jei.JEI.removeAndHide(<chesttransporter:chesttransporter_obsidian>, false);

recipes.remove(<chesttransporter:chesttransporter_iron>, false);
recipes.addShaped(
    "crafttweaker_chesttransport_iron",
    <chesttransporter:chesttransporter_iron>,
    [
      [<ore:stickWood>, null, <ore:stickWood>],
      [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
      [null, <ore:stickIron>, null]
    ]
);

recipes.remove(<chesttransporter:chesttransporter_diamond>, false);
recipes.addShaped(
    "crafttweaker_chesttransporter_diamond",
    <chesttransporter:chesttransporter_diamond>,
    [
      [<ore:stickWood>, null, <ore:stickWood>],
      [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
      [null, <ore:stickDiamond>, null]
    ]
);