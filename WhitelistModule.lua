local WhitelistModule = {}

--// Rank structure:
-- Priority = Higher number = higher rank

WhitelistModule.Ranks = {

	--// OWNERSHIP
	["Chairman"] = {
		Priority = 100,
		Team = "Ownership",
		Users = {
			3569563947,
		}
	},

	["Vice Chairman"] = {
		Priority = 90,
		Team = "Ownership",
		Users = {
			1241683400,
		}
	},

	["Developer"] = {
		Priority = 80,
		Team = "Ownership",
		Users = {}
	},

	--// CORPORATE
	["Department Director"] = {
		Priority = 70,
		Team = "Corporate",
		Users = {
            2780772562,
        }
	},

	["Assistant Director"] = {
		Priority = 65,
		Team = "Corporate",
		Users = {}
	},

	["Senior Corporate"] = {
		Priority = 60,
		Team = "Corporate",
		Users = {}
	},

	["Junior Corporate"] = {
		Priority = 55,
		Team = "Corporate",
		Users = {}
	},

	["Corporate Intern"] = {
		Priority = 50,
		Team = "Corporate",
		Users = {}
	},

	["Public Relations"] = {
		Priority = 45,
		Team = "Corporate",
		Users = {}
	},

	--// MANAGEMENT
	["Branch Manager"] = {
		Priority = 40,
		Team = "Management",
		Users = {
			1,
		}
	},

	["Branch Supervisor"] = {
		Priority = 35,
		Team = "Management",
		Users = {}
	},

	["Assistant Supervisor"] = {
		Priority = 30,
		Team = "Management",
		Users = {}
	},

	--// STAFF
	["Kitchen Leader"] = {
		Priority = 25,
		Team = "Team Member",
		Users = {}
	},

	["Senior Team Member"] = {
		Priority = 20,
		Team = "Team Member",
		Users = {}
	},

	["Team Member"] = {
		Priority = 15,
		Team = "Team Member",
		Users = {}
	},

	["Junior Team Member"] = {
		Priority = 10,
		Team = "Team Member",
		Users = {
			33,
			23113,
		}
	},

	--// CUSTOMERS
	["Trainee"] = {
		Priority = 5,
		Team = "Costumer",
		Users = {}
	},

	["Noted Customer"] = {
		Priority = 3,
		Team = "Costumer",
		Users = {}
	},

	["Customer"] = {
		Priority = 1,
		Team = "Costumer",
		Users = {}
	},
}

--// Returns highest priority rank
function WhitelistModule:GetRank(player)
	local bestRank = nil
	local bestPriority = -math.huge

	for rankName, data in pairs(self.Ranks) do
		for _, userId in ipairs(data.Users) do
			if player.UserId == userId and data.Priority > bestPriority then
				bestPriority = data.Priority
				bestRank = rankName
			end
		end
	end

	if bestRank then
		return bestRank, self.Ranks[bestRank].Team
	end

	return nil, nil
end

return WhitelistModule
