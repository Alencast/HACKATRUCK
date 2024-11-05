//
//  ContentView.swift
//  04112024
//
//  Created by Turma02-17 on 04/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ViewModel()

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                AsyncImage(url: URL(string: "https://w7.pngwing.com/pngs/768/912/png-transparent-gryffindor-thumbnail.png")) { image in
                    image
                        .resizable()
                        .frame(width: 180, height: 200)
                        .padding(.top, 50)
                } placeholder: {
                    ProgressView()
                }

                Spacer()

                ScrollView {
                    ForEach(model.chars) { view in
                        VStack {
                            HStack {
                                AsyncImage(url: URL(string: "\(view.image!)")) { image in
                                    image.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .cornerRadius(100)
                                .frame(width: 80, height: 80)

                                VStack {
                                    Text("\(view.name!)")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                    Text("\(view.species!)")
                                        .font(.footnote)
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                    }
                }
            }
        }
        .onAppear(perform: model.fetch) 
    }
}

#Preview {
    ContentView()
}
