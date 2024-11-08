
import SwiftUI

class ViewModel: ObservableObject {
   
    @Published var chars :[HaPo] = []
    
    func fetch(){
        
        let task = URLSession.shared.dataTask(with: URL(string:"http://127.0.0.1:1880/sensorUmidade")!){
            data, _,error in
            
            do {
                self.chars = try JSONDecoder().decode([HaPo].self, from: data!)
            } catch{
                print(error)
            }
        }
        task.resume()
    }
}



