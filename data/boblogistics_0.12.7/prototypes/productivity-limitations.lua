local roboport_parts = {
  "roboport-antenna-1",
  "roboport-antenna-2",
  "roboport-antenna-3",
  "roboport-antenna-4",
  "roboport-chargepad-1",
  "roboport-chargepad-2",
  "roboport-chargepad-3",
  "roboport-chargepad-4",
  "roboport-door-1",
  "roboport-door-2",
  "roboport-door-3",
  "roboport-door-4"
}


local robot_parts = {
  "flying-robot-frame-2",
  "flying-robot-frame-3",
  "flying-robot-frame-4",
}


bobmods.lib.add_productivity_limitations(roboport_parts)
bobmods.lib.add_productivity_limitations(robot_parts)
