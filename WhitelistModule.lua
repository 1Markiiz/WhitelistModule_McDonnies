-- WhitelistModule
local WhitelistModule = {}

-- Rank structure:
-- RankName = {
--     Team = "TeamName",
--     Users = {UserIds}
-- }

WhitelistModule.Ranks = {
    ["Chairman"] = {
        Team = "Ownership",
        Users = {
            0,
        }
    },

    ["Vice-Chairman"] = {
        Team = "Ownership",
        Users = {
            44444444,
        }
    },

    ["Corporate"] = {
        Team = "Corporate",
        Users = {
            66666666,
        }
    },

    ["Team Member"] = {
        Team = "Team Member",
        Users = {
            88888888,
        }
    }
}

-- Returns rank name + team name
function WhitelistModule:GetRank(player)
    for rankName, data in pairs(self.Ranks) do
        for _, userId in ipairs(data.Users) do
            if player.UserId == userId then
                return rankName, data.Team
            end
        end
    end
    return nil, nil
end

return WhitelistModule
