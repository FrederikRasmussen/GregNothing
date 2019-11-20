# Storage Cable
recipes.remove(<storagenetwork:kabel>, false);
recipes.addShaped(
  "crafttweaker_storage_network_kabel",
    <storagenetwork:kabel> * 2,
    [
      [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
      [<gregtech:meta_tool:9>, null, <gregtech:meta_tool:6>],
      [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>]
    ]
);

# Storage Network Master
recipes.remove(<storagenetwork:master>, false);
recipes.addShaped(
  "crafttweaker_storage_network_master",
    <storagenetwork:master>,
    [
      [
        <charset:logic_gate>.withTag({logic: "simplelogic:comparator"}),
        <storagenetwork:kabel>,
        <charset:logic_gate>.withTag({logic: "simplelogic:comparator"})
      ],
      [
        <storagenetwork:kabel>,
        <gregtech:meta_tool:8> | <gregtech:meta_tool:29> | <gregtech:meta_tool:30> | <gregtech:meta_tool:31>,
        <storagenetwork:kabel>
      ],
      [
        <charset:logic_gate>.withTag({logic: "simplelogic:comparator"}),
        <storagenetwork:kabel>,
        <charset:logic_gate>.withTag({logic: "simplelogic:comparator"})
      ]
    ]
);
