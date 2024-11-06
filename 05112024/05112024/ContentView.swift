import SwiftUI

struct ContentView: View {
    @StateObject var model = ViewModel()

    var body: some View {
        ZStack {
        
            VStack {
               
                ForEach(model.chars, id: \._id) { view in
                        HStack {
                            VStack {
                                Text("\(view.nome!)")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                Text("\(view.idade!)")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                Text("\(view.transformacao!)")
                                    .font(.footnote)
                                    .foregroundColor(Color.black)
                            }
                            Spacer()
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
