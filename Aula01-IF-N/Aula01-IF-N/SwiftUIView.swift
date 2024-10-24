//
//  SwiftUIView.swift
//  Aula01-IF-N
//
//  Created by Turma02-17 on 23/10/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack {
            
            Image("imghacka")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .clipShape(Circle())
                
            
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.red)
                Text("77 universidades")
                    .foregroundStyle(.blue)
                Text("5 regiões do Brasil")
                    .foregroundStyle(.yellow)
                
                
            }
                
                
                
            
        }
    }
}

#Preview {
    SwiftUIView()
}
