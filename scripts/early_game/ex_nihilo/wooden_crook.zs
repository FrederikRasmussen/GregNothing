recipes.addShaped(
    "crafttweaker_ex_nihilo_wooden_crook",
    <exnihilocreatio:crook_tconstruct>.withTag(
      {
        StatsOriginal:{
          AttackSpeedMultiplier: 1.0 as float,
          MiningSpeed: 2.0 as float,
          FreeModifiers: 3,
          Durability: 75,
          HarvestLevel: 0,
          Attack: 2.0 as float,
        },
        Stats:{
          AttackSpeedMultiplier: 1.0 as float,
          MiningSpeed: 2.0 as float,
          FreeModifiers: 3,
          Durability: 75,
          HarvestLevel: 0,
          Attack: 2.0 as float,
        },
        Special:{
          Categories: [
            "harvest",
            "tool",
            "aoe"
          ],
        },
        TinkerData: {
          Materials: [
            "wood",
            "wood",
            "wood",
            "wood"
          ],
          Modifiers: [
            "toolleveling"
          ]
        },
        Modifiers: [
          {
            identifier: "ecological",
            color: -7444965,
            level: 1
          },
          {
            identifier: "toolleveling",
            color: 16777215,
            level: 1
          }
        ],
        Traits: [
          "ecological",
          "toolleveling"
        ]
      }
    ),
    [
      [<ore:stickWood>, <ore:stickWood>, null],
      [null, <ore:stickWood>, null],
      [null, <ore:stickWood>, null]
    ]
);
