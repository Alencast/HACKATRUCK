//
//  ContentView.swift
//  Aula01-IF-N
//
//  Created by Turma02-17 on 23/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            HStack {
                Rectangle()
                    .frame(width:100, height:100)
                    .foregroundColor(Color.red)
                    Spacer()
                
                
                Rectangle()
                    .frame(width:100, height:100)
                    .foregroundColor(Color.blue)
                
                
                
            }
            Spacer()
            HStack{
                Rectangle()
                    .frame(width:100, height:100)
                    .foregroundColor(Color.green)
                Spacer()
                Rectangle()
                    .frame(width:100, height:100)
                    .foregroundColor(Color.yellow)
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
