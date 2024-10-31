import SwiftUI

struct ScannerView: View {
    
    @State private var name: String = ""
    @State private var backgroundColor: Color = Color("")
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Modo 3")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("Bem-vindo, \(name.isEmpty ? "Visitante" : name)")
                                   .font(.title)
                                   .padding()
                                   .foregroundColor(.white)
                
                TextField("Digite seu nome", text: $name)
                                   .font(.system(size: 30, weight: .bold, design: .default))
                                  // .padding(10)
                                  // .padding(.leading, 20)
                                  // .background(Color(.systemGray6))
                                   .cornerRadius(8)
                                   .frame(height: 50)
                                   .foregroundColor(.white)
                                   .accentColor(.white)
                           .multilineTextAlignment(.center)
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    ScannerView()
}
