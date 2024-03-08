import SwiftUI

struct LocationsView: View {
    
    @EnvironmentObject var model:Model
    var someThing = ""
    
    var body: some View {
        VStack {
            LittleLemonLogo() // 1
                .padding(.top, 50)
            
            Text(model.displayingReservationForm ? "Reservation Details" : "Select a location") // 2
            .padding([.leading, .trailing], 40)
            .padding([.top, .bottom], 8)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            
            NavigationView {
                List(model.restaurants) { rest in
                    NavigationLink {
                        ReservationForm(rest)
                    } label: {
                        RestaurantView(rest)
                    }

                    
                } // 3
                .scrollContentBackground(.hidden)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                EmptyView()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView().environmentObject(Model())
    }
}

