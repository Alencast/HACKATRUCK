//
//  insta.swift
//  Aula01-IF-N
//
//  Created by Turma02-17 on 23/10/24.
//

import SwiftUI

struct insta: View {
    var body: some View {
        
        HStack{
            Text("username")
                .padding()
            
            Spacer()
            
            Image(systemName: "arrow.triangle.2.circlepath")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .padding()
            
            Image(systemName: "line.horizontal.3")
                .padding()
        }
      
        
            .padding(.top, 20)
                       
                      
                       Rectangle()
                           .fill(Color.gray)
                           .frame(height: 1)
                           .shadow(color: .black.opacity(0.5), radius: 4, x: 0, y: 2)
                           .padding(.top, 8)
        HStack{
            
            
            Image("imghacka")
                .resizable()
                .aspectRatio(contentMode:.fit)
                .clipShape(Circle())
                .frame(width:100, height:100)
            
            VStack{
                HStack{
                   
                    VStack{
                       
                        Text("8")
                            .padding(.top, 20)
                        Text("Posts")
                            
                    }
                    
                    VStack{
                        Text("12k")
                            .padding(.top, 20)
                        Text("Seguidores")
                    }
                    
                    VStack{
                        Text("2k")
                            .padding(.top, 20)
                        Text("Seguindo")
                    }
                }
                
                
                Button(action: {}) {
                    Text("Editar perfil")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }

            }
        }
        
        VStack{
            
            HStack{
                Text("Nome Sobrenome")
                    .padding()
                    Spacer()
                    
            }
            
            HStack{ 
                Text("Lorem ipsu blablabla")
                    .padding()
                Spacer()
            }
            
           
                
        }
        
        HStack{
            
            VStack(spacing: 5) {
                ForEach(0..<3) { _ in
                    HStack(spacing: 5) {
                        ForEach(0..<3) { _ in
                            Rectangle()
                                .fill(Color.black)
                                .frame(width: 5, height: 5)
                        }
                    }
                }
            }
            .padding()
            Spacer()
                
            
            
            Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.black)
                    .frame(width: 30, height: 30)
                    .padding()
            Spacer()
            
            ZStack {
                      

                       // Quadrado com bordas arredondadas
                       RoundedRectangle(cornerRadius: 15)
                           .fill(Color.gray.opacity(0.3)) // Cor cinza claro
                           .frame(width: 50, height: 50) // Tamanho do quadrado

                       // Ícone de usuário
                       Image(systemName: "person.fill")
                           .resizable()
                           .scaledToFit()
                           .foregroundColor(Color.gray) // Cor cinza do ícone
                           .frame(width: 25, height: 25) // Tamanho do ícone
                   }
            .padding()
                  
            
            
            
        }
        
        
        HStack{
            Rectangle()
                .frame(width:120, height:120)
                .foregroundColor(Color.blue)
                
            Rectangle()
                .frame(width:120, height:120)
                .foregroundColor(Color.blue)
            Rectangle()
                .frame(width:120, height:120)
                .foregroundColor(Color.blue)
           
            
        }
        
        HStack{
            Rectangle()
                .frame(width:120, height:120)
                .foregroundColor(Color.blue)
            Rectangle()
                .frame(width:120, height:120)
                .foregroundColor(Color.blue)
            Rectangle()
                .frame(width:120, height:120)
                .foregroundColor(Color.blue)
           
            
        }
        
       
                       
                       Spacer()
        
        
       
            
        
        
        
        
        
      
        
       
       
    }
}

#Preview {
    insta()
}
