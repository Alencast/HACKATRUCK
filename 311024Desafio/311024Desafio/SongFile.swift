

import Foundation

struct Song: Identifiable {
    
    var id: Int
    var name: String
    var artist: String
    var capa: String
}


var arrayMusicas: [Song] = [
    Song(id: 1, name: "G.O.A.T", artist: "Polyphia", capa: "Sei lá"),
    Song(id: 2, name: "The Worst", artist: "Polyphia", capa: "Sei lá")
]
