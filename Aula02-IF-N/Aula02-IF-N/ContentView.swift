import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var alerta: Bool = false

    var body: some View {
        
        ZStack {
            Image("hacka")
                .resizable()
                .scaledToFill()
                .opacity(0.4)
                .ignoresSafeArea()
        
            VStack {
                Text("Bem-vindo, \(name.isEmpty ? "Visitante" : name)")
                    .font(.title)
                    .padding()

                
                TextField("Digite seu nome", text: $name)
                    .font(.system(size: 24, weight: .bold, design: .default))
                   // .padding(10)
                   // .padding(.leading, 20)
                   // .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .frame(height: 50)
            .multilineTextAlignment(.center)
                   

                Spacer()

                Image("imghack")
                    .resizable()
                    .frame(width: 200, height: 200)

                Spacer()
                
                Button("Entrar") {
                    alerta = true
                }
                .alert("Você irá iniciar a aula agora.", isPresented: $alerta) {
                    Button("Ok", role: .cancel) { }
                }.font(.system(size: 24, weight: .bold, design: .default))
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
