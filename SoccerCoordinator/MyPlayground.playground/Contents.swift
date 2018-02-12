// Dictionary to hold all of the data for the individual players
var player01: [String: Any] = ["Name": "Joe Smith", "Height": 42, "Soccer experience": true, "Guardians Names": "Jim and Jan Smith"]
var player02: [String: Any] = ["Name": "Jill Tanner", "Height": 36, "Soccer experience": true, "Guardians Names": "Clara Tanner"]
var player03: [String: Any] = ["Name": "Bill Bon", "Height": 43, "Soccer experience": true, "Guardians Names": "Sara & Jenny Bon"]
var player04: [String: Any] = ["Name": "Eva Gordon", "Height": 45, "Soccer experience": false, "Guardians Names": "Wendy & Mike Gordon"]
var player05: [String: Any] = ["Name": "Matt Gill", "Height": 40, "Soccer experience": false, "Guardians Names": "Charles & Sylvia Gill"]
var player06: [String: Any] = ["Name": "Kimmy Stein", "Height": 41, "Soccer experience": false, "Guardians Names": "Bill & Hillary Stein"]
var player07: [String: Any] = ["Name": "Sammy Adams", "Height": 45, "Soccer experience": false, "Guardians Names": "Jeff Adams"]
var player08: [String: Any] = ["Name": "Karl Saygan", "Height": 42, "Soccer experience": true, "Guardians Names": "Heather Bledsoe"]
var player09: [String: Any] = ["Name": "Suzane Greenberg", "Height": 44, "Soccer experience": true, "Guardians Names": "Henrietta Dumas"]
var player10: [String: Any] = ["Name": "Sal Dali", "Height": 41, "Soccer experience": false, "Guardians Names": "Gala Dali"]
var player11: [String: Any] = ["Name": "Joe Kavalier", "Height": 39, "Soccer experience": false, "Guardians Names": "Sam & Elaine Kavalier"]
var player12: [String: Any] = ["Name": "Ben Finkelstein", "Height": 44, "Soccer experience": false, "Guardians Names": "Aaron & Jill Finkelstein"]
var player13: [String: Any] = ["Name": "Diego Soto", "Height": 41, "Soccer experience": true, "Guardians Names": "Robin & Sarika Soto"]
var player14: [String: Any] = ["Name": "Chloe Alaska", "Height": 47, "Soccer experience": false, "Guardians Names": "David & Jamie Alaska"]
var player15: [String: Any] = ["Name": "Arnold Willis", "Height": 43, "Soccer experience": false, "Guardians Names": "Claire Willis"]
var player16: [String: Any] = ["Name": "Phillip Hem", "Height": 44, "Soccer experience": true, "Guardians Names": "Thomas Helm & Eva Jones"]
var player17: [String: Any] = ["Name": "Les Clay", "Height": 42, "Soccer experience": true, "Guardians Names": "Wynonna Brown"]
var player18: [String: Any] = ["Name": "Herschel Krustofski", "Height": 45, "Soccer experience": true, "Guardians Names": "Hyman & Rachel Krustofski"]

// Single collection created to hold all the players in
var players = [player01, player02, player03, player04, player05, player06, player07, player08, player09, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Collection varibales to store the players in to a team
var teamSharks: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teamDragons: [[String: Any]] = []

// Variable to hold both experienced and non experienced players
var hasSccerExperience: [[String: Any]] = []
var noSoccerExperience: [[String: Any]] = []

// Sorting through players to divide them between players with and without experience
for player in players {
    if let isExperienced = player["Soccer experience"] as? Bool {
        if isExperienced == true {
            hasSccerExperience.append(player)
        }   else {
            noSoccerExperience.append(player)
        }
    }
}

// Logic to iterate through all players and divide them in to teams
func sortByExperience(for player: [String: Any]) {
    if teamSharks.count <= teamDragons.count && teamSharks.count <= teamRaptors.count {
        teamSharks.append(player)
    }   else if teamRaptors.count <= teamSharks.count && teamRaptors.count <= teamDragons.count {
        teamRaptors.append(player)
    }   else if teamDragons.count <= teamSharks.count && teamDragons.count <= teamRaptors.count {
        teamDragons.append(player)
    }
}

// Dividing teams by experience
for player in hasSccerExperience {
    sortByExperience(for: player)
}

for player in noSoccerExperience {
    sortByExperience(for: player)
}


