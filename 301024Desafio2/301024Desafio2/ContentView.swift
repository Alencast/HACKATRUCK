import SwiftUI

struct ContentView: View {
    
    @State private var backgroundColor: Color = Color("Color")
    @State private var isSheetPresented: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                backgroundColor
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image("hacka")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 350)
                    
                    VStack {
                        Button(action: {
                            isSheetPresented = true
                        }) {
                            Text("Modo 1")
                                .font(.headline)
                                .padding()
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .sheet(isPresented: $isSheetPresented) {
                            SheetView()
                        }
                        
                        NavigationLink(destination: TextFieldView()) {
                            Text("Modo 2")
                                .font(.headline)
                                .padding()
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                          
                        }) {
                            Text("Modo 3")
                                .font(.headline)
                                .padding()
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
