-- WhitelistModule
local WhitelistModule = {}

WhitelistModule.Teams = {
    ["Ownership"] = {3569563947},
    ["Corporate"] = {44444444},
    ["High Ranks"] = {66666666},
    ["Team Member"] = {77777777, 88888888}
}

function WhitelistModule:GetTeam(player)
    for teamName, userIds in pairs(self.Teams) do
        for _, id in ipairs(userIds) do
            if player.UserId == id then
                return teamName
            end
        end
    end
    return nil
end

return WhitelistModule
