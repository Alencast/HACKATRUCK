import SwiftUI

struct ScannerView: View {
    @State private var backgroundColor: Color = Color("Color")
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Modo 3")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("abriu o tchesquedele também")
                    .font(.headline)
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                Spacer()
            }
            
        }
        
    }
}

#Preview {
    SheetView()
}
