# **CHANGELOG - NeverSink's Filter 2**
----------------------------------
PoE2 is currently in an early access. As the game changes and adjusts you can expect large changes in the filter as well. 

Suggestions and feedback is highly welcome! Please take a moment to write in our [DISCORD](https://discord.gg/zFEx92a).

Major thanks to all patreon supports to help us fund the continious development. [Patreon](https://www.patreon.com/Neversink) supporters.

----------------------------------
# **VERSION 0.10.0** - Big Runes Update
----------------------------------

- Adjusted tiering for the new economy. A LOT of things changed, expect a lot of updates!
- Added a Xeno-Tierlist for new league items - items from there will be eventually moved into other tierlists, once we know how to handle them
- Integrated all of the new items into different tierlists all across the filter
- Added the trarthan cannon into the typical tierlists
- Added 2 rules for pseudo-crafts
- Added rules for verisium
- NEW STYLE: Vaal
- NEW STYLE: Aura
- Added rules for Verisium
- A ton of tiering changes
- The filter now supports strictness generation that goes up to 3 strictnesses higher and mixed strictnesses (FilterBlade exclusive)
- Strictnesses within the filter have been reviewed, revamped and overhauled 
- Improved the campaign gold progression, added 3 rules for campaign specific large goldpiles
- Removed rare tablet rule
- Crafting rules now have more priority than regular bases salvage rules
- Added simple campaign unidentified tier ruling. T2 doesn't get any special treatment and follows the usual logic (as it's not very impactful). T3 and T4 is always highlighted, including when using FilterBlade's auto-adjust for build feature.
- A lot of other smaller changes

----------------------------------
# **VERSION 0.9.1a** - Minor Tiering Adjustments
----------------------------------

- Adjusted rules for: Grand Regalia, Ravenous Staff, Sacrificial Regalia, Tribal Mask
- Added Tribal mask as a chancing base
- Adjusted abyss tablet tiering rule

----------------------------------
# **VERSION 0.9.1** - Last of the Druids - Stable Update
----------------------------------

## TIERING ADJUSTMENTS
- Onboarded all new uniques
- Adjusted all tierlists to better match the current economy
- Improved safeguards for this and future leagues

## MISC CHANGES
- Made the highlight of high tier normal/magic best bases (Obliterator bows, Ancestral Tiaras etc) less strict, as these are crucial for crafting and also sell fairly well
- Added a new campaign rule to highlight lesser jeweller's orbs during leveling with stronger highlight
- Adjusted gold stack size offsets a bit

----------------------------------
# **VERSION 0.9.0a** - Last of the Druids Update
----------------------------------

- Increased fontsize of the weak rare leveling items to make them more visible

----------------------------------
# **VERSION 0.9.0** - Last of the Druids Update
----------------------------------

## STYLE & MAJOR FILTERBLADE CHANGES:
- Added a new style: 'Mythic' - it's a WoW inspired style with a focus on value tiering and wow-inspired color clustering
- Added the Endgame Auto-Adjust tool to FilterBlade.

## TIERING ADJUSTMENTS:
- Adjusted the tiering in preparation for the new league. This includes retiering of many uniques based on buffs, meta and predictions
- All currencies have been placed into 'safe positions', the same goes for socketables, essences and other sections

## CONTENT RELATED CHANGES:
- Purged the removed items (such as Homogenising Omen) from the filter and all related data files
- Added 6 new rules to highlight different TwiceCorrupted items
- Added all the new Vaal related currencies, new soul cores (all A-tier for now), abyss tablet
- Added the first PoE incubator. For now I've expanded the currency section to also support incubators. The incubator is B-tier for now.
- Added new lineage support gems (all A-tier for now)
- Added a new unique rule to give Vaal-Origin items some extra highlight (for the Krangler-Machine)
- Added a rule to highlight items with a Vaal Unique Mod
- Migrated all the basetypes (written a script that migrates economy data, safeguard, aspect and file file snapshots automatically - huge time saver for future updates)
- Added support for talismans across the filter and dedicated leveling sections
- Added all new other basetypes and changes

## TIERED ITEMS:
- Split the 'remaining tiered rares/magics' into jewellery and gear sections

## CAMPAIGN ADJUSTMENTS:
- Split campaign shields and rare shields into 3 subsections: tower shields, crest shields and targes.
- Endgame Tier-based rules can no longer apply during campaign
- Adjusted the priorities of leveling rules a bit
- Most leveling rules now consistently use AreaLevel <= 64
- Added gold progression for campaign. Medium pile highlight stacksize now scales with area level
- Split the campaign Baryas (Sekhema Trial Access key) rules into 1-point and 2-point versions. 1-point baryas are now hidden on strict and above, since you likely will get your first ascendancy through the (free) key. 2-point baryas are still shown and emit a sound

## MISC CHANGES:
- ANY 21%+ quality item is now highlighted.
- Reduced the highlight of 'Rare Tablets'. Not sure if this section matters at all anymore.
- Increased medium gold pile requirement in the endgame from 500->650
- The hider rules usually used by FilterBlade now hide items up to and including tier 3.
- The highlight for socketable items (for salvaging) has been reworked: it now has a section for small items and other items (previously large items and other items)
- Salvaging rules now include quality charms
- There's a lot of smaller changes and improvements all over the filter that are improving structure, architecture and other aspects without creating a noticable impact. Ask on the discord if anything is unclear!
- Adjusted the appearance of remaining T4 items (any rank)

----------------------------------
# **VERSION 0.8.3b** - Further economy improvements
----------------------------------

- Moved some bows higher in the basetype tiering
- Further adjusted the economy based tiering to better match the current state of the PoE2 economy
- Added some missing aspects to make a few tiering decisions more robust

----------------------------------
# **VERSION 0.8.3a** - S-tier and A-tier floor increase
----------------------------------

- The PoE2 economy is once again going a bit out of control with Ex Climbing to 500:1div.
- I've adjusted the calculations for the S-tier and A-tier thresholds to accomodate this. They should be around 50% higher than before

----------------------------------
# **VERSION 0.8.3** - Tiering and long-term improvements
----------------------------------

- Adjusted the filter to highlight ANY exceptional base (either 24%+ quality or extra socket) and give the really good ones some extra highlight (Previously the filter was highlighting exceptional bases as long as the base is *somewhat* good)
- Reliquary keys and calamity fragments now use the fragments visual style. The old red 'artefact' theme is reused for exceptional items with good bases
- Added a rule for rare tablets (tablets drop VERY rarely in a rare/corrupted form and these are almost always worth around ~10ex)
- Ongoing adjustments to the general tiering strategy. This is consistent out of dozens of individual changes. The main takeaway is that the filter will be better at evaluating drops better
- Added an additional low tier for lineage gems in order to still show some of the low-mid-cost lineage gems (between ~3.5-9ex).
- Currency tiering thresholds have been slightly adjusted. B tier threshold is slightly lower, C tier threshold is slightly higher.
- Exotic coinage has been moved from the general currency to currency-artefacts. Just as a note: these are treated differently, because they drop in large quantities, only when running expedition content and filtering by their pure economic value can lead to undesirable results.
- Tiny basetype tiering adjustments
- ILVL83 flasks are now shown ob uber-strict
- Changed a few uniques such as the 'Spire of Ire' was way higher tiered than intended.
- Regular tablets are all tiered a tier lower now.
- Many unique tiering adjustments notably 'The unborn lich' and 'Grip of Kulemac' is now in the 'T3-boss tier' as they are rather unexciting
- Some fixes for the 'remaining tiered items' to prevent them from highlighting tiered precursor emblems

----------------------------------
# **VERSION 0.8.2c** - BaseType Matrix finetuning
----------------------------------

- Further finetuned the tiering of endgame basetypes
- Moved all precursor tablets from T2 to Multibase

----------------------------------
# **VERSION 0.8.2b** - Tiering changes
----------------------------------

- Minor tiering adjustments
- Improved the tiering of abyss socketables
- Added 'Instance Local Items'
- Adjusted the priority of gear, salvaging, chance, exceptional and hider rules to all play together nicely

----------------------------------
# **VERSION 0.8.2a** - Tiering changes
----------------------------------

- Adjusted normal/magic/rare basetype tiering for body armors
- Adjusted chance bases
- Hide rules for gear are now located correctly (for filterblade users)

----------------------------------
# **VERSION 0.8.2** - Economy update for Abyss
----------------------------------

## ECONOMY RELATED CHANGES:
- Reenabled many economy based sections, now that GGG has enabled APIs and the quality of the data is good enough
- Integrated all new uniques into the economy and given appropriate safeguards
- Lineage gems are now fully economy tiered (with safeguards)
- Abyss currencies are now economy tiered (with safeguards)
- Catalysts are now fully economy tiered (with safeguards)

## BASETYPE TIERING CHANGES:
- The rule to highlight ilvl81+ normal wands now highlights different wands and is now disabled on very strict
- Adjusted the tiering for wands, staves and spears
- Finetuned the tiering a bit with the focus of making it more strict towards untiered bases. This mostly affects very strict and uber strict.

## GEM RELATED CHANGES
- Increased the arealevel requirement for skill and spirit gems from 78->79. This is due to level 18 gems being less common than before in T15 maps it seems.
- Added a new rule to highlight support gems with additional highlight until you reach arealevel 79 (T15 maps). From my experience, the extra gem tiers and other changes lead to me needing a lot more uncut support gems. This rule is hidden on uber strict (note that very strict won't show uncut support gems in T15+ maps at all)

----------------------------------
# **VERSION 0.8.1** - Initial Tiering update
----------------------------------

Done some initial tiering changes based on economy and discoveries.
This is an economy only update. Stable will be updated during the next days, once the economy data is more reliable.

----------------------------------
# **VERSION 0.8** - Third Edict Update
----------------------------------

## NEW CONTENT:
- Purged all renamed and removed items from the filter
- Added new essences, currencies, omens, fragments, splinters, calamity fragments, socketables and others to the filter
- Tiered in all the new basetypes
- Added a new tierlist for lineage gems

## RARE TIERING AND UNIDENTIFIED TIERED ITEMS:

- In all endgame sections Belts+Rings+Amulets have been merged to reduce complexity.
- In all endgame sections Belts+Rings+Amulets now have 4 tiers instead of 3
- Removed the previous UnidentifiedItemTier rules.
- The unidentified item tier system has been merged into the general rare/magic tiering.
- Added a new system of Unidentified rules that covers explicit cases for Every magic/rare item for Ranks A,B,C and Tiers 2,3,4+. The result is a comprhensive system that works with all strictnesses and is completely adjusted from the tiering section on filterblade.
- Added extra rules for highlighting any T4 and any T5 item. These are designed to highlight low rank items and also act as a safeguard.

## LEVELING ADJUSTMENTS:

- Items below arealevel 3 now have additional highlight
- Reduced the highlight of catch-all rules for magic and normal items. The intent is for them to be less highlighted on higher strictnesses and also work better with the new FilterBlade build-auto-adjuster
- Added dedicated rules for Shields highlighting to allow for better customization

## IDENTIFIED MODS:

- Identified items use a new theme
- Introduced a set of identified mod rules. These are currently designed to spot items with valuable chase mods for general and more importantly recombinator crafting (such as 35% movement speed, +3 amulets, high tier phys damage weapons etc). I expect many of these drops to sell well. Once the meta has settled I'll the PoE1-styled combo rules as well.

## EXCEPTIONAL ITEMS:

- Added a set of rules to find valuable overquality/oversocketed (exceptional) items.
- Added a set of rules to find overquality/oversocketed items that are chance bases
- Added a set of rules to detect overquality/oversocketed UNIQUE items

## ARCHITECTURE IMPROVEMENTS & MINOR CHANGES: 
- A lot of small filter structure and style adjustments
- Built additional tooling for economy tiering improvements to better deal with outliers and anomalies
- Expanded my language model to support full themes in a better way
- Added new tooling to better scour all files from outdated items

----------------------------------
# **VERSION 0.7.9b** - Hotfixes and further changes
----------------------------------

More adjustments to economy, tiering and other minor fixes

----------------------------------
# **VERSION 0.7.9a** - Rune hotfix
----------------------------------

Fixed a bug introduced in 0.7.9 that led to low tier endgame runes ('greater adept rune') not showing correctly.

----------------------------------
# **VERSION 0.7.9** - Major Tiering Improvements (Economy only)
----------------------------------

## SHORT OVERVIEW:
The state of the PoE2 economy is currently very chaotic and messy due to the late-league state and the large number of highly invasive changes.

This patch focuses on hardening the filter economy based tiering to deal with such messy states and also prepare it for the upcoming league.

## CHANGES:
- Massive overhauls to the economy based tiering. Guardrails, aspects, threshold adjustments, additional sources etc. have all been used to improve the current system
- Vastly adjusted the practical (economy versions only) tiering for: currency, uniques, omens, socketables, fragments
- The socketable item tiering now treats runes, talismans and soul cores in the same way.
- Reworked leveling rune implementation and tiering
- Other Minor adjustments

----------------------------------
# **VERSION 0.7.8b** - New Socketable Finetuning
----------------------------------

- The leveling rules for general armor highlight no longer highlight foci/bucklers as these have their own dedicated rules

----------------------------------
# **VERSION 0.7.8a** - New Socketable Finetuning
----------------------------------

## SHORT OVERVIEW:
Improved initial tiering of the new socketables and added the 9 new uniques to the tierlists to get more of those satisfying shwing sounds. 

All items will be connected to the economy data, once it's available.

----------------------------------
# **VERSION 0.7.8** - New Socketables
----------------------------------

## SHORT OVERVIEW:
I quickly emergency added all new runes, talismans and sockets into the filter. All new socketables are A-tiered for now, with the hedgewitch being S-tier.
Additionally I've adjusted the economy based tiering to match the buffed PoE2 "Mythic" uniques to be stronger.

Finally, while I don't know all of the new added uniques, the filter has been built in a way to always highlight unknown or new unique bases. So the new uniques should be highlighted in a 'error-pink' color, usually indicating that the unique is unknown. 

On a side note, this PoE2 patch dropping exactly during the PoE1 patch notes, with no previous item info. So expect more finetuning tomorrow, once all the items have been found and revealed.

----------------------------------
# **VERSION 0.7.7a** - Classes added to item tiers
----------------------------------

## SHORT OVERVIEW:
The tiered overrides now all come with class requirements. This excludes precursor tablets and similar gear from accidently getting caught.

----------------------------------
# **VERSION 0.7.7** - Unidentified Item Tier
----------------------------------

## SHORT OVERVIEW:

Introduced the new command 'UnidentifiedItemTier' into the filter. This command allows highlighting rare/magic items with the suffix (tier X).
The initial implementation is a bit rough. It focuses on providing large scale highlight for high tier items and removes them from being hidden.

Additionally you can customize this property pretty much everywhere on filterblade.

You can expect a more thorough and implementation in the next league, that will likely break some existing changes.

## CHANGES:
- Added a new section "HighModtier"
- The optional "ConditionalHiders" by default never hides items above Tier 3.
- Introduced the UnidentifiedItemTier command in other niche spots, where it makes sense.
- Restructured the filter a bit to make it ensure that crafting/hiding/tier highlights are playing nicely together.

----------------------------------
# **VERSION 0.7.6** - Tiering Improvements
----------------------------------

## SHORT OVERVIEW:

Talismans are now fully economy tiered!

----------------------------------
# **VERSION 0.7.5** - TEN YEAR UPDATE
----------------------------------

## SHORT OVERVIEW:

Ten years ago the first version of the filter was released. This update is a celebration of that. 

To celebrate that, we've added a new style - "COBALT".

Also there's further improvements to tiering and economy treatment!

----------------------------------
# **VERSION 0.7.4** - Tiering and Economy Update
----------------------------------

## SHORT OVERVIEW:

This update focuses on further improving the tiering rules in the filter. If all goes well, starting with this update and the next days filterblade will have economy updated versions again.

## CHANGES:
- Further added safeguards to the automated tiering algorithm
- Tiered all economy based tierlists again
- Added all unique tablets to the filter (currently all in T2)
- Added the Rampart Tower Shield as a chancing base
- Further adjusted the architecture changes done in 0.7.2 to help with the sorting of rules

----------------------------------
# **VERSION 0.7.3** - New Rune Update
----------------------------------

## SHORT OVERVIEW:

Added the new Adept, Robust and Resolve runes.

----------------------------------
# **VERSION 0.7.2** - Economy Update
----------------------------------

## SHORT OVERVIEW:

This is a filterblade only patch. 

For filterblade only: the salvagable item section is now higher priority than the crafting item hiders to make editing the filter easier!

----------------------------------
# **VERSION 0.7.1** - Economy Update
----------------------------------

## SHORT OVERVIEW:

This update is 100% all about the tiering.

Unique, core, essence, currency, omen, fragment tiering has been adjust to better match the current economy.
I've also added a ton of safeguards and special treatment to all of the new uniques and items in hopes of minimizing issues.

The economy-versions on FilterBlade will be reenabled and the auto-update as well over the next 2-3 days, if my internal tests all run stable (don't want to expose you to bad filters!).

## CHANGES:
- Adjusted the tiering and tiering algorithms in all tierlists
- Moved Seaglass spear into the highest tier
- Added the acrid wand to filterblade (was in the filter already, just missing from filterblade)

----------------------------------
# **VERSION 0.7.0** - Dawn of the Hunt
----------------------------------

## SHORT OVERVIEW:

All of the Dawn of the Hunt content and also improves upon the existing sections, such as economy tiering, gems etc. 
It also comes with a new style: Zen! Happy hunting!

## NEW CONTENT:
- Added all of the dawn of the hunt basetypes
- Added a kalandra jewellery section
- Added new style: Zen! Minimal, clean and great for customizing.
- Added a new vault key section (reqliquary keys). They all make the SHWING sound for now!
- Added spear and buckler relevant sections and classes
- Renamed all the advanced and expert bases according to GGG's migration table
- Added the new omens to the tierlist. I suspect they're mostly there to clutter up the omen pool, since every ritual now has an omen. They should be all fairly low tier according to poe2db description.

## LARGE REWORKS:
- Reworked the gem section
- Reworked the socketable section (merged it soulcores and runes and added better campaign overrides)

## TIERING:
- Retiered all uniques and added some to the early league tier
- Retiered all the currencies by hand for the new league (until economy data is available and reliable)
- Moved many S tier items into A tier (until economy data is available and reliable)
- Moved catalysts up by one tier
- Moved Stellar amulet a tier down in the chancing tierlist. Moved Sapphire ring a tier down.
- Adjusted the basetype tiering

## COMING SOON:
- Added advanced economy tiering sections and rules for SC/HC. THose will be enabled in a couple of days, once I'm sure it'll work (too risky for release)

----------------------------------
# **VERSION 0.6.0** - Finetuning
----------------------------------

## SHORT OVERVIEW:

This patch introduces multiple new rules and features and also reintroduces economy-based updates and improved tiering

## CHANGES:

- TODO: one more special map type tier (maybe 2 for S tier class things)

- Added 2 more rules for chancing. A high tier chancing rule (sapphire ring) and a super-tier chancing rule (stellar amulet) that produces a shwing sound/highlight on drop. From the eyes of a PoE1 player this is blasphemy.
- Added new rules for T15+ 8moded maps and T14+, T11+ delirium maps
- The T15+ 8moded map, T14+ delirium map and T16+ maps rules now have a new visual
- Reworked visuals for lower delirium/8mod maps
- Added a dedicated rule for logbooks that can't spawn olroth (ilvl77) with a lower visual
- Addded the gem progressino that gives the desirable gem level drops more highlight while progressing through the campaign
- Added a new rule to the maps, that allows still showing RARE maps of low tiers, even if they are disabled otherwise
- The splinter currency sound is now less loud compared to the other rules
- The highest strictness no longer shows single splinters on the minimap or plays any sound for them
- Salvaging bases (quality armors etc), now have less priority than normal/magic crafting bases
- The barya rule that highlighted baryas 75-79, now highlights 60-79
- 'Futureproofed' the artificer salvage rules to define 'large' as 4x1, 4x2 and 3x2 items
- Removed the dropsound from baryas and ultimatum keys that can NOT grant you the third ascendancy and increased their strictness filtering
- Split the special 'run in progress' Djinn barya rule into 
- Adjusted some font sizes during early campaign for magic items
- Strict no longer hides lower (1-6) waystones. Very strict now removes icons/sounds of Tier 1-13 the waystones and uber-strict hides all 1-13 waystones.

## MISC CHANGES:
- Maps now have a dedicated hide rule. Maps are now disabled instead of hidden on higher strictnesses (has no practical ingame effect, but allows for more filterblade editing).

----------------------------------
# **VERSION 0.52.0a** - Overseer's Tablets and adjustments
----------------------------------

## SHORT OVERVIEW:

This patch adresses changes in PoE2 patch 0.1.1 and also adds a bit of finetuning here and there.
Changed "Overseer's Precursor Tablet" to "Overseer Precursor Tablet"

## CHANGES:

- Changed
- Economy adjusted the tiering of some catalsts, currency, fragments etc
- Added the new "Overseer's Precursor Tablet"
- Reworked flasks and crafting sections slightlx to adjust for the new glassblower salvaging change
- Slightly retiered rare/crafting bases
- Slightly adjusted the tiering on some salvaging rules

----------------------------------
# **VERSION 0.52.0** - Overseer's Tablets and adjustments
----------------------------------

## SHORT OVERVIEW:

This patch adresses changes in PoE2 patch 0.1.1 and also adds a bit of finetuning here and there

## CHANGES:

- Economy adjusted the tiering of some catalsts, currency, fragments etc
- Added the new "Overseer's Precursor Tablet"
- Reworked flasks and crafting sections slightlx to adjust for the new glassblower salvaging change
- Slightly retiered rare/crafting bases
- Slightly adjusted the tiering on some salvaging rules

----------------------------------
# **VERSION 0.5.1** - Initial Public Version
----------------------------------

## SHORT OVERVIEW:

- Removed emerald ring from chancing list
- Iron Rune tier is hidden on Uber Plus Strict instead of Uber Strict now
- Added a section to highlight ilvl81+ siphoning and attuned normal wands for crafting, since these are in high demand right now.
- Fixed multiple dozens of bugs and small improvements for FilterBlade

----------------------------------
# **VERSION 0.5.0** - Initial Public Version
----------------------------------

Keep in mind this is just the initial release. The filter will be updated and improved over the days, weeks and hopefully years to come.

## SHORT OVERVIEW:

- The filter comes with a companion website: [FilterBlade.xyz](https://filterblade.xyz). FilterBlade allows modifying, previewing and customizing the filter to your needs and to your specific build. It's also a great way to learn what the filter can do and it's many features/colors.
- 7 levels of strictness ranging from soft to uber-plus-strict (semi-strict is recommended for beginners). These define the number of items hidden. A higher strictness filter shows fewer items. Very Strict or above should not be used while leveling, unless you're twinked out in leveling gear.
- Item colors, map icons and beams are clustered in a way to make item recognition really easy and minimize the cognitive efforts required to make good decisions. Plus due to the reuse of similar patterns it's good for your dopamin-on-drop-maxing.
- added first alternative style: Dark Mode
- the filter is written using a dedicated programming domain language to minimize errors, optimize performance, increase quality and make its management easier. This concept has been proven quite effective in the many years that I've been supporting PoE1.
- added the following economy based tierlists: currencies, runes, soul cores, catalysts, distilled emotions, essences, omen, fragments/tablets and others. Most bases come with 6 tiers (S,A,B,C,D,E) that are economically tiered and easily distinguishable
- uniques have their own tierlist, that is slightly different and has support for boss-drops and uniques with multiple bases. NOTE: in POE(2) you can't distinguish an specific unique on the same base. For instance the filter can't tell if a unique 'silk robe' is a 'cloak of flame' or a 'temporalis'.
- added neutral-basetype-tiering: a comprehensive tiering of every single basetype from the endgame's player perspective. In the future FilterBlade will provide the choice of the neutral and the meta-based basetype tiering. You'll also be able to mix and match those
- added rare and normal/magic crafting progression: the filter now scales the basetypes available depending on the map tier. For instance: in a level 68 zone a 'advanced dualstring bow' is still one of the best bases. However, in a level 80 zone it is quite poor, since new bases get unlocked
- added special highlight and treatment for bases in arealevel 82
- added campaign leveling mode. The shift between leveling and endgame happens at arealevel 65. Campaign and endgame is handled by the same filter.
- every single item type in the game is tiered or otherwise handled. If it's NOT known, the filter will notify you with a special PINK/CYAN color. If you see this color, you most likely should update the filter.

----------------------------------
# **SPECIAL THANKS:**
----------------------------------

- Tobnac/Haggis for their amazing contribution to the project development and support
- GGG for the awesome game with a special shoutout to Bex, Chris, Rory, Zeyra and Jatin for their assistance!
- A massive thank you to all the [PATREONS](https://www.patreon.com/Neversink), [DISCORD](https://discord.gg/zFEx92a) and [TWITCH](https://www.twitch.tv/neversink) community!
- The FilterBlade Team on discord - Abyxcos, Cdr, Mellontoss, Really Evil bunny, TarrasqueSorcerer, Thesenzei, VenomsAssassin
- The community (that includes you!) for using the filter and providing feedback and support!
