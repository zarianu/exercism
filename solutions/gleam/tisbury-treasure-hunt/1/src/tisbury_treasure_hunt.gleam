pub fn place_location_to_treasure_location(
  place_location: #(String, Int),
) -> #(Int, String) {
  #(place_location.1, place_location.0)
}

pub fn treasure_location_matches_place_location(
  place_location: #(String, Int),
  treasure_location: #(Int, String),
) -> Bool {
  place_location_to_treasure_location(place_location) == treasure_location
}

pub fn count_place_treasures(
  place: #(String, #(String, Int)),
  treasures: List(#(String, #(Int, String))),
) -> Int {
  case treasures, place_location_to_treasure_location(place.1) {
    [h, ..t], tl if h.1 == tl -> 1 + count_place_treasures(place, t)
    [_, ..t], _ -> count_place_treasures(place, t)
    [], _ -> 0
  }
}

pub fn special_case_swap_possible(
  found_treasure: #(String, #(Int, String)),
  place: #(String, #(String, Int)),
  desired_treasure: #(String, #(Int, String)),
) -> Bool {
  case found_treasure.0, place.0, desired_treasure.0 {
    "Brass Spyglass", "Abandoned Lighthouse", _ -> True
    "Amethyst Octopus", "Stormy Breakwater", dt
      if dt == "Crystal Crab" || dt == "Glass Starfish"
    -> True
    "Vintage Pirate Hat", "Harbor Managers Office", dt
      if dt == "Model Ship in Large Bottle"
      || dt == "Antique Glass Fishnet Float"
    -> True
    _, _, _ -> False
  }
}
