local DictList = {
    helper = NFS.load(SMODS.current_mod.path .. 'lua/HelperFunctions.lua')()
}

DictList.Localization = {
    moeJoker = {
        name = "Moe Joker",
        text = {"{X:mult,C:white}X#1#{} Mult", "Destroyed after {C:attention}Boss Blind{}", "is defeated"}
    },

    acedTestJoker = {
        name = "Aced Test",
        text = {"Played {C:attention}Aces{} give", "{C:money}$2{} when scored"}
    },

    boykisserJoker = {
        name = "Kissing Joker",
        text = {"Played {C:attention}Kings{} and {C:attention}Jacks{}", "give {C:mult}+#1#{} Mult"}
    },

    dawnJoker = {
        name = "Dawn",
        text = {"Retrigger all played cards", "in {C:attention}first hand{} of the round"}
    },

    -- From reddit by u/Morphine-Milkshake
    cursedCharagmaJoker = {
        name = "Cursed Charagma",
        text = {"Retrigger each played {C:attention}6{}", "{C:attention}two{} additional times"}
    },

    jesterJoker = {
        name = "Jester",
        text = {"{C:chips}+#1#{} Chips"}
    },

    hikingCompassJoker = {
        name = "Hiking Compass",
        text = {"Switches between copying a {C:attention}Joker{}", "and {C:attention}playing cards{} in hand", "{C:inactive}(Currently copying{} {C:attention}#1#{}{C:inactive}){}"}
    },

    exorciserJoker = {
        name = "Exorciser",
        text = {"Create a {C:spectral}Spectral{} card", "when {C:attention}Boss Blind{} is defeated", "{C:inactive}(Must have room){}"}
    },

    spiritBoxJoker = {
        name = "Spirit Box",
        text = {"This Joker gains {X:mult,C:white}X#1#{} Mult per", "{C:spectral}Spectral{} card used this run", "{C:inactive}(Currently {}{X:mult,C:white}X#2#{}{C:inactive} Mult){}"}
    },

    magnoliaJoker = {
        name = "Magnolia",
        text = {"On hand play, flip Joker to other side", "{C:attention}A side{}: face cards give {C:mult}+#1#{} Mult", "{C:attention}B side{}: number cards give {C:chips}+#2#{} Chips", "{C:inactive}(Currently Side #3#){}"}
    },

    spareArmyJoker = {
        name = "Spare Army",
        text = {"Each {C:attention}face{} card held in hand", "gives {C:mult}+#1#{} Mult"}
    },

    -- From reddit by u/Thomas_F62
    morningCoffeeJoker = {
        name = "Morning Coffee",
        text = {"{C:mult}+#1#{} Mult", "Lose {C:money}#2#${} at the", "end of the round"}
    },

    counterfeitCopyJoker = {
        name = "Counterfeit Copy",
        text = {"{C:green}#1# in #2#{} chance to", "create new random {C:attention}Consumable{}", "on {C:attention}Consumable{} use", "{C:inactive}(Must have room){}"}
    },

    exhumationJoker = {
        name = "Exhumation",
        text = {"This Joker gains {X:mult,C:white}X#1#{} Mult per", "hand played, resets when {C:attention}Blind{}", "is defeated", "{C:inactive}(Currently {}{X:mult,C:white}X#2#{}{C:inactive} Mult){}"}
    },

    bonusPointsCardJoker = {
        name = "Bonus Card",
        text = {"This Joker saves half of extra", "{C:chips}Round Score{} and applies it to", "the next {C:attention}Blind{}", "{C:inactive}(Currently {}{C:chips}#1#{}{C:inactive} Round Score){}"}
    },

    sacrificialCandleJoker = {
        name = "Sacrificial Candle",
        text = {"When {C:attention}Blind{} is selected,", "destroy random {C:attention}Consumable{} and", "permanently add {C:attention}twenty times{}", "its sell value to this {C:chips}Chips{}", "{C:inactive}(Currently {}{C:chips}+#1#{}{C:inactive} Chips){}"}
    },

    idleDeathGambleJoker = {
        name = "Idle Death Gamble",
        text = {"Each played {C:attention}7{}", "has a {C:green}#1# in #2#{} chance to", "turn into a {C:attention}Lucky Card{}"}
    },

    -- Design and Art by my friend W3
    procrastinationJoker = {
        name = "Procrastination",
        text = {"{C:green}#1# in #2#{} chance to", "give {X:mult,C:white}X#3#{} Mult"}
    },

    -- Art by my friend W3
    -- gain N amount of chips when hand is flush, add N to total
    -- (probably nerfed a bit since flushes are easier to get)
    plungerJoker = {
        name = "The Plunger",
        text = {"Gains {C:chips}+#2#{} Chips if played hand", "contains a {C:attention}Flush{}", "{C:inactive}(Currently {}{C:chips}#1#{}{C:inactive} Chips){}"}
    },

    -- styled after the interloper from Outer Wilds (reference)
    -- for every N used planet card, use the next planet card twice
    interloperJoker = {
        name = "Interloper",
        text = {"Trigger the next {C:planet}Planet{} card twice", "every {C:attention}6{} Planet cards used", "{C:inactive}#1# remaining{}"}
    },

    -- poker table theme graphic,
    -- every bonus card also triggers +2 mult
    pokerNightJoker = {
        name = "Poker Night",
        text = {""}
    },

    -- blender decimation modifier graphic,
    -- destroy all cards played that are the same suit+rank (i.e 10H/10H/9C/9S it would cut 10H)
    -- (probably a common, would be really useful early game when u need to cut cards in some way)
    decimationJoker = {
        name = "Decimation Modifier",
        text = {""}
    },

    -- 200 chips, 1/6 chance to destroy itself
    -- (for fun, birthday) alternate variant on 1. March where it's blooming instead, age * 100 chips with no downside
    cereusJoker = {
        name = "Night-Blooming Cereus",
        text = {"{C:chips}+#1#{} Chips", "{C:green}#2# in #3#{} chance this is", "destroyed at the end of the round"}
    },

    -- Card design by Floppy
    -- Card art by NueSB
    sealJoker = {
        name = "Sloppy Wet",
        text = {"{C:mult}+#1#{} Mult for each", "{C:attention}sealed card{} held in hand"}
    },

    -- Card design and art by SMALF
    deadMansHandJoker = {
        name = "Dead Man's Hand",
        text = {"{X:mult,C:white}X#1#{} Mult for each", "{C:attention}Ace of Spades{} scored"}
    },
}

DictList.Sounds = {
    sparklyMoe = {
        key = "sparklymoe",
        path = "sparklymoe.ogg",
    }
}

DictList.Atlases = {
    placeholderData = {
        enabled = true,
        key = "placeholder",
        path = "placeHolder.png",
        spriteSize = {x = 71, y = 95},
    },

    cardAtlasData = {
        enabled = true,
        key = "SannuModAtlas",
        path = "cards.png",
        spriteSize = {x = 71, y = 95},
    },

    jokerReplaceAtlasData = {
        enabled = false,
        key = "Joker",
        path = "defaultCards.png",
        spriteSize = {x = 71, y = 95},
    },

    -- MISCALLENEOUS
    modIconAtlasData = {
        enabled = true,
        key = "sm_modicon",
        path = "modIcon.png",
        spriteSize = {x = 32, y = 32},
    },

    sannuDeckAtlasData = {
        enabled = true,
        key = "sannuDeck",
        path = "sannuDeck.png",
        spriteSize = {x = 71, y = 95},
        prefix_config = {key = false}
    },

    gatheringsDeckAtlasData = {
        enabled = true,
        key = "gatheringsDeck",
        path = "gatheringsDeck.png",
        spriteSize = {x = 71, y = 95},
        prefix_config = {key = false}
    }
}

DictList.DeckSkins = {
    sannuDeckSkinData = {
        key = "sannuDeck",
        path = "sannuDeck.png",
        spriteSize = {x = 71, y = 95},
        suits = {'hearts', 'clubs', 'diamonds', 'spades'},
        ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
        loc_txt = {
            ['en-us'] = "Brus"
        },
        posStyle = 'deck'
        
        --[[
        ownerships = {
            jokers = {
                heartJokerOwnership = {
                    type = "Joker",
                    key = "lusty_joker",
                    loc_txt = {}
                },
                clubJokerOwnership = {},
                diamondJokerOwnership = {},
                spadeJokerOwnership = {}
            },
            tarots = {
                heartTarotOwnership = {},
                clubTarotOwnership = {},
                diamondTarotOwnership = {},
                spadeTarotOwnership = {}
            }
        }
        ]]
    },

    gatheringsDeckSkinData = {
        key = "gatheringsDeck",
        path = "gatheringsDeck.png",
        spriteSize = {x = 71, y = 95},
        suits = {'hearts', 'clubs', 'diamonds', 'spades'},
        ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace",},
        loc_txt = {
            ['en-us'] = "Gatherings"
        },
        posStyle = 'deck'
    }
}

DictList.Jokers = {
    moeJoker = {
        key = 'j_moe_joker',
        localization = DictList.Localization.moeJoker,

        noPoolFlag = 'moe_extinct',
        rarity = 2,
        cardCost = 6,
        eternal_compat = false,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 0, y = 0 },

        configData = { extra = { Xmult = 3 } },
        locVarsFunc = function(self, info_queue, card)
            return { vars = { card.ability.extra.Xmult } }
        end,
        calculateFunction = function(self, card, context)
            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands then
                return {
                    message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } }),
                    Xmult_mod = card.ability.extra.Xmult
                }
            end
            if context.end_of_round and G.GAME.blind.boss and not context.game_over and not (context.individual or context.repetition) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.5, 0.5)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                play_sound("sm_sparklymoe")
                                G.jokers:remove_card(card)
                                card:remove()
                                card = nil
                                return true
                            end
                        }))
                        return true
                    end
                }))
                G.GAME.pool_flags.moe_extinct = true

                return {
                    message = 'See ya!'
                }
            end
        end
    },

    acedTestJoker = {
        key = 'j_aced_test_joker',
        localization = DictList.Localization.acedTestJoker,

        rarity = 1,
        cardCost = 6,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 1, y = 0 },

        configData = { extra = { money = 2 } },
        locVarsFunc = function(self, info_queue, card)
            return { vars = { card.ability.extra.money } }
        end,
        calculateFunction = function(self, card, context)
            if context.repetition then
                if context.cardarea == G.play then
                    if (DictList.helper.isCardRank(context.other_card.base.value, {"Ace"})) then
                        ease_dollars(card.ability.extra.money)
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                (context.blueprint_card or card):juice_up(0.5, 0.5)
                                return true
                            end,
                        }))
                    end
                end
            end
        end
    },

    boykisserJoker = {
        key = 'j_boykisser_joker',
        localization = DictList.Localization.boykisserJoker,

        rarity = 1,
        cardCost = 4,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 2, y = 0 },
        
        configData = { extra = { mult = 6 } },
        locVarsFunc = function(self, info_queue, card)
            return { vars = { card.ability.extra.mult } }
        end,
        calculateFunction = function(self, card, context)
            if context.individual and context.cardarea == G.play then
                if (DictList.helper.isCardRank(context.other_card.base.value, {"King", "Jack"})) then
                    return {
                        message = localize({ type = "variable", key = "a_mult", vars = { card.ability.extra.mult } }),
                        mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end
        end
    },

    dawnJoker = {
        key = 'j_dawn_joker',
        localization = DictList.Localization.dawnJoker,

        rarity = 3,
        cardCost = 8,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 3, y = 0 },
        
        configData = {},
        locVarsFunc = function(self, info_queue, card) end,
        calculateFunction = function(self, card, context) 
            if context.repetition and context.cardarea == G.play and G.GAME.current_round.hands_played == 0 then
                return {
                    message = 'Again!',
                    repetitions = 1,
                    card = card
                }
            end
        end
    },

    cursedCharagmaJoker = {
        key = 'j_cursedcharagma_joker',
        localization = DictList.Localization.cursedCharagmaJoker,

        rarity = 3,
        cardCost = 8,
        isUnlocked = true,

        atlasName = 'placeholder',
        atlasPosition2D = { x = 0, y = 0 },
        
        configData = {},
        locVarsFunc = function(self, info_queue, card) end,
        calculateFunction = function(self, card, context) 
            if context.repetition and context.cardarea == G.play and (DictList.helper.isCardRank(context.other_card.base.value, {"6"})) then
                return {
                    message = 'Again!',
                    repetitions = 2,
                    card = card
                }
            end
        end
    },

    jesterJoker = {
        key = 'j_jester_joker',
        localization = DictList.Localization.jesterJoker,

        rarity = 1,
        cardCost = 2,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 4, y = 0 },
        
        configData = { extra = { chips = 40 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.chips } }
        end,
        calculateFunction = function(self, card, context) 
            if context.joker_main then
                return {
                    chip_mod = card.ability.extra.chips,
                    message = localize { type = 'variable', key = 'a_chips', vars = { card.ability.extra.chips } }
                }
            end
        end
    },

    --[[
    hikingCompassJoker = {
        key = 'j_hikingcompass_joker',
        localization = DictList.Localization.hikingCompassJoker,

        rarity = 3,
        cardCost = 10,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 0, y = 1 },
        
        configData = { extra = { copying = "left" } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.copying } }
        end,
        calculateFunction = function(self, card, context) 
            if context.end_of_round and not context.blueprint and not (context.individual or context.repetition) then
                local copying = card.ability.extra.copying
                if copying == "left" then
                    card.ability.extra.copying = "down"
                elseif copying == "down" then
                    card.ability.extra.copying = "right"
                elseif copying == "right" then
                    card.ability.extra.copying = "left"
                end
            end
        end
    },
    ]]
    
    exorciserJoker = {
        key = 'j_exorciser_joker',
        localization = DictList.Localization.exorciserJoker,

        rarity = 3,
        cardCost = 9,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 3, y = 1 },
        
        configData = {},
        locVarsFunc = function(self, info_queue, card) 
            return {}
        end,
        calculateFunction = function(self, card, context) 
            if context.end_of_round and G.GAME.blind.boss and not context.blueprint and not (context.individual or context.repetition) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        DictList.helper.createConsumableWithCard(card, {"Spectral"}, DictList.Localization.exhumationJoker.name)
                        return true
                    end
                }))
            end
        end
    },

    spiritBoxJoker = {
        key = 'j_spiritbox_joker',
        localization = DictList.Localization.spiritBoxJoker,

        rarity = 3,
        cardCost = 8,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 4, y = 2 },
        
        configData = { extra = { addXmult = 0.5, Xmult = 1 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.addXmult, card.ability.extra.Xmult } }
        end,
        calculateFunction = function(self, card, context)
            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands then
                return {
                    message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } }),
                    Xmult_mod = card.ability.extra.Xmult,
                    colour = G.C.RED,
                    card = card,
                }
            end
            
            if DictList.helper.isUsingConsumable(context, {"Spectral"}) then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.addXmult
                G.E_MANAGER:add_event(Event({
                    func = function()
                        (context.blueprint_card or card):juice_up(0.5, 0.5)
                        return true
                    end,
                }))
            end
        end
    },

    --[[
    magnoliaJoker = {
        key = 'j_magnolia_joker',
        localization = DictList.Localization.magnoliaJoker,

        rarity = 2,
        cardCost = 5,
        isUnlocked = true,

        atlasName = 'placeholder',
        atlasPosition2D = { x = 0, y = 0 },
        
        configData = { extra = { currentSide = 'A', faceMult = 1, numberChips = 40 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.faceMult, card.ability.extra.numberChips, card.ability.extra.currentSide } }
        end,
        calculateFunction = function(self, card, context)
            -- note: look up Card:set_sprites related stuff!
            if context.end_of_round and not context.blueprint and not (context.individual or context.repetition) then
                card:flip()
            end

            if context.flip then
                print("flipping side")
                if card.ability.extra.currentSide == 'A' then
                    card.ability.extra.currentSide = 'B'
                elseif card.ability.extra.currentSide == 'B' then
                    card.ability.extra.currentSide = 'A'
                end
            end

            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands then
                print("state: ".. tostring(card.ability.extra.currentSide))
            end
        end
    },
    ]]

    spareArmyJoker = {
        key = 'j_sparearmy_joker',
        localization = DictList.Localization.spareArmyJoker,

        rarity = 1,
        cardCost = 4,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 4, y = 1 },
        
        configData = { extra = { mult = 5 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.mult } }
        end,
        calculateFunction = function(self, card, context)
            if context.individual and not context.end_of_round and context.cardarea == G.hand
            and not context.blueprint and not context.before and not context.after and DictList.helper.isCardRank(context.other_card.base.value, {"King", "Queen", "Jack"}) then
                if context.other_card.debuff then
                    return {
                        message = localize("k_debuffed"),
                        colour = G.C.RED,
                        card = card,
                    }
                else
                    return {
                        -- i spent a whole 1.5h trying to deduce what the bug was
                        -- it's "h_mult" for held in hand mult not "mult" like everywhere else. what the fuck man.
                        h_mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end
        end
    },

    morningCoffeeJoker = {
        key = 'j_morningcoffee_joker',
        localization = DictList.Localization.morningCoffeeJoker,

        rarity = 1,
        cardCost = 5,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 3, y = 2 },
        
        configData = { extra = { mult = 8, moneyTax = 1 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.mult, card.ability.extra.moneyTax } }
        end,
        calculateFunction = function(self, card, context) 
            if context.individual and context.cardarea == G.play then
                return {
                    message = localize({ type = "variable", key = "a_mult", vars = { card.ability.extra.mult } }),
                    mult = card.ability.extra.mult,
                    card = card
                }
            end

            if context.end_of_round and not context.blueprint and not (context.individual or context.repetition) then
                ease_dollars(-card.ability.extra.moneyTax)
                G.E_MANAGER:add_event(Event({
                    func = function()
                        (context.blueprint_card or card):juice_up(0.5, 0.5)
                        return true
                    end,
                }))
            end
        end
    },

    counterfeitCopyJoker = {
        key = 'j_counterfeitcopy_joker',
        localization = DictList.Localization.counterfeitCopyJoker,

        rarity = 2,
        cardCost = 6,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 2, y = 2 },
        
        configData = { extra = { odds = 6 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { "" .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
        end,
        calculateFunction = function(self, card, context)
            if DictList.helper.isUsingConsumable(context) and DictList.helper.getChance(DictList.Localization.counterfeitCopyJoker.name, card.ability.extra.odds) then
                DictList.helper.createConsumableWithCard(card, {"Tarot", "Planet", "Spectral"}, DictList.Localization.counterfeitCopyJoker.name)
            end
        end
    },

    exhumationJoker = {
        key = 'j_exhumation_joker',
        localization = DictList.Localization.exhumationJoker,

        rarity = 2,
        cardCost = 6,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 4, y = 3 },
        
        configData = { extra = { addXmult = 0.25, Xmult = 1 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.addXmult, card.ability.extra.Xmult } }
        end,
        calculateFunction = function(self, card, context)
            if context.end_of_round and not context.blueprint and not (context.individual or context.repetition) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card_eval_status_text(card, 'extra', nil, nil, nil, {
                            message = "Reburied!"
                        });
                        return true
                    end,
                }))

                card.ability.extra.Xmult = 1
            end

            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands then
                card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.addXmult

                return {
                    message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } }),
                    Xmult_mod = card.ability.extra.Xmult
                }
            end
        end
    },

    bonusPointsCardJoker = {
        key = 'j_bonuspoints_joker',
        localization = DictList.Localization.bonusPointsCardJoker,

        rarity = 3,
        cardCost = 9,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 3, y = 3 },
        
        configData = { extra = { roundScore = 0 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.roundScore } }
        end,
        calculateFunction = function(self, card, context)
            if context.setting_blind and not context.repetition then
                G.GAME.chips = G.GAME.chips + card.ability.extra.roundScore

                if card.ability.extra.roundScore >= G.GAME.blind.chips then
                    G.E_MANAGER:add_event(
                        Event({
                            trigger = "immediate",
                            func = function()
                                (context.blueprint_card or card):juice_up(0.5, 0.5)

                                if G.STATE ~= G.STATES.SELECTING_HAND then
                                    return false
                                end

                                G.STATE = G.STATES.HAND_PLAYED
                                G.STATE_COMPLETE = true
                                end_round()
                                return true
                            end,
                        }),
                        "other"
                    )
                end

                card.ability.extra.roundScore = 0
            end

            if context.end_of_round and not context.blueprint and not (context.individual or context.repetition) then
                local chipsToAward = (G.GAME.chips - G.GAME.blind.chips) / 2
                card.ability.extra.roundScore = chipsToAward
                -- (G.GAME.chips - G.GAME.blind.chips) / 2
                -- 1200 - 600
            end
        end
    },

    sacrificialCandleJoker = {
        key = 'j_sacrificialcandle_joker',
        localization = DictList.Localization.sacrificialCandleJoker,

        rarity = 2,
        cardCost = 6,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 2, y = 3 },
        
        configData = { extra = { chips = 0 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.chips } }
        end,
        calculateFunction = function(self, card, context)
            if context.setting_blind and not context.repetition then
                local randomCard = pseudorandom_element(G.consumeables.cards, pseudoseed('j_sacrificialcandle_joker'))
                card.ability.extra.chips = card.ability.extra.chips + (randomCard.sell_cost * 20)
                randomCard:start_dissolve({G.C.RED}, nil, 1.6)
            end

            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands then
                return {
                    message = localize({ type = "variable", key = "a_chips", vars = { card.ability.extra.chips } }),
                    chip_mod = card.ability.extra.chips
                }
            end
        end
    },

    idleDeathGambleJoker = {
        key = 'j_idledeathgamble_joker',
        localization = DictList.Localization.idleDeathGambleJoker,

        rarity = 2,
        cardCost = 6,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 0, y = 3 },
        
        configData = { extra = { odds = 3 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { "" .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds} }
        end,
        calculateFunction = function(self, card, context) 
            if context.cardarea == G.play and (DictList.helper.isCardRank(context.other_card.base.value, {"7"})) and DictList.helper.getChance(DictList.Localization.idleDeathGambleJoker.name, card.ability.extra.odds) then
                context.other_card:set_ability(G.P_CENTERS.m_lucky)
            end
        end
    },

    procrastinationJoker = {
        key = 'j_procrastination_joker',
        localization = DictList.Localization.procrastinationJoker,

        rarity = 1,
        cardCost = 5,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 2, y = 1 },
        
        configData = { extra = { odds = 50, Xmult = 100 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { "" .. (G.GAME and G.GAME.probabilities.normal or 1), card.ability.extra.odds, card.ability.extra.Xmult } }
        end,
        calculateFunction = function(self, card, context) 
            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands and DictList.helper.getChance(DictList.Localization.procrastinationJoker.name, card.ability.extra.odds) then
                return {
                    message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } }),
                    Xmult_mod = card.ability.extra.Xmult
                }
            end
        end
    },

    plungerJoker = {
        key = 'j_plunger_joker',
        localization = DictList.Localization.plungerJoker,

        rarity = 1,
        cardCost = 5,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 0, y = 1 },
        
        configData = { extra = { chips = 0, chip_gain = 10 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.chips, card.ability.extra.chip_gain } }
        end,
        calculateFunction = function(self, card, context)
            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands then
                return {
                    chip_mod = card.ability.extra.chips,
                    message = localize { type = 'variable', key = 'a_chips', vars = { card.ability.extra.chips } }
                }
            end

            if context.before and next(context.poker_hands['Flush']) and not context.blueprint then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain
                return {
                    message = 'Upgraded!',
                    colour = G.C.CHIPS,
                    card = card
                }
            end
        end
    },

    interloperJoker = {
        key = 'j_interloper_joker',
        localization = DictList.Localization.interloperJoker,

        rarity = 2,
        cardCost = 5,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 1, y = 1 },
        
        configData = { extra = { remaining = 6 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.remaining } }
        end,
        calculateFunction = function(self, card, context)
            if DictList.helper.isUsingConsumable(context, {"Planet"}) then
                print("planet card used")

                if card.ability.extra.remaining == 0 then
                    card.ability.extra.remaining = 6
                else
                    card.ability.extra.remaining = card.ability.extra.remaining - 1
                end
            end
        end
    },

    cereusJoker = {
        key = 'j_cereus_joker',
        localization = DictList.Localization.cereusJoker,

        rarity = 1,
        cardCost = 5,
        isUnlocked = true,
        eternalCompatible = false,

        atlasName = 'placeholder',
        atlasPosition2D = { x = 0, y = 0 },
        
        configData = { extra = { chips = 150, odds = 6 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.chips, (G.GAME.probabilities.normal or 1), card.ability.extra.odds } }
        end,
        calculateFunction = function(self, card, context) 
            if context.cardarea == G.jokers and not context.before and not context.after and context.poker_hands then
                return {
                    chip_mod = card.ability.extra.chips,
                    message = localize { type = 'variable', key = 'a_chips', vars = { card.ability.extra.chips } }
                }
            end

            if DictList.helper.isEndOfRound(context) then
                if DictList.helper.getChance(DictList.Localization.cereusJoker.name, card.ability.extra.odds) then
                    DictList.helper.destroyCardWithAnimation(card)

                    return {
                        message = 'Wilted!'
                    }
                else
                    return {
                        message = 'Safe!'
                    } 
                end
            end
        end
    },

    sealJoker = {
        key = 'j_seal_joker',
        localization = DictList.Localization.sealJoker,

        rarity = 1,
        cardCost = 5,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 5, y = 0 },
        
        configData = { extra = { mult = 4 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.mult } }
        end,
        calculateFunction = function(self, card, context)
            if context.individual and not context.end_of_round and context.cardarea == G.hand
            and not context.blueprint and not context.before and not context.after and context.other_card.seal then
                if context.other_card.debuff then
                    return {
                        message = localize("k_debuffed"),
                        colour = G.C.RED,
                        card = card,
                    }
                else
                    return {
                        h_mult = card.ability.extra.mult,
                        card = card
                    }
                end
            end
        end
    },

    deadMansHandlJoker = {
        key = 'j_deadmanshand_joker',
        localization = DictList.Localization.deadMansHandJoker,

        rarity = 2,
        cardCost = 7,
        isUnlocked = true,

        atlasName = 'SannuModAtlas',
        atlasPosition2D = { x = 6, y = 0 },
        
        configData = { extra = { Xmult = 1.5 } },
        locVarsFunc = function(self, info_queue, card) 
            return { vars = { card.ability.extra.Xmult } }
        end,
        calculateFunction = function(self, card, context)
            if context.repetition then
                if context.cardarea == G.play then
                    if (DictList.helper.isCardRank(context.other_card.base.value, {"Ace"})) and (DictList.helper.isCardSuit(context.other_card.base.value, {"spades"})) then
                        print("is an ace")
                        return {
                            message = localize({ type = "variable", key = "a_xmult", vars = { card.ability.extra.Xmult } }),
                            Xmult_mod = card.ability.extra.Xmult
                        }
                    end
                end
            end
        end
    },
}

return DictList