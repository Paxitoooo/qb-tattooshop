Config.TattooList = {
    ZONE_TORSO = {
        pixoink_overlays = {
            {
                name = "Freddy Kreuger",
                label = "Freddy Kreuger",
                hashMale = "freddy_M",
                hashFemale = "freddy_F",
                zone = "ZONE_TORSO",
                collection = "pixoink_overlays",
                price = 1
            },
            {
                name = "Lotus",
                label = "Lotus",
                hashMale = "lotus_M",
                hashFemale = "lotus_F",
                zone = "ZONE_TORSO",
                collection = "pixoink_overlays",
                price = 1
            },
            {
                name = "ladybug",
                label = "ladybug",
                hashMale = "ladybug_M",
                hashFemale = "ladybug_F",
                zone = "ZONE_TORSO",
                collection = "pixoink_overlays",
                price = 1
            },
            {
                name = "sapphire",
                label = "sapphire",
                hashMale = "sapphire_M",
                hashFemale = "sapphire_F",
                zone = "ZONE_TORSO",
                collection = "pixoink_overlays",
                price = 1
            },
            {
                name = "owlheart",
                label = "owlheart",
                hashMale = "owlheart_M",
                hashFemale = "owlheart_F",
                zone = "ZONE_TORSO",
                collection = "pixoink_overlays",
                price = 1
            },
        },
    },
    ZONE_LEFT_ARM = {
        pixoink_overlays = {
            {
                name = "Disney Skunk Bambi",
                label = "Disney Skunk Bambi",
                hashMale = "disney_skunk_bambi_M",
                hashFemale = "disney_skunk_bambi_F",
                zone = "ZONE_RIGHT_ARM",
                collection = "pixoink_overlays",
                price = 1
            },
            {
                name = "Jason Half Sleeve",
                label = "Jason Half Sleeve",
                hashMale = "jason_sleeve_M",
                hashFemale = "jason_sleeve_F",
                zone = "ZONE_RIGHT_ARM",
                collection = "pixoink_overlays",
                price = 1
            },
            {
                name = "owlcircle",
                label = "owlcircle",
                hashMale = "owlcircle_M",
                hashFemale = "owlcircle_F",
                zone = "ZONE_RIGHT_ARM",
                collection = "pixoink_overlays",
                price = 1
            }
        },
    },
    ZONE_RIGHT_ARM = {
        pixoink_overlays = {
            {
                name = "Jason Half Sleeve",
                label = "Jason Half Sleeve",
                hashMale = "jason_sleeve_M",
                hashFemale = "jason_sleeve_F",
                zone = "ZONE_RIGHT_ARM",
                collection = "pixoink_overlays",
                price = 1
            }

        },
    },
    ZONE_LEFT_LEG = {
        pixoink_overlays = {
            {
                name = "Jason Half Sleeve",
                label = "Jason Half Sleeve",
                hashMale = "jason_sleeve_M",
                hashFemale = "jason_sleeve_F",
                zone = "ZONE_RIGHT_ARM",
                collection = "pixoink_overlays",
                price = 1
            }

        },
    },
    ZONE_RIGHT_LEG = {
        pixoink_overlays = {
            {
                name = "Jason Half Sleeve",
                label = "Jasvon Half Sleeve",
                hashMale = "jason_sleeve_M",
                hashFemale = "jason_sleeve_F",
                zone = "ZONE_RIGHT_LEG",
                collection = "pixoink_overlays",
                price = 1
            }

        },
    },

}

function PrintTattooInfo(tattooName)
    local foundTattoo = false
    for _, zoneTattoos in pairs(Config.TattooList) do
        for collection, tattooList in pairs(zoneTattoos) do
            for _, tattooData in ipairs(tattooList) do
                if tattooData.name == tattooName then
                    print("Tattoo Name: " .. tattooData.name)
                    print("Label: " .. tattooData.label)
                    print("Hash (Male): " .. tattooData.hashMale)
                    print("Hash (Female): " .. tattooData.hashFemale)
                    print("Zone: " .. tattooData.zone)
                    print("Collection: " .. collection)
                    print("Price: " .. tostring(tattooData.price))
                    foundTattoo = true
                    break 
                end
            end
            if foundTattoo then
                break 
            end
        end
        if foundTattoo then
            break
        end
    end

    if not foundTattoo then
        print("Tattoo with name \"" .. tattooName .. "\" not found.")
    end
end

