import SwiftUI

struct LittleLemonLogo: View {
    var body: some View {
        VStack {
            Image("littleLemon")
            .frame(width: 300, height: 100, alignment: .center)      
        }
    }
}

struct LittleLemonLogo_Previews: PreviewProvider {
    static var previews: some View {
        LittleLemonLogo()
    }
}


