# Replace default recipes
val customtrim = <storagedrawers:customtrim>;
recipes.remove(<storagedrawers:upgrade_template>, false);
recipes.addShaped(
  "crafftweaker_storagedrawers_upgrade_template",
  <storagedrawers:upgrade_template>,
  [
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
    [<ore:stickWood>, customtrim, <ore:stickWood>],
    [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
  ]
);

recipes.remove(<storagedrawers:framingtable>, false);
recipes.addShaped(
  "crafttweaker_storagedrawers_framing_table",
  <storagedrawers:framingtable>,
  [
    [null, null, null],
    [customtrim, customtrim, customtrim],
    [customtrim, null, customtrim]
  ]
);

val anyForgeHammer =
    <gregtech:machine:13>
    | <gregtech:machine:14>
    | <gregtech:machine:330>
    | <gregtech:machine:331>
    | <gregtech:machine:332>
    | <gregtech:machine:333>;
recipes.remove(<storagedrawers:compdrawers>, false);
recipes.addShaped(
  "crafttweaker_storagedrawers_compacting_drawer",
  <storagedrawers:compdrawers>,
  [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, anyForgeHammer, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
  ]
);

recipes.remove(<storagedrawers:controller>, false);
recipes.addShaped(
  "crafttweaker_storagedrawers_controller",
  <storagedrawers:controller>,
  [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:circuitBasic>, <teslacorelib:machine_case>, <ore:circuitBasic>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
  ]
);

recipes.remove(<storagedrawers:controllerslave>, false);
recipes.addShaped(
  "crafttweaker_storagedrawers_controller_slave",
  <storagedrawers:controllerslave>,
  [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <teslacorelib:machine_case>, <ore:plateIron>],
    [<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>]
  ]
);

# Cross-compatibility between Framed Drawers and Charset Chests
mods.jei.JEI.removeAndHide(<storagedrawers:basicdrawers:*>, false);
mods.jei.JEI.removeAndHide(<storagedrawers:trim:*>, false);
recipes.remove(<storagedrawers:customdrawers:*>, false);
recipes.remove(<storagedrawers:customtrim>, false);

val planks = [
  "minecraft:planks", # damage 0
  "minecraft:planks", # damage 1
  "minecraft:planks", # damage 2
  "minecraft:planks", # damage 3
  "minecraft:planks", # damage 4
  "minecraft:planks",  # damage 5,
  "quark:stained_planks", # damage  0
  "quark:stained_planks", # damage  1
  "quark:stained_planks", # damage  2
  "quark:stained_planks", # damage  3
  "quark:stained_planks", # damage  4
  "quark:stained_planks", # damage  5
  "quark:stained_planks", # damage  6
  "quark:stained_planks", # damage  7
  "quark:stained_planks", # damage  8
  "quark:stained_planks", # damage  9
  "quark:stained_planks", # damage 10
  "quark:stained_planks", # damage 11
  "quark:stained_planks", # damage 12
  "quark:stained_planks", # damage 13
  "quark:stained_planks", # damage 14
  "quark:stained_planks", # damage 15
  "rustic:planks", # damage 0
  "rustic:planks"  # damage 1
] as string[];
val damages = [
  0, # minecraft:planks
  1, # minecraft:planks
  2, # minecraft:planks
  3, # minecraft:planks
  4, # minecraft:planks
  5, # minecraft:planks
  0, # quark:stained_planks
  1, # quark:stained_planks
  2, # quark:stained_planks
  3, # quark:stained_planks
  4, # quark:stained_planks
  5, # quark:stained_planks
  6, # quark:stained_planks
  7, # quark:stained_planks
  8, # quark:stained_planks
  9, # quark:stained_planks
  10, # quark:stained_planks
  11, # quark:stained_planks
  12, # quark:stained_planks
  13, # quark:stained_planks
  14, # quark:stained_planks
  15, # quark:stained_planks
  0, # rustic:planks 
  1 # rustic:planks 
] as short[];
for outsideIndex, plankOutside in planks {
  val outsideMeta = damages[outsideIndex];
  val outsideItem = itemUtils.getItem(
      plankOutside,
      outsideMeta
  );

  # Add trim recipe
  recipes.addShaped(
    "crafttweaker_"
        ~plankOutside.replaceAll(":", "_")~outsideMeta,
    <storagedrawers:customtrim>
        .withTag(
              {
                MatS: {
                  id: plankOutside,
                  Count: 1 as byte,
                  Damage: outsideMeta as short
                }
              }
          ),
    [
      [<ore:stickWood>, null, <ore:stickWood>],
      [null, outsideItem, null],
      [<ore:stickWood>, null, <ore:stickWood>]
    ]
  );

  # Add drawer recipes
  for insideIndex, plankInside in planks {
    val insideMeta = damages[insideIndex];
    val chestItem = <charset:chest>.withTag(
        {
          wood: plankInside~";"~insideMeta
        }
    );
    recipes.addShaped(
      "crafttweaker_"
          ~plankOutside.replaceAll(':', "_")~outsideMeta
          ~"_"
          ~plankInside.replaceAll(':', "_")~insideMeta
          ~"_drawer",
      <storagedrawers:customdrawers>
          .withTag(
              {
                MatT: {
                  id: plankOutside,
                  Count: 1 as byte,
                  Damage: outsideMeta as short
                },
                MatF: {
                  id: plankInside,
                  Count: 1 as byte,
                  Damage: insideMeta as short
                },
                MatS: {
                  id: plankOutside,
                  Count: 1 as byte,
                  Damage: outsideMeta as short
                }
              }
          ),
      [
        [outsideItem, outsideItem, outsideItem],
        [null, chestItem, null],
        [outsideItem, outsideItem, outsideItem]
      ]
    );
  }
}

recipes.addShapeless(
  "crafftweaker_1by1_drawer_to_1by2",
  <storagedrawers:customdrawers:1>,
  [
    <storagedrawers:customdrawers:0>.marked("mark"),
    <ore:plateWood>
  ],
  function(out, ins, cInfo) {
    return out.withTag(ins.mark.tag);
  },
  null
);

recipes.addShapeless(
  "crafftweaker_1by1_drawer_to_2by2",
  <storagedrawers:customdrawers:2>,
  [
    <storagedrawers:customdrawers:0>.marked("mark"),
    <ore:plateWood>,
    <ore:plateWood>
  ],
  function(out, ins, cInfo) {
    return out.withTag(ins.mark.tag);
  },
  null
);

recipes.addShapeless(
  "crafftweaker_1by2_drawer_to_2by2",
  <storagedrawers:customdrawers:2>,
  [
    <storagedrawers:customdrawers:1>.marked("mark"),
    <ore:plateWood>
  ],
  function(out, ins, cInfo) {
    return out.withTag(ins.mark.tag);
  },
  null
);

recipes.addShapeless(
  "crafftweaker_1by2_drawer_to_half_1by2",
  <storagedrawers:customdrawers:3> * 2,
  [
    <storagedrawers:customdrawers:1>.marked("mark"),
    <gregtech:meta_tool:33>
    | <gregtech:meta_tool:28>
    | <gregtech:meta_tool:27>
    | <gregtech:meta_tool:26>
    | <gregtech:meta_tool:5>
    | <gregtech:meta_tool:16>
  ],
  function(out, ins, cInfo) {
    return out.withTag(ins.mark.tag) * 2;
  },
  null
);

recipes.addShapeless(
  "crafftweaker_2by2_drawer_to_half_2by2",
  <storagedrawers:customdrawers:4> * 2,
  [
    <storagedrawers:customdrawers:2>.marked("mark"),
    <gregtech:meta_tool:33>
    | <gregtech:meta_tool:28>
    | <gregtech:meta_tool:27>
    | <gregtech:meta_tool:26>
    | <gregtech:meta_tool:5>
    | <gregtech:meta_tool:16>
  ],
  function(out, ins, cInfo) {
    return out.withTag(ins.mark.tag) * 2;
  },
  null
);
