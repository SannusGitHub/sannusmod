local UI = {}

local function credits_tab()
    SMODS.current_mod.credits_tab = function()
        local credits_nodes = {
            {
                n = G.UIT.R, config={align = "tm"},
                nodes = {
                    {
                        n = G.UIT.O,
                        config = {
                            object = DynaText({
                                string = "test text",
                                colours = {G.C.WHITE},
                                shadow = true,
                                scale = 0.4
                            })
                        },
                    }
                }
            }
        }
        
        return {
            n = G.UIT.ROOT,
            config = {
                emboss = 0.05,
                minh = 6,
                r = 0.1,
                minw = 10,
                align = "cm",
                padding = 0.2,
                colour = G.C.BLACK
            },
            nodes = credits_nodes
        }
    end
end

function UI.initializeUI()
    credits_tab()
end

return UI