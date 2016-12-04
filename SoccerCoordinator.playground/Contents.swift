//: Playground - noun: a place where people can play

import UIKit



///////////////// PART 1: /////////////////


// Details for each player (as individual dictionaries)

var player1 = ["name": "Joe Smith", "height": "42", "experience": "YES", "guardian": "Jim and Jan Smith"]
var player2 = ["name": "Jill Tanner", "height": "36", "experience": "YES", "guardian": "Clara Tanner"]
var player3 = ["name": "Bill Bon", "height": "43", "experience": "YES", "guardian": "Sara and Jenny Bon"]
var player4 = ["name": "Eva Gordon", "height": "45", "experience": "NO", "guardian": "Wendy and Mike Gordon"]
var player5 = ["name": "Matt Gill", "height": "40", "experience": "NO", "guardian": "Charles and Sylvia Gill"]
var player6 = ["name": "Kimmy Stein", "height": "41", "experience": "NO", "guardian": "Bill and Hillary Stein"]
var player7 = ["name": "Sammy Adams", "height": "45", "experience": "NO", "guardian": "Jeff Adams"]
var player8 = ["name": "Karl Saygan", "height": "42", "experience": "YES", "guardian": "Heather Bledsoe"]
var player9 = ["name": "Suzane Greenberg", "height": "44", "experience": "YES", "guardian": "Henrietta Dumas"]
var player10 = ["name": "Sal Dali", "height": "41", "experience": "NO", "guardian": "Gala Dali"]
var player11 = ["name": "Joe Kavalier", "height": "39", "experience": "NO", "guardian": "Sam and Elaine Kavalier"]
var player12 = ["name": "Ben Finkelstein", "height": "44", "experience": "NO", "guardian": "Aaron and Jill Finkelstein"]
var player13 = ["name": "Diego Soto", "height": "41", "experience": "YES", "guardian": "Robin and Sarika Soto"]
var player14 = ["name": "Chloe Alaska", "height": "47", "experience": "NO", "guardian": "David and Jamie Alaska"]
var player15 = ["name": "Arnold Willis", "height": "43", "experience": "NO", "guardian": "Claire Willis"]
var player16 = ["name": "Phillip Helm", "height": "44", "experience": "YES", "guardian": "Thomas Helm and Eva Jones"]
var player17 = ["name": "Les Clay", "height": "42", "experience": "YES", "guardian": "Wynonna Brown"]
var player18 = ["name": "Herschel Krustofski", "height": "45", "experience": "YES", "guardian": "Hyman and Rachel Krustofski"]



// All players' data (as an array of player dictionaries)

var players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]






///////////////// PART 2: ///////////////// 

// Assign players to teams such that the number of experienced players on each team are the same


// Players by team (as empty arrays of dictionaries for each of the three teams)

var dragons = [[String: String]]()
var sharks = [[String: String]]()
var raptors = [[String: String]]()



// Assign players to the 3 teams such that the number of experienced players on each team are the same

var player = 0


while player < players.count {
    
    var experience = players[player]["experience"]
    var height = Double(players[player]["height"]!)

    
    if (experience == "YES") {
        
        if (dragons.count < sharks.count) {
            
            dragons.append(players[player])
            
        } else if (sharks.count < raptors.count) {
            
            sharks.append(players[player])
            
        } else {
            
            raptors.append(players[player])
            
        }
        
    } else if (experience == "NO") {
        
        if (dragons.count < sharks.count) {
            
            dragons.append(players[player])
            
        } else if (sharks.count < raptors.count) {
            
            sharks.append(players[player])
            
        } else {
            
            raptors.append(players[player])
            
        }
        
    }
    
    
    player += 1
    

}





///////////////// EXTRA CREDIT /////////////////

// Ensure that each teams’ average height is within 1.5 inches of the others.


// Figure out each team's average height


var dragonsPlayer = 0
var dragonsTotalHeight = 0.0
var dragonsAvgHeight = 0.0


var sharksPlayer = 0
var sharksTotalHeight = 0.0
var sharksAvgHeight = 0.0


var raptorsPlayer = 0
var raptorsTotalHeight = 0.0
var raptorsAvgHeight = 0.0




while dragonsPlayer < dragons.count {

    dragonsTotalHeight += Double(dragons[dragonsPlayer]["height"]!)!

    dragonsAvgHeight = dragonsTotalHeight / Double(dragons.count)
    
    dragonsPlayer += 1

}

while sharksPlayer < sharks.count {

    sharksTotalHeight += Double(sharks[sharksPlayer]["height"]!)!

    sharksAvgHeight = sharksTotalHeight / Double(sharks.count)
    
    sharksPlayer += 1


}

while raptorsPlayer < raptors.count {

    raptorsTotalHeight += Double(raptors[raptorsPlayer]["height"]!)!

    raptorsAvgHeight = raptorsTotalHeight / Double(raptors.count)
    
    raptorsPlayer += 1


}



// Each team's avg height: shows that Dragons and Sharks could be rebalanced to meet the 1.5 inches max range for the league


dragonsAvgHeight

sharksAvgHeight

raptorsAvgHeight





// Figure out the league's total and average height to find the inch range each team's avg height should be in.


var leagueTotalHeight = dragonsTotalHeight + sharksTotalHeight + raptorsTotalHeight

var leagueAvgHeight = leagueTotalHeight / Double(players.count)




// Logic to redistribute players among teams 
// 1.5 inches / 3 = 0.5 inch max range
// All 0 index players have experience so experience OK if only swapping out at 0 index
// Swapping out Dragons and Sharks within established range will do the trick


if sharksAvgHeight < (leagueAvgHeight - 0.5) {
    
    var dragonTallPlayer = dragons.remove(at: 0)
    
    var sharksShortPlayer = sharks.remove(at: 0)
    
    sharks.insert(dragonTallPlayer, at: 0)
    
    dragons.insert(sharksShortPlayer, at: 0)
    
}


// Recount of the teams after final players swap


var dragonsFinalPlayer = 0
var dragonsFinalTotalHeight = 0.0
var dragonsFinalAvgHeight = 0.0


var sharksFinalPlayer = 0
var sharksFinalTotalHeight = 0.0
var sharksFinalAvgHeight = 0.0


var raptorsFinalPlayer = 0
var raptorsFinalTotalHeight = 0.0
var raptorsFinalAvgHeight = 0.0



while dragonsFinalPlayer < dragons.count {
    
    dragonsFinalTotalHeight += Double(dragons[dragonsFinalPlayer]["height"]!)!
    
    dragonsFinalAvgHeight = dragonsFinalTotalHeight / Double(dragons.count)
    
    dragonsFinalPlayer += 1
    
}

while sharksFinalPlayer < sharks.count {
    
    sharksFinalTotalHeight += Double(sharks[sharksFinalPlayer]["height"]!)!
    
    sharksFinalAvgHeight = sharksFinalTotalHeight / Double(sharks.count)
    
    sharksFinalPlayer += 1
    
    
}

while raptorsFinalPlayer < raptors.count {
    
    raptorsFinalTotalHeight += Double(raptors[raptorsFinalPlayer]["height"]!)!
    
    raptorsFinalAvgHeight = raptorsFinalTotalHeight / Double(raptors.count)
    
    raptorsFinalPlayer += 1
    
    
}


// Check team player count/details and final total and average team height. All within 1.5 inch avg height of each other, and with equally distributed experience

print(dragons)
print(dragonsFinalAvgHeight)
print(dragonsFinalTotalHeight)



print(sharks)
print(sharksFinalAvgHeight)
print(sharksFinalTotalHeight)




print(raptors)
print(raptorsFinalAvgHeight)
print(raptorsFinalTotalHeight)







//////////////// PART 3: /////////////////


// Personalized letter to the guardians w player name, team name, guardians’ names and practice date/time



// All team players in the League (as an array of team Dictionaries for the entire League)

var league = [dragons, sharks, raptors]


// Announcement letter (as an array of Strings)

var announcementLetter = [String]()


// Go through the League array to identify each team and create different announcements details for each

var leagueTeam = 0

while leagueTeam < league.count {
    
    var teamNameAndDetails = String()
    
    switch leagueTeam {
    case 0: teamNameAndDetails = "Dragons!! The first team practice will be on March 17 at 1pm. Looking forward seeing you all there!"
    case 1: teamNameAndDetails = "Sharks!! The first team practice will be on March 17 at 3pm. Looking forward seeing you all there!"
    case 2: teamNameAndDetails = "Raptors!! The first team practice will be on March 18 at 1pm. Looking forward seeing you all there!"
    default: teamNameAndDetails = ""
    }
    
    

    
// Go through each team array to identify each player and create different anouncement details for them, including the team details above
    
    var teamPlayer = 0

    while teamPlayer < league[leagueTeam].count {
      
        let playerName = league[leagueTeam][teamPlayer]["name"]
        
        let playerGuardian = league[leagueTeam][teamPlayer]["guardian"]

        let letter = "Congrats, \(playerGuardian!)!! \(playerName!) has been selected to play with the \(teamNameAndDetails)!!"
        
        
        // Preview in console to check results (for my reference only – not required in this assignment)
        
        print(letter)
        
        
        
        // Add each player's letter to the Announcement letter array
        
        announcementLetter.append(letter)
        
        
        teamPlayer += 1
    
    }
    
    
    leagueTeam += 1

}



// Display announcement letters for all team players

announcementLetter



















































