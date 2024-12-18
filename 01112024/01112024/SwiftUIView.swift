import SwiftUI

struct SheetView: View {
    @State private var backgroundColor: Color = Color("Color")
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("abriu o tchesquedele")
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
