<div align = center>

# TRA Minecraft Server

[![Badge CI]][CI]
[![Badge Nix]][Nix]
[![Badge X]][Follow X]

</div>

Personal Minecraft modded server infrastructure for Forge 1.20.1, deployed on Hetzner Cloud using Terraform.

## Features

- Automated mod management with checksummed lockfile system
- Infrastructure as code with Terraform
- Nix-based development environment
- CI/CD with automatic deployments

## Mod List

_Note that not all mods listed here are installed on the server; rather, this is a list of mods being used by the client mod pack._

- [AE2WTLib](https://modrinth.com/mod/pNabrMMw) [15\.3\.3\-forge] by mari_023, Ridanisaurus, DomamaN202
- [Advanced Peripherals](https://modrinth.com/mod/SOw6jD6x) [0\.7\.46r] by Srendi
- [AppleSkin](https://modrinth.com/mod/EsAfCjCV) [2\.5\.1\+mc1\.20\.1] by squeek
- [Applied Energistics 2](https://modrinth.com/mod/XxWD5pD3) [15\.4\.10] by TeamAppliedEnergistics
- [Architectury](https://modrinth.com/mod/lhGA9TYQ) [9\.2\.14] by shedaniel
- [Balm](https://www.curseforge.com/projects/531761) [7\.3\.38] by BlayTheNinth
- [CC: Tweaked](https://modrinth.com/mod/gu7yAYhd) [1\.117\.0] by Daniel Ratcliffe, Aaron Mills, SquidDev
- [CC: VS](https://modrinth.com/mod/bvgy8HrZ) [1\.20\.1\-forge\-0\.6\.0]
- [CC:C Bridge](https://modrinth.com/mod/fXt291FO) [1\.7\.1] by Sammy L\. Koch
- [Carry On](https://modrinth.com/mod/joEfVgkn) [2\.1\.2\.7] by Tschipp, Purplicious_Cow, cy4n
- [Chunk Loaders](https://modrinth.com/mod/t1VgucWo) [1\.2\.9] by SuperMartijn642
- [Cloth Config v10 API](https://modrinth.com/mod/9s6osm5g) [11\.1\.106] by shedaniel
- [Collective](https://modrinth.com/mod/e0M1UDsY) [8\.13] by Rick South
- [CoroUtil](https://www.curseforge.com/projects/237749) [1\.20\.1\-1\.3\.7] by Corosus
- [Create](https://modrinth.com/mod/LNytGWDc) [6\.0\.8] by simibubi
- [Create Crafts & Additions](https://modrinth.com/mod/kU1G12Nn) [1\.20\.1\-1\.3\.3] by MRH0
- [Create Deco](https://modrinth.com/mod/sMvUb4Rb) [2\.0\.3\-1\.20\.1\-forge] by Kayla, Talrey, Ordana, Cassian
- [Create Jetpack](https://modrinth.com/mod/UbFnAd4l) [4\.4\.6] by possible_triangle
- [Create Ore Excavation](https://modrinth.com/mod/ResbpANg) [1\.6\.5] by tom5454
- [Create Railways Navigator](https://modrinth.com/mod/Dq3STxps) [1\.20\.1\-alpha\-0\.9\.0\-1\-C6] by MrJulsen
- [Create Track Map](https://modrinth.com/mod/gxoNIjg6) [1\.4] by LittleChaSiu
- [Create: Bells & Whistles](https://modrinth.com/mod/gJ5afkVv) [0\.4\.3\-1\.20\.x] by lev
- [Create: Copycats\+](https://modrinth.com/mod/UT2M39wf) [3\.0\.7\+mc\.1\.20\.1\-forge] by Lysine, Bennyboy1695, Redcat_XVIII
- [Create: Escalated](https://modrinth.com/mod/LyOBYG8Q) [1\.2\.1] by rbasamoyai
- [Create: Steam 'n' Rails](https://modrinth.com/mod/ZzjhlDgM) [1\.6\.15\-beta\+forge\-mc1\.20\.1] by The Railways Team
- [Create: Structures](https://modrinth.com/mod/IAnP4np7) [0\.1\.1] by FusionSwarly
- [Create: Threaded Trains](https://modrinth.com/mod/RYJzdkDr) [1\.20\.1\-1\.0\.0] by MrJulsen
- [Curios API](https://modrinth.com/mod/vvuO3ImH) [5\.14\.1\+1\.20\.1] by C4
- [Cut Through](https://modrinth.com/mod/Dk6su9JN) [8\.0\.2] by Fuzs
- [Diagonal Fences](https://modrinth.com/mod/IKARgflD) [8\.1\.5] by Fuzs, XFactHD
- [Diagonal Walls](https://modrinth.com/mod/FQgc8dib) [8\.0\.4] by Fuzs, XFactHD
- [Distant Horizons](https://modrinth.com/mod/uCdwusMi) [2\.4\.5\-b] by James Seibel, Leonardo Amato, Cola, coolGi, Ran, Leetom, pshsh
- [Distraction Free Recipes \(EMI\)](https://modrinth.com/mod/gbJLUhZP) [1\.2\.1] by Toni
- [Domum Ornamentum](https://www.curseforge.com/projects/527361) [1\.20\.1\-1\.0\.296] by LDTTeam, OrionDevelopment
- [Double Doors](https://modrinth.com/mod/JrvR9OHr) [7\.2] by Rick South
- [DragonLib](https://modrinth.com/mod/sbIsGaOV) [1\.20\.1\-beta\-3\.0\.19] by MrJulsen
- [Dungeons and Taverns](https://modrinth.com/mod/tpehi7ww) [3\.0\.3\.f] by NovaWostra, Walls
- [Durability Tooltip](https://modrinth.com/mod/smUP7V3r) [1\.1\.6] by SuperMartijn642
- [Embeddium](https://modrinth.com/mod/sk9rgfiA) [0\.3\.31\+mc1\.20\.1] by embeddedt
- [Embeddium Extra](https://modrinth.com/mod/oY2B1pjg) [0\.5\.4\.4\+mc1\.20\.1\-build\.131] by dima_dencep, FlashyReese
- [Enchanted](https://modrinth.com/mod/HsbpdVo9) [3\.1\.13] by Favouriteless
- [Ender IO](https://modrinth.com/mod/49ZofO4f) [6\.2\.17\-beta] by CrazyPants, tterrag, HenryLoenwind, MatthiasM, CyanideX, EpicSquid, Rover656, HypherionSA, agnor99, Ferri_Arnus, dphaldes
- [Exposure](https://modrinth.com/mod/hB899VmG) [1\.7\.16] by mortuusars
- [Extreme Reactors](https://modrinth.com/mod/idkvShUy) [1\.20\.1\-2\.0\.84] by ZeroNoRyouki
- [GeckoLib 4](https://modrinth.com/mod/8BmcQJ2H) [4\.8\.3] by Gecko, Eliot, AzureDoom, DerToaster, Tslat, Witixin
- [Gravestone Mod](https://modrinth.com/mod/RYtXKJPr) [1\.20\.1\-1\.0\.35] by Max Henkel
- [GuideME](https://modrinth.com/mod/Ck4E7v7R) [20\.1\.14] by shartte
- [Immersive Engineering](https://modrinth.com/mod/tIm2nV03) [1\.20\.1\-10\.2\.0\-183] by BluSunrize and Damien A\.W\. Hazard
- [Inventory Profiles Next](https://modrinth.com/mod/O7RBXm3n) [1\.10\.19] by blackd/mirinimi
- [Jade](https://modrinth.com/mod/nvQzSEkH) [11\.13\.2\+forge] by Snownee
- [Jade Addons](https://modrinth.com/mod/xuDOzCLy) [5\.5\.0\+forge] by Snownee
- [Jade\-VS](https://modrinth.com/mod/zNKzjsZM) [1\.2\.3] by zyxkad
- [Journeymap](https://modrinth.com/mod/lfHFW1mp) [5\.10\.3] by Techbrew, Mysticdrew
- [Just Enough Immersive Multiblocks](https://modrinth.com/mod/ffLYPaWN) [1\.0\.6] by sguest
- [Just Enough Items](https://modrinth.com/mod/u6dRKJwZ) [15\.20\.0\.129] by mezz
- [Just Enough Resources](https://modrinth.com/mod/uEfK2CXF) [1\.4\.0\.247] by way2muchnoise
- [Kotlin for Forge](https://modrinth.com/mod/ordsPcFz) [Zsh14XeQ]
- [Macaw's Bridges](https://modrinth.com/mod/GURcjz8O) [3\.1\.0] by Sketch Macaw & Peachy Macaw
- [Macaw's Doors](https://modrinth.com/mod/kNxa8z3e) [1\.1\.2] by Sketch Macaw & Sketch Peachy
- [Macaw's Fences and Walls](https://modrinth.com/mod/GmwLse2I) [1\.2\.1] by Sketch Macaw & Peachy Macaw
- [Macaw's Furniture](https://modrinth.com/mod/dtWC90iB) [3\.4\.1] by Sketch Macaw
- [Macaw's Lights and Lamps](https://modrinth.com/mod/w4an97C2) [1\.1\.5] by Sketch Macaw & Peachy Macaw
- [Macaw's Paths and Pavings](https://modrinth.com/mod/VRLhWB91) [1\.1\.1] by Sketch Macaw & Peachy Macaw
- [Macaw's Roofs](https://modrinth.com/mod/B8jaH3P1) [2\.3\.2] by Sketch Macaw & Sketch Peachy
- [Macaw's Stairs and Balconies](https://modrinth.com/mod/iP3wH1ha) [1\.0\.2] by Sketch Macaw & Sketch Peachy
- [Macaw's Trapdoors](https://modrinth.com/mod/n2fvCDlM) [1\.1\.5] by Sketch Macaw & Peachy Macaw
- [Macaw's Windows](https://modrinth.com/mod/C7I0BCni) [2\.4\.2] by Sketch Macaw & Peachy Macaw
- [Mantle](https://modrinth.com/mod/Cg6Uc79H) [1\.11\.97] by Slime Knights
- [MineColonies](https://www.curseforge.com/projects/245506) [1\.20\.1\-1\.1\.1186\-snapshot] by LDT Team
- [Mouse Tweaks](https://modrinth.com/mod/aC3cM3Vq) [2\.25\.1] by Ivan Molodetskikh \(YaLTeR\)
- [Multi\-Piston](https://www.curseforge.com/projects/303278) [1\.20\-0\.0\.47\-snapshot] by Let's Dev Together Team
- [Nature's Compass](https://modrinth.com/mod/fPetb5Kh) [1\.20\.1\-1\.11\.2\-forge] by ChaosTheDude
- [NetherPortalFix](https://www.curseforge.com/projects/241160) [13\.0\.1] by BlayTheNinth
- [Oculus](https://modrinth.com/mod/GchcoXML) [1\.8\.0] by NanoLive, dima_dencep, coderbot, IMS212, Justsnoopy30, FoundationGames
- [Patchouli](https://modrinth.com/mod/nU0bVIaL) [1\.20\.1\-84\.1\-FORGE] by Vazkii
- [Polymorph](https://www.curseforge.com/projects/388800) [0\.49\.10\+1\.20\.1] by Illusive Soulworks
- [Polymorphic Energistics](https://www.curseforge.com/projects/941096) [0\.1\.1\-1\.20\.1] by 90
- [Puzzles Lib](https://modrinth.com/mod/QAGBst4M) [8\.1\.33] by Fuzs
- [Quark](https://modrinth.com/mod/qnQsVE2z) [4\.0\-462] by Vazkii, WireSegal, MCVinnyq, Sully
- [Schematic Energistics](https://modrinth.com/mod/2qXuuYu8) [1\.3\.2] by Yrley
- [ShulkerBoxTooltip](https://modrinth.com/mod/2M01OLQq) [4\.0\.4\+1\.20\.1] by MisterPeModder
- [SmartBrainLib](https://modrinth.com/mod/PuyPazRT) [1\.15] by Tslat
- [Sophisticated Backpacks](https://modrinth.com/mod/TyCTlI4b) [3\.24\.20\.1500] by P3pp3rF1y, Ridanisaurus
- [Sophisticated Core](https://modrinth.com/mod/nmoqTijg) [1\.2\.119\.1369] by P3pp3rF1y
- [Sound Physics Remastered](https://modrinth.com/mod/qyVF9oeo) [1\.20\.1\-1\.5\.1] by Sonic Ether, vlad2305m, Max Henkel, Saint
- [StateObserver](https://modrinth.com/mod/D1lhcTKz) [1\.4\.3] by Favouriteless
- [Structurize](https://www.curseforge.com/projects/298744) [1\.20\.1\-1\.0\.802\-snapshot] by LDT Team
- [SuperMartijn642's Config Library](https://modrinth.com/mod/LN9BxssP) [1\.1\.8] by SuperMartijn642
- [SuperMartijn642's Core Lib](https://modrinth.com/mod/rOUBggPv) [1\.1\.19] by SuperMartijn642
- [Tinkers' Construct](https://modrinth.com/mod/rxIIYO6c) [3\.11\.2\.166] by Slime Knights
- [TownTalk](https://www.curseforge.com/projects/900364) [1\.1\.0] by LDT Team
- [Trash Cans](https://modrinth.com/mod/4QrnfueM) [1\.0\.18b] by SuperMartijn642
- [TxniLib](https://modrinth.com/mod/vBbPDuOs) [1\.0\.24] by Toni
- [UI Library Mod](https://www.curseforge.com/projects/522992) [1\.20\.1\-1\.0\.194\-snapshot] by LDT Team
- [Valkyrien Skies 2](https://modrinth.com/mod/V5ujR2yw) [2\.4\.9]
- [What Are They Up To](https://www.curseforge.com/projects/945479) [1\.20\.1\-1\.2\.3] by Corosus
- [YUNG's API](https://modrinth.com/mod/Ua7DFN59) [1\.20\-Forge\-4\.0\.6] by YUNGNICKYOUNG
- [YUNG's Better Desert Temples](https://modrinth.com/mod/XNlO7sBv) [1\.20\-Forge\-3\.0\.3] by YUNGNICKYOUNG, Tera
- [YUNG's Better Dungeons](https://modrinth.com/mod/o1C1Dkj5) [1\.20\-Forge\-4\.0\.4] by YUNGNICKYOUNG, Acarii
- [YUNG's Better End Island](https://modrinth.com/mod/2BwBOmBQ) [1\.20\-Forge\-2\.0\.6] by YUNGNICKYOUNG, Acarii
- [YUNG's Better Jungle Temples](https://modrinth.com/mod/z9Ve58Ih) [1\.20\-Forge\-2\.0\.5] by YUNGNICKYOUNG, Tera
- [YUNG's Better Mineshafts](https://modrinth.com/mod/HjmxVlSr) [1\.20\-Forge\-4\.0\.4] by YUNGNICKYOUNG
- [YUNG's Better Nether Fortresses](https://modrinth.com/mod/Z2mXHnxP) [1\.20\-Forge\-2\.0\.6] by YUNGNICKYOUNG, Acarii
- [YUNG's Better Ocean Monuments](https://modrinth.com/mod/3dT9sgt4) [1\.20\-Forge\-3\.0\.4] by YUNGNICKYOUNG, Tera
- [YUNG's Better Strongholds](https://modrinth.com/mod/kidLKymU) [1\.20\-Forge\-4\.0\.3] by YUNGNICKYOUNG, Acarii
- [YUNG's Better Witch Huts](https://modrinth.com/mod/t5FRdP87) [1\.20\-Forge\-3\.0\.3] by YUNGNICKYOUNG, Acarii
- [YUNG's Bridges](https://modrinth.com/mod/Ht4BfYp6) [1\.20\-Forge\-4\.0\.3] by YUNGNICKYOUNG
- [YUNG's Extras](https://modrinth.com/mod/ZYgyPyfq) [1\.20\-Forge\-4\.0\.3] by YUNGNICKYOUNG, Acarii
- [Zero CORE 2](https://modrinth.com/mod/rHpb85Mf) [1\.20\.1\-2\.1\.45] by ZeroNoRyouki
- [Zeta](https://modrinth.com/mod/MVARlG2f) [1\.0\-31] by Vazkii, quat, IThundxr, siuol, wiresegal, MehVahdJukaar
- [libIPN](https://modrinth.com/mod/onSQdWhM) [4\.0\.2] by blackd/mirinimi
- [stylecolonies mod](https://www.curseforge.com/projects/827507) [1\.20\.1\-1\.15\.54] by Raycoms

## Quick Start

```bash
# Enter development environment
nix develop

# Install mods
just install

# Plan infrastructure changes
just plan

# Apply infrastructure changes
just apply
```

## Mod Management

Add mods to `mods.json` with their download URLs, then run:

```bash
just install       # Download and verify mods
just clean-install # Clean install (removes existing mods)
just lock          # Regenerate lockfile
```

## Requirements

- Nix with flakes enabled
- Hetzner Cloud account (for deployment)
- Terraform Cloud account (for state management)

Required environment variables for Terraform operations:

- `TF_VAR_hcloud_token`
- `TF_VAR_public_ssh_key`
- `TF_VAR_private_ssh_key`
- `TF_VAR_rcon_password`
- `TF_VAR_rcon_port`

<!------------------------------>

[CI]: https://github.com/dotunwrap/tra-mc/actions/workflows/ci.yml
[Nix]: https://nixos.org
[Follow X]: https://twitter.com/intent/user?screen_name=dotunwrap
[Badge CI]: https://github.com/dotunwrap/tra-mc/actions/workflows/ci.yml/badge.svg?branch=main
[Badge Nix]: https://img.shields.io/badge/-nix_btw-75afd7?logo=nixos&logoColor=CAD3F5&labelColor=24273A
[Badge X]: https://img.shields.io/twitter/follow/dotunwrap
