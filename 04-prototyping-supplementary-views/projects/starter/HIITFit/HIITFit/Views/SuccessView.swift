

import SwiftUI

struct SuccessView: View {
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "hand.raised.fill")
                    .resizedToFill(width: 75.0, height: 75.0)
                    .foregroundColor(.purple)
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Good job completing all four exercises!\n Remember tomorrow's another day.\n So eat well and get some rest")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            VStack{
                Spacer()
                Button("Continue", action: {})
                    .padding()
            }
        }
    }
}

struct SuccessView_Previews: PreviewProvider {
    static var previews: some View {
        SuccessView()
    }
}
