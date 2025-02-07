//
//  UserInfoView.swift
//  SwiftUI-Tinder
//
//  Created by Chirag Kular on 2/7/25.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("John")
                    .font(.title)
                    .fontWeight(.heavy)

                Text("35")
                    .font(.title)
                    .fontWeight(.semibold)

                Spacer()

                Button {
                    print("Button tapped")

                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            Text("Developer | Photographer | Traveler")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundColor(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView()
}
