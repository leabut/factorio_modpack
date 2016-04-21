local fluids = {
  "sulfuric-nitric-acid",
  "glycerol",
  "nitroglycerin"
}

local parts = {
  "gun-cotton-synthetic",
  "petroleum-jelly",
  "gun-cotton",
  "cordite",
  "bullet-casing",
  "magazine",
  "bullet-projectile",
  "ap-bullet-projectile",
  "he-bullet-projectile",
  "flame-bullet-projectile",
  "acid-bullet-projectile",
  "poison-bullet-projectile",
  "impact-bullet-projectile",
  "shotgun-shell-casing",
  "shot",
  "laser-rifle-battery-case",
  "rocket-engine",
  "rocket-body",
  "rocket-warhead",
  "piercing-rocket-warhead",
  "impact-rocket-warhead",
  "explosive-rocket-warhead",
  "acid-rocket-warhead",
  "flame-rocket-warhead",
  "poison-rocket-warhead",
}

local bullets = {
  "bullet",
  "ap-bullet",
  "he-bullet",
  "flame-bullet",
  "acid-bullet",
  "poison-bullet",
  "impact-bullet",
}



bobmods.lib.add_productivity_limitations(fluids)
bobmods.lib.add_productivity_limitations(parts)

-- Might be a bit unfair to include the completed bullets, even though they're an intermediate.
--bobmods.lib.add_productivity_limitations(bullets)


