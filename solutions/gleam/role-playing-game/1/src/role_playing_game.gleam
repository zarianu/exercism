import gleam/option.{type Option}

pub type Player {
  Player(name: Option(String), level: Int, health: Int, mana: Option(Int))
}

pub fn introduce(player: Player) -> String {
  option.unwrap(player.name, "Mighty Magician")
}

pub fn revive(player: Player) -> Option(Player) {
  todo
}

pub fn cast_spell(player: Player, cost: Int) -> #(Player, Int) {
  case playyer {
    _ if player.health == 0 ->
      Player(
        name: player.name,
        level: player.level,
        health: 100,
        mana: player.mana,
      )
    _ -> None
  }
}
