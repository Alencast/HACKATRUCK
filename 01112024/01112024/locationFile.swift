import Foundation
import MapKit

struct Location: Identifiable{
    
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String
    let description: String
}

var CountryArray: [Location] = [
    
    Location(name:"Brazil", coordinate:CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253), flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/550px-Flag_of_Brazil.svg.png", description:"Brasil descrição"),
    
    Location(name:"EUA", coordinate:CLLocationCoordinate2D(latitude: 39.7392, longitude: 104.9903), flag:"https://static.significados.com.br/foto/estados-unidos.jpg", description:"EUA descrição"),
  
]
