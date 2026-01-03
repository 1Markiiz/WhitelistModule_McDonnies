-- WhitelistModule
local WhitelistModule = {}

-- Rank structure:
-- RankName = {
--     Team = "TeamName",
--     Users = { UserIds }
-- }

WhitelistModule.Ranks = {

    -- Ownership
    ["Chairman"] = {
        Team = "Ownership",
        Users = {
            3569563947,
        }
    },

    ["Vice Chairman"] = {
        Team = "Ownership",
        Users = {
            44444444,
        }
    },

    -- Development / Automation
    ["Developer"] = {
        Team = "Ownership",
        Users = {}
    },


    -- Corporate
    ["Department Director"] = {
        Team = "Corporate",
        Users = {}
    },

    ["Assistant Director"] = {
        Team = "Corporate",
        Users = {}
    },

    ["Senior Corporate"] = {
        Team = "Corporate",
        Users = {}
    },

    ["Junior Corporate"] = {
        Team = "Corporate",
        Users = {}
    },

    ["Corporate Intern"] = {
        Team = "Corporate",
        Users = {}
    },

    ["Public Relations"] = {
        Team = "Corporate",
        Users = {}
    },

    -- Management
    ["Branch Manager"] = {
        Team = "Management",
        Users = {}
    },

    ["Branch Supervisor"] = {
        Team = "Management",
        Users = {}
    },

    ["Assistant Supervisor"] = {
        Team = "Management",
        Users = {}
    },

    -- Kitchen / Staff
    ["Kitchen Leader"] = {
        Team = "Team Member",
        Users = {}
    },

        ["Senior Team Member"] = {
        Team = "Team Member",
        Users = {}
    },

    ["Team Member"] = {
        Team = "Team Member",
        Users = {}
    },

    ["Junior Team Member"] = {
        Team = "Team Member",
        Users = {}
    },

        ["Trainee"] = {
        Team = "Costumer",
        Users = {}
    },
            ["Noted Costumer"] = {
        Team = "Costumer",
        Users = {}
    },
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
