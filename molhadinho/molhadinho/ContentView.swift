import SwiftUI

struct ContentView: View {
    @StateObject var model = ViewModel()

    var body: some View {
        VStack {
           
        
            
                    ForEach(model.chars, id: \._id) { view in
                        

                            VStack {
                                Text("\(view.umidade)")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                               
                            }
                          
                        
                       
                    }
                
                
            
        }
        .onAppear(perform: model.fetch)
    }
}

#Preview {
    ContentView()
}
