pub type TreasureChest(a) {
  TreasureChest(String, a)
}

pub type UnlockResult(treasure) {
  Unlocked(treasure)
  WrongPassword
}

pub fn get_treasure(
  chest: TreasureChest(treasure),
  password: String,
) -> UnlockResult(treasure) {
  case chest {
    TreasureChest(pwd, treasure) if pwd == password -> Unlocked(treasure)
    _ -> WrongPassword
  }
}
