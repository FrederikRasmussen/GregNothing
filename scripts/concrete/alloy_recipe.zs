# 216mB Stone + 144mB Clay + 500mB Water -> 576mB Concrete (0.5 block)
# 9 + 6 + 21 -> 24mB Concrete

mods.tconstruct.Alloy.addRecipe(
  <liquid:concrete> * 8,
  [
    <liquid:stone> * 3,
    <liquid:clay> * 2,
    <liquid:water> * 7
  ]
);
