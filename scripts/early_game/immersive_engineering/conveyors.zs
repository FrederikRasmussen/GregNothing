// Remove previous conveyor recipes
recipes.remove(<immersiveengineering:conveyor>, false);

// No frills conveyor
recipes.addShapeless(
    "crafttweaker_ie_conveyor_controlled",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})
    ]
);
recipes.addShaped(
    "crafttweaker_ie_conveyor",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
    [
      [null, null, null],
      [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
      [<ore:gearWood>, <ore:dustRedstone>, <ore:gearWood>]
    ]
);
recipes.addShapeless(
    "crafttweaker_ie_conveyor_covered",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:covered"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
      <ore:scaffoldingSteel>
    ]
);
recipes.addShapeless(
    "crafttweaker_ie_conveyor_uncontrolled",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
    ]
);

// Dropping conveyor
recipes.addShapeless(
    "crafttweaker_ie_conveyor_dropper",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
      <ore:trapdoorWood>
    ]
);
recipes.addShapeless(
    "crafttweaker_ie_conveyor_droppercovered",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:droppercovered"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:dropper"}),
      <ore:scaffoldingSteel>
    ]
);

// Vertical conveyor
recipes.addShapeless(
    "crafttweaker_ie_conveyor_vertical",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
      <ore:plateWood>,
      <ore:plateWood>
    ]
);
recipes.addShapeless(
    "crafttweaker_ie_conveyor_verticalcovered",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:verticalcovered"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:vertical"}),
      <ore:scaffoldingSteel>
    ]
);

// Splitting conveyor
recipes.addShapeless(
    "crafttweaker_ie_conveyor_splitter",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
      <ore:plateWood>
    ]
);
// No covered splitter

// Extracting conveyor
recipes.addShapeless(
    "crafttweaker_ie_conveyor_extract",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
      <tconstruct:wooden_hopper>
    ]
);
recipes.addShapeless(
    "crafttweaker_ie_conveyor_extractcovered",
    <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extractcovered"}),
    [
      <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}),
      <ore:scaffoldingSteel>
    ]
);
