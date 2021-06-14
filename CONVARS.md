# Server Configurations

Add the following to your server config:

```cpp
// ----------------------------------------
// Custom Role Settings
// ----------------------------------------

// ROLE SPAWN REQUIREMENTS
ttt_special_traitor_pct                     0.33    // Percentage of traitors, rounded up, that can spawn as a "special traitor" (e.g. hypnotist, impersonator, etc.)
ttt_special_traitor_chance                  0.5     // The chance that a "special traitor" will spawn in each available slot made by "ttt_special_traitor_pct"
ttt_special_innocent_pct                    0.33    // Percentage of innocents, rounded up, that can spawn as a "special innocent" (e.g. glitch, phantom, etc.)
ttt_special_innocent_chance                 0.5     // The chance that a "special innocent" will spawn in each available slot made by "ttt_special_innocent_pct"
ttt_independent_chance                      0.5     // The chance that an independent or jester (e.g. drunk, swapper, etc.) will spawn in a round.
// (Note: Only one independent or jester can spawn per round.)

// Enable/Disable Individual Roles
ttt_hypnotist_enabled                       0       // Whether or not the hypnotist should spawn
ttt_impersonator_enabled                    0       // Whether or not the impersonator should spawn
ttt_glitch_enabled                          0       // Whether or not the glitch should spawn
ttt_phantom_enabled                         0       // Whether or not the phantom should spawn
ttt_revenger_enabled                        0       // Whether or not the revenger should spawn
ttt_deputy_enabled                          0       // Whether or not the deputy should spawn
ttt_mercenary_enabled                       0       // Whether or not the mercenary should spawn
ttt_veteran_enabled                         0       // Whether or not the veteran should spawn
ttt_jester_enabled                          0       // Whether or not the jester should spawn
ttt_swapper_enabled                         0       // Whether or not the swapper should spawn
ttt_clown_enabled                           0       // Whether or not the clown should spawn
ttt_beggar_enabled                          0       // Whether or not the beggar should spawn
ttt_bodysnatcher_enabled                    0       // Whether or not the bodysnatcher should spawn
ttt_drunk_enabled                           0       // Whether or not the drunk should spawn
ttt_old_man_enabled                         0       // Whether or not the old man should spawn

// Individual Role Spawn Weights
ttt_hypnotist_spawn_weight                  1       // The weight assigned to spawning the hypnotist
ttt_impersonator_spawn_weight               1       // The weight assigned to spawning the impersonator
ttt_glitch_spawn_weight                     1       // The weight assigned to spawning the glitch
ttt_phantom_spawn_weight                    1       // The weight assigned to spawning the phantom
ttt_revenger_spawn_weight                   1       // The weight assigned to spawning the revenger
ttt_deputy_spawn_weight                     1       // The weight assigned to spawning the deputy
ttt_mercenary_spawn_weight                  1       // The weight assigned to spawning the mercenary
ttt_veteran_spawn_weight                    1       // The weight assigned to spawning the veteran
ttt_jester_spawn_weight                     1       // The weight assigned to spawning the jester
ttt_swapper_spawn_weight                    1       // The weight assigned to spawning the swapper
ttt_clown_spawn_weight                      1       // The weight assigned to spawning the clown
ttt_beggar_spawn_weight                     1       // The weight assigned to spawning the beggar
ttt_bodysnatcher_spawn_weight               1       // The weight assigned to spawning the bodysnatcher
ttt_drunk_spawn_weight                      1       // The weight assigned to spawning the drunk
ttt_old_man_spawn_weight                    1       // The weight assigned to spawning the old man
// (Note: Each role is limited to one player per round.)

// Individual Role Minimum Player Requirements
ttt_hypnotist_min_players                   0       // The minimum number of players required to spawn the hypnotist
ttt_impersonator_min_players                0       // The minimum number of players required to spawn the impersonator
ttt_glitch_min_players                      0       // The minimum number of players required to spawn the glitch
ttt_phantom_min_players                     0       // The minimum number of players required to spawn the phantom
ttt_revenger_min_players                    0       // The minimum number of players required to spawn the revenger
ttt_deputy_min_players                      0       // The minimum number of players required to spawn the deputy
ttt_mercenary_min_players                   0       // The minimum number of players required to spawn the mercenary
ttt_veteran_min_players                     0       // The minimum number of players required to spawn the veteran
ttt_jester_min_players                      0       // The minimum number of players required to spawn the jester
ttt_swapper_min_players                     0       // The minimum number of players required to spawn the swapper
ttt_clown_min_players                       0       // The minimum number of players required to spawn the clown
ttt_beggar_min_players                      0       // The minimum number of players required to spawn the beggar
ttt_bodysnatcher_min_players                0       // The minimum number of players required to spawn the bodysnatcher
ttt_drunk_min_players                       0       // The minimum number of players required to spawn the drunk
ttt_old_man_min_players                     0       // The minimum number of players required to spawn the old man

// ----------------------------------------

// TRAITOR TEAM SETTINGS
ttt_traitor_vision_enable                   0       // Whether members of the Traitor team can see other members of the Traitor team (including Glitches) through walls via a highlight effect.

// Impersonator
ttt_impersonator_damage_penalty             0       // Damage penalty that the impersonator has before being promoted (e.g. 0.5 = 50% less damage)

// ----------------------------------------

// INNOCENT TEAM SETTINGS
// Detective
ttt_detective_search_only                   1       // Whether only detectives can search bodies or not
ttt_all_search_postround                    1       // Whether non-detectives can search bodies post-round or not
ttt_detective_starting_health               100     // The amount of health the detective spawns with

// Phantom
ttt_phantom_respawn_health                  50      // The amount of health a Phantom will respawn with
ttt_phantom_weaker_each_respawn             0       // Whether a Phantom respawns weaker (1/2 as much HP) each time they respawn, down to a minimum of 1
ttt_phantom_killer_smoke                    1       // Whether to show smoke on the player who killed the Phantom
ttt_phantom_announce_death                  0       // Whether to announce to Detectives (and promoted Deputies and Imposters) that a Phantom has been killed or respawned
ttt_phantom_killer_haunt                    1       // Whether to have the Phantom haunt their killer
ttt_phantom_killer_haunt_power_max          100     // The maximum amount of power a Phantom can have when haunting their killer
ttt_phantom_killer_haunt_power_rate         10      // The amount of power to regain per second when a Phantom is haunting their killer
ttt_phantom_killer_haunt_move_cost          25      // The amount of power to spend when a Phantom is moving their killer via a haunting. 0 to disable
ttt_phantom_killer_haunt_jump_cost          50      // The amount of power to spend when a Phantom is making their killer jump via a haunting. 0 to disable
ttt_phantom_killer_haunt_drop_cost          75      // The amount of power to spend when a Phantom is making their killer drop their weapon via a haunting. 0 to disable
ttt_phantom_killer_haunt_attack_cost        100     // The amount of power to spend when a Phantom is making their killer attack via a haunting. 0 to disable
ttt_phantom_killer_footstep_time            0       // The amount of time a Phantom's killer's footsteps should show before fading. 0 to disable

// Revenger
ttt_revenger_radar_timer                    15      // The amount of time between radar pings for the revenger's lover's killer
ttt_revenger_damage_bonus                   0       // Extra damage that the revenger deals to their lover's killer (e.g. 0.5 = 50% extra damage)

// Deputy
ttt_deputy_damage_penalty                   0       // Damage penalty that the deputy has before being promoted (e.g. 0.5 = 50% less damage)

// Mercenary
ttt_shop_mer_mode                           2       // What items are available to the mercenary in the shop (0=None, 1=Detective OR Traitor, 2=Detective AND Traitor, 3=Detective, 4=Traitor)

// Veteran
ttt_veteran_damage_bonus                    0.5     // Damage bonus that the veteran has when they are the last innocent alive (e.g. 0.5 = 50% more damage)
ttt_veteran_full_heal                       1       // Whether the veteran gets a full heal upon becoming the last remaining innocent or not

// ----------------------------------------

// JESTER TEAM SETTINGS
ttt_jesters_trigger_traitor_testers         1       // Whether jesters trigger traitor traps as if they were traitors

// Jester
ttt_jester_win_by_traitors                  1       // Whether the Jester will win the round if they are killed by a traitor
ttt_jester_notify_mode                      0       // The logic to use when notifying players that a Jester is killed. 0 - Don't notify anyone. 1 - Only notify Traitors and Detective. 2 - Only notify Traitors. 3 - Only notify Detective. 4 - Notify everyone.
ttt_jester_notify_sound                     0       // Whether to play a cheering sound when a Jester is killed
ttt_jester_notify_confetti                  0       // Whether to throw confetti when a Jester is a killed
ttt_jes_credits_starting                    0       // The number of credits a Jester should start with

// Swapper
ttt_swapper_respawn_health                  100     // What amount of health to give the Swapper when they are killed and respawned
ttt_swapper_notify_mode                     0       // The logic to use when notifying players that a Swapper is killed. 0 - Don't notify anyone. 1 - Only notify Traitors and Detective. 2 - Only notify Traitors. 3 - Only notify Detective. 4 - Notify everyone.
ttt_swapper_notify_sound                    0       // Whether to play a cheering sound when a Swapper is killed
ttt_swapper_notify_confetti                 0       // Whether to throw confetti when a Swapper is a killed
ttt_swapper_killer_health                   100     // What amount of health to give the person who killed the Swapper. Set to "0" to kill them
ttt_swa_credits_starting                    0       // The number of credits a Swapper should start with

// Clown
ttt_clown_damage_bonus                      0       // Damage bonus that the clown has after being triggered (e.g. 0.5 = 50% more damage)

// Beggar
ttt_reveal_beggar_change                    1       // Whether the beggar is revealed to you when they join your team or not

// Bodysnatcher
ttt_bodysnatcher_destroy_body               0       // Whether the bodysnatching device destroys the body it is used on or not
ttt_bodysnatcher_show_role                  1       // Whether the bodysnatching device shows the role of the corpse it is used on or not

// ----------------------------------------

// INDEPENDENT TEAM SETTINGS
ttt_independents_trigger_traitor_testers    0       // Whether independents trigger traitor traps as if they were traitors

// Drunk
ttt_drunk_sober_time                        180     // Time in seconds for the drunk to remember their role
ttt_drunk_innocent_chance                   0.7     // Chance that the drunk will become an innocent when remembering their role

// Old Man
ttt_old_man_starting_health                 1       // The amount of health the old man spawns with

// ----------------------------------------

// WEAPON SHOP SETTINGS
// Random Shop Restriction Percent
ttt_shop_random_percent                     50      // The percent chance that a weapon in the shop will be not be shown

// Role Specific Random Shop Restriction Percent
ttt_shop_random_tra_percent                 0       // The percent chance that a weapon in the shop will be not be shown for the Traitors
ttt_shop_random_det_percent                 0       // The percent chance that a weapon in the shop will be not be shown for the Detectives
ttt_shop_random_hyp_percent                 0       // The percent chance that a weapon in the shop will be not be shown for the Hypnotists
ttt_shop_random_dep_percent                 0       // The percent chance that a weapon in the shop will be not be shown for the Deputies
ttt_shop_random_imp_percent                 0       // The percent chance that a weapon in the shop will be not be shown for the Impersonators

// Enable/Disable Individual Role Random Shop Restrictions
ttt_shop_random_tra_enabled                 0       // Whether role shop randomization is enabled for Traitors
ttt_shop_random_det_enabled                 0       // Whether role shop randomization is enabled for Detectives
ttt_shop_random_hyp_enabled                 0       // Whether role shop randomization is enabled for Hypnotists
ttt_shop_random_dep_enabled                 0       // Whether role shop randomization is enabled for Deputies
ttt_shop_random_imp_enabled                 0       // Whether role shop randomization is enabled for Impersonators

// Role Sync
ttt_shop_hyp_sync                           0       // Whether Hypnotists should have all weapons that vanilla Traitors have in their weapon shop
ttt_shop_imp_sync                           0       // Whether Impersonators should have all weapons that vanilla Traitors have in their weapon shop

// ----------------------------------------

// OTHER SETTINGS
// Logging
ttt_debug_logkills                          1       // Whether to log when a player is killed in the console
ttt_debug_logroles                          1       // Whether to log what roles players are assigned in the console

// Karma    
ttt_karma_jesterkill_penalty                50      // Karma penalty for killing the jester
ttt_karma_jester_ratio                      0.5     // Ratio of damage to jesters, to be taken from karma

// Sprint
ttt_sprint_bonus_rel                        0.4     // The relative speed bonus given while sprinting (e.g. 0.4 = 40% speed increase)
ttt_sprint_regenerate_innocent              0.08    // Stamina regeneration for non-traitors
ttt_sprint_regenerate_traitor               0.12    // Stamina regeneration for traitors
ttt_sprint_consume                          0.2     // Stamina consumption speed

// Better Equipment Menu
ttt_bem_allow_change                        1       // Allow clients to change the look of the Traitor/Detective menu
ttt_bem_sv_cols                             4       // Sets the number of columns in the Traitor/Detective menu's item list (serverside)
ttt_bem_sv_rows                             5       // Sets the number of rows in the Traitor/Detective menu's item list (serverside)
ttt_bem_sv_size                             64      // Sets the item size in the Traitor/Detective menu's item list (serverside)
```

Thanks to [KarlOfDuty](https://github.com/KarlOfDuty) for his original version of this document, [here](https://github.com/KarlOfDuty/TTT-Custom-Roles/blob/patch-1/README.md).

# Role Weapon Shop

In TTT some roles have shops where they are allowed to purchase weapons. Given the prevalence of custom weapons from the workshop, the ability to add more weapons to each role's shop has been added.

## Adding Weapons

To add weapons to a role (that already has a shop), create a .txt file with the weapon class (e.g. weapon_ttt_somethingcool.txt) in the garrysmod/data/roleweapons/{rolename} folder.\
**NOTE**: If the _roleweapons_ folder does not already exist in garrysmod/data, create it.\
**NOTE**: The name of the role must be all lowercase for cross-operating system compatibility. For example: garrysmod/data/roleweapons/detective/weapon_ttt_somethingcool.txt

Also note the ttt_shop_* ConVars that are available above which can help control some of the role weapon shop lists.

## Removing Weapons

At the same time, there are some workshop weapons that are given to multiple roles that maybe you don't want to be available to certain roles. In order to handle that case, the ability to exclude weapons from a role's weapon shop has been added.

To remove weapons from a role's shop, create a .exclude.txt file with the weapon class (e.g. weapon_ttt_somethingcool.exclude.txt) in the garrysmod/data/roleweapons/{rolename} folder.\
**NOTE**: If the _roleweapons_ folder does not already exist in garrysmod/data, create it.\
**NOTE**: The name of the role must be all lowercase for cross-operating system compatibility. For example: garrysmod/data/roleweapons/detective/weapon_ttt_somethingcool.exclude.txt

## Bypassing Weapon Randomization
With the addition of the Shop Randomization feature (and the ttt_shop_random_* ConVars), weapons may not always appear in the shop (which is the point). If, however, you want certain weapons to _always_ be in the shop while other weapons are randomized, the ability to bypass shop randomization for a weapon in a role's weapon shop has been added.

To stop a weapon from being removed from a role's shop via randomization, create a .norandom.txt file with the weapon class (e.g. weapon_ttt_somethingcool.norandom.txt) in the garrysmod/data/roleweapons/{rolename} folder.\
**NOTE**: If the _roleweapons_ folder does not already exist in garrysmod/data, create it.\
**NOTE**: The name of the role must be all lowercase for cross-operating system compatibility. For example: garrysmod/data/roleweapons/detective/weapon_ttt_somethingcool.norandom.txt

## Finding a Weapon's Class

To find the class name of a weapon to use above, follow the steps below
1. Start a local server with TTT as the selected gamemode
2. Spawn 1 bot by using the _bot_ command in console
3. Obtain the weapon whose class you want. If it is already available to buy from a certain role's shop, either force yourself to be that role via the _ttt\_force\_*_ commands or via a ULX plugin.
4. Run the following command in console to get a list of all of your weapon classes: _lua\_run PrintTable(player.GetHumans()[1]:GetWeapons())_

## Adding Equipment

Equipment are items that a role can use that do not take up an equipment slot, such as the body armor or radar. To add equipment items to a role (that already has a shop), create a .txt file with the equipment item's name (e.g. "bruh bunker.txt") in the garrysmod/data/roleweapons/{rolename} folder.\
**NOTE**: If the _roleweapons_ folder does not already exist in garrysmod/data, create it.\
**NOTE**: The name of the role must be all lowercase for cross-operating system compatibility. For example: garrysmod/data/roleweapons/detective/bruh bunker.txt

## Finding an Equipment Item's Name

To find the name of an equipment item to use above, follow the steps below
1. Start a local server with TTT as the selected gamemode
2. Spawn 1 bot by using the _bot_ command in console
3. Obtain the equipment item whose name you want. If it is already available to buy from a certain role's shop, either force yourself to be that role via the _ttt\_force\_*_ commands or via a ULX plugin.
4. Run the following command in console to get a full list of your equipment item names: _lua\_run GetEquipmentItemById(EQUIP\_RADAR); lua\_run for id, e in pairs(EquipmentCache) do if player.GetHumans()[1]:HasEquipmentItem(id) then print(id .. " = " .. e.name) end end_