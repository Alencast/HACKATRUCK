import SwiftUI
import MapKit

struct ContentView: View {
    @State private var isSheetPresented: Bool = false
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    )
    
    var body: some View {
        ZStack {
            
            
            VStack {
                Map(position: $position){
                    
                    ForEach(CountryArray) { location in
                        Annotation(location.name, coordinate: location.coordinate, content: {
                            AsyncImage(url: URL(string: location.flag)) { image in
                                image
                                    .resizable()
                                    .frame(width: 70, height: 50)
                            } placeholder: {
                                
                                ProgressView()
                                    .frame(width: 70, height: 50)
                            }
                        })
                        
                    }
                }
                
                
                ForEach(CountryArray) { location in
                    VStack {
                        Button(action: {
                            position = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    center: location.coordinate,
                                    span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
                            )
                            
                        }) {
                            Text(location.name)
                                .font(.headline)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        .sheet(isPresented: $isSheetPresented) {
                            SheetView()
                        }
                        .padding(.bottom, 50)
                    }
                    
                    
                }
                
            }
            
            

            
        }
    }
}


#Preview {
    ContentView()
}
