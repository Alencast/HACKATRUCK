//
//  ViewModel.swift
//  04112024
//
//  Created by Turma02-17 on 04/11/24.
//

import SwiftUI

class ViewModel: ObservableObject {
   
    @Published var chars :[HaPo] = []
    
    func fetch(){
        
        let task = URLSession.shared.dataTask(with: URL(string:"https://hp-api.onrender.com/api/characters/house/gryffindor")!){
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



