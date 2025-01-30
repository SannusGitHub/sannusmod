local HelperFunctions = {}

function HelperFunctions.printTableKeys(table, indent)
    indent = indent or ""
    for key, value in pairs(table) do
        print(indent .. tostring(key))
        if type(value) == "table" then
            HelperFunctions.printTableKeys(value, indent .. " ")
        end
    end
end

function HelperFunctions.destroyCardWithAnimation(card, sound)
    local sound = sound or 'tarot1'
    G.E_MANAGER:add_event(Event({
        func = function()
            play_sound(sound)
            card.T.r = -0.2
            card:juice_up(0.3, 0.4)
            card.states.drag.is = true
            card.children.center.pinch.x = true
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.3,
                blockable = false,
                func = function()
                G.jokers:remove_card(card)
                card:remove()
                card = nil
                return true;
                end
            }))
            return true
        end
    }))
end

function HelperFunctions.getAmntOfCardsOfType(consumableType)
    for _, card in pairs(G.consumeables.cards) do
        
    end
end

function HelperFunctions.createConsumableWithCard(card, consumableType, seed, restricted, consumableID)
    local consumableID = consumableID or nil
    local restricted = restricted ~= false
    local consumableType = consumableType or {"Tarot", "Planet", "Spectral"}

    if type(consumableType) == "table" then
        consumableType = pseudorandom_element(consumableType, pseudoseed(seed))
    end

    if not restricted or (#G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit) then
        local consumableCard = create_card(consumableType, G.consumables, nil, nil, nil, nil, consumableID)
        
        consumableCard:add_to_deck()
        G.consumeables:emplace(consumableCard)

        play_sound("generic1")
        play_sound("timpani")
        card:juice_up(0.5, 0.5)

        return true
    end

    return false
end

function HelperFunctions.isUsingConsumable(context, consumableTypes)
    local consumableTypes = consumableTypes or {"Tarot", "Planet", "Spectral"}

    if context.using_consumeable then
        if not consumableTypes then
            return true
        end

        for _, consumableName in pairs(consumableTypes) do
            if context.consumeable.ability.set == consumableName then
                return true
            end
        end
    end

    return false
end

function HelperFunctions.getChance(localizationName, odds)
    if pseudorandom(localizationName) < G.GAME.probabilities.normal / odds then
        return true
    end

    return false
end

-- TODO: apply isBoss value to check if end of round is only coherent for boss rounds
function HelperFunctions.isEndOfRound(context)
    if context.end_of_round and not context.blueprint and not (context.individual or context.repetition) then
        return true
    end

    return false
end

function HelperFunctions.isCardRank(card, ranks)
    for _, rank in pairs(ranks) do
        if SMODS.Ranks[card].key == rank then
            return true
        end
    end

    return false
end

function HelperFunctions.isCardSuit(card, suits)
    for _, suit in pairs(suits) do
        if SMODS.Ranks[card].suit == suit then
            return true
        end
    end

    return false
end

function HelperFunctions.createSound(soundData)
    SMODS.Sound {
        vol = soundData.volume or 0.6,
        pitch = soundData.pitch or 1,
        key = soundData.key,
        path = soundData.path,
        select_music_track = soundData.selectMusicTrack,
        sync = soundData.sync
    }

    sendDebugMessage("[SM] createSound(f) of " ..soundData.key.. " successful")
end

function HelperFunctions.createAtlas(atlasData)
    if atlasData.enabled ~= false then
        SMODS.Atlas {
            key = atlasData.key or "defaultAtlas",
            path = atlasData.path or "cards.png",
            px = atlasData.spriteSize.x or 71,
            py = atlasData.spriteSize.y or 95,
            raw_key = atlasData.rawKey or nil,
            prefix_config = atlasData.prefixes or nil,
            atlas_table = atlasData.atlasTable or nil,
            frames = atlasData.frames or nil
        }
    
        sendDebugMessage("[SM] createAtlas(f) of " ..atlasData.key.. " successful")
    end
end

function HelperFunctions.createDeckSkin(deckData, deckId)
    for _, suit in ipairs(deckData.suits) do
        SMODS.DeckSkin {
            key = suit.."_skin_"..deckId,
            suit = suit:gsub("^%l", string.upper),
            ranks = deckData.ranks,
            lc_atlas = deckData.key or "deckSkin",
            loc_txt = deckData.loc_txt or {['en-us'] = "INVALID_LOC_TXT"},
            posStyle = deckData.posStyle or 'deck'
        }
    end

    --[[
    for jokerName, jokerOwnership in pairs(deckData.ownerships.jokers) do
        if jokerOwnership.type and jokerOwnership.key then
            SMODS[jokerOwnership.type]:take_ownership(jokerOwnership.key, jokerOwnership)
            print("rewrote ownership for".. jokerName)
        end
    end
    ]]
end

function HelperFunctions.createJoker(jokerData)
    jokerData.enabled = jokerData.enabled or true

    if jokerData.enabled == true then
        local newJoker = SMODS.Joker {
            key = jokerData.key,
            loc_txt = {
                name = jokerData.localization.name or "IMPROPER_NAME",
                text = jokerData.localization.text or "IMPROPER_TEXT"
            },
    
            config = jokerData.configData or { extra = { mult = 4 } },
            loc_vars = jokerData.locVarsFunc or function(self, info_queue, card)
                return { vars = { card.ability.extra.mult } }
            end,
            
            no_pool_flag = jokerData.noPoolFlag,
            rarity = jokerData.rarity or 1,
            cost = jokerData.cardCost or 1,
    
            discovered = jokerData.isDiscovered,
            unlocked = jokerData.isUnlocked,
            check_for_unlock = jokerData.checkForUnlock,
            unlock_condition = jokerData.unlockCondition,
    
            blueprint_compat = jokerData.blueprintCompatible or true,
            eternal_compat = jokerData.eternalCompatible or true,
    
            atlas = jokerData.atlasName or 'placeholder',
            pos = jokerData.atlasPosition2D or { x = 0, y = 0 },
            
            calculate = jokerData.calculateFunction or function(self, card, context)
                if context.joker_main then
                  return {
                    mult_mod = card.ability.extra.mult,
                    message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult } } }
                end
            end
        }
    
        sendDebugMessage("[SM] createJoker(f) of " ..jokerData.key.. " successful")
    end
end

return HelperFunctions