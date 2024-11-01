import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    AsyncImage(url: URL(string: "https://www.eldorado.org.br/wp-content/uploads/2024/07/Versao-3-d.jpg")) { image in
                        image
                            .resizable()
                            .frame(width: 180, height: 200)
                            .padding(.top, 50)
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Text("HackaFM")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.trailing, 250)
                        .padding(.top, 50)
                    
                    HStack {
                        Text("HackaSong")
                            .font(.footnote)
                            .foregroundColor(.white)
                            .padding(.trailing, 290)
                    }
                    
                    VStack {
                        ForEach(arrayMusicas) { song in
                            HStack {
                                AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616d0000b2737a799cc62e624fd6432779e3")) { image in
                                    image
                                        .resizable()
                                        .frame(width: 58, height: 50)
                                } placeholder: {
                                    ProgressView()
                                }
                                VStack(alignment: .leading) {  // Alinha os textos à esquerda
                                    Text(song.name)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text(song.artist)
                                        .font(.subheadline)
                                        .foregroundColor(.white.opacity(0.7))
                                }
                                Spacer()  // Adiciona um spacer para empurrar os itens para a esquerda
                            }
                            .padding(.horizontal, 10)
                        }
                        Spacer()
                    }
                    .padding(.top, 20)
                    .padding(.leading, 20)
                    .padding(.bottom, 50)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
