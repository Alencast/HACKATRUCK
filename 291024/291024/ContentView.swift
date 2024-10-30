import SwiftUI

struct ContentView: View {
    @State private var altura: String = ""
    @State private var peso: String = ""
    @State private var imc: Double? = nil
    @State private var backgroundColor: Color = Color("green123")
    @State private var status: String = ""
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Calculadora do IMC")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding()
                
                TextField("Altura (cm)", text: $altura)
                    .font(.system(size: 24, weight: .bold))
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .frame(height: 50)
                    .multilineTextAlignment(.center)
                    .padding()

                TextField("Peso (kg)", text: $peso)
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .frame(height: 50)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
                Button(action: calcularIMC) {
                    Text("Calcular IMC")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                Text(status)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                
                if let resultadoIMC = imc {
                    Text("Seu IMC é: \(String(format: "%.2f", resultadoIMC))")
                        .font(.title)
                        .padding()
                    
                }

                Spacer()

                Image("tabela-IMC")
                    .resizable()
                    .frame(width: 400, height: 250)
            }
            .padding(.top, 50)
        }
    }
    
    func calcularIMC() {
        guard let alturaEmCentimetros = Double(altura),
              let pesoEmKg = Double(peso),
              alturaEmCentimetros > 0,
              pesoEmKg > 0 else {
         
            return
        }

        let alturaEmMetros = alturaEmCentimetros / 100

      
        let resultadoIMC = pesoEmKg / (alturaEmMetros * alturaEmMetros)
       
        if resultadoIMC < 18.5 {
            backgroundColor = Color.green123
            status = "Baixo peso"
            
            
            
                
         
        } else if resultadoIMC < 24.9 {
            backgroundColor = Color.lightgreen
            status = "Normal"
               
           
        } else if resultadoIMC < 29.9 {
            backgroundColor = Color.color
            status = "Sobrepeso"
           
               
              
        } else {
            backgroundColor = Color.color1
            status = "Obesidade"
           
                
               
           
           

        }
        
        
        imc = resultadoIMC
    }
}

#Preview {
    ContentView()
}
