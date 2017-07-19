-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
lvvvvvvvvvvvvvvvvvvl
m..................k
m..................k
m..................k
m..................k
m................egk
m.........ac88888yAk
m.........km8888888k
m.......ackm8888888k
m.......klkm8888888k
m.....acklkm8888888k
m88888klklkm8888888k
m888acklklkm888d888k
m888klklklkm888n888k
lbbbllklklklbbblbbbl
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
lvvvvvvvvvvvvvvvvvvl
m..................k
m..................k
m..................k
m..................k
m..................k
m.........ac.......k
m.........km.......k
m.......ackm.......k
m.......klkm.......k
m.....acklkm.......k
m.....klklkm.......k
m...acklklkm...d.egk
m888klklklkm888n8yAk
lbbbllklklklbbblbbbl
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
lvvvvvvvvvvvvvvvvvvl
m..................k
m..................k
m..................k
m..................k
m..................k
m...ac........3..egk
m888km88888888888yAk
m888kmac88888888888k
m888kmlm88888888888k
m888kmlmac888888888k
m888kmlmlm888888888k
m888kmlmlmac888d888k
m888kmlmlmlm888n888k
lbbblmlmlmllbbblbbbl
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
lvvvvvvvvvvvvvvvvvvl
m..................k
m..................k
m..................k
m..................k
m..................k
m...ac........3....k
m...km.............k
m...kmac...........k
m...kmlm...........k
m...kmlmac.........k
m...kmlmlm.........k
m...kmlmlmac...d.egk
m888kmlmlmlm888n8yAk
lbbblmlmlmllbbblbbbl
]])
  end
  Global("chest", 2.5, 13.5, "reject")
  Spawn("chest", 13.5, 13.5, "reject")
  Spawn("diamond", 18, 7)
  Spawn("player", 15.5, 11)
end

tiles = "tiles/glacier"
patterns = "backgrounds/wip"
