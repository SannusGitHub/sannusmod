local Manage = {
    requireFiles = {
        "HelperFunctions",
        "DictList",
        "UI"
    }
}

function Manage.doRequire(fileList)
    local results = {}
    for _, fileName in ipairs(fileList) do
        local result = NFS.load(SMODS.current_mod.path .. 'lua/' ..fileName.. '.lua')()
        results[fileName] = result

        sendDebugMessage("[SM] 'require' load of " ..fileName.. " successful")
    end

    return results
end

function Manage.load()
    local modules = Manage.doRequire(Manage.requireFiles)

    local helperFunctions = modules["HelperFunctions"]
    local dictList = modules["DictList"]
    local UI = modules["UI"]

    for _, atlasElement in pairs(dictList.Atlases) do
        helperFunctions.createAtlas(atlasElement)
    end

    for _, jokerElement in pairs(dictList.Jokers) do
        helperFunctions.createJoker(jokerElement)
    end

    for deckId, deckElement in pairs(dictList.DeckSkins) do
        helperFunctions.createDeckSkin(deckElement, deckId)
    end

    for _, soundElement in pairs(dictList.Sounds) do
        helperFunctions.createSound(soundElement)
    end

    UI.initializeUI()
end

return Manage