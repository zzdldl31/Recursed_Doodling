-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
11111111111111111111
1..................1
1..................1
1..................1
1..................1
1................551
1.........1188888551
1.........1188888881
1.......111188888881
1.......111188888881
1.....11111188888881
18888811111188888881
18881111111188818881
18881111111188818881
11111111111111111111
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
11111111111111111111
1..................1
1..................1
1..................1
1..................1
1..................1
1.........11.......1
1.........11.......1
1.......1111.......1
1.......1111.......1
1.....111111.......1
1.....111111.......1
1...11111111...1.551
18881111111188818551
11111111111111111111
]])
  end
  Spawn("player", 15.5, 11)
  Spawn("chest", 13.5, 13.5, "start")
  Global("chest", 2.5, 13.5, "start")
  Spawn("crystal", 17.75, 6)
end

function reject(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
11111111111111111111
1..................1
1..................1
1..................1
1..................1
1..................1
1...11...........551
18881188888888888661
18881121888888888881
18881111888888888881
18881111118888888881
18881111118888888881
18881111111188818881
18881111111188818881
11111111111111111111
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
11111111111111111111
1..................1
1..................1
1..................1
1..................1
1..................1
1...11.............1
1...11.............1
1...1111...........1
1...1111...........1
1...111111.........1
1...111111.........1
1...11111111...1.551
18881111111188818551
11111111111111111111
]])
  end
  Global("chest", 2.5, 13.5, "reject")
  Spawn("chest", 13.5, 13.5, "reject")
  Spawn("diamond", 18, 7)
  Spawn("player", 15.5, 11)
end

tiles = "tiles/glacier"
patterns = "backgrounds/wip"
