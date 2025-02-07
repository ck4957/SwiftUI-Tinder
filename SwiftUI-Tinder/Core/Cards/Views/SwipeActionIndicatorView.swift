//
//  SwipeActionIndicatorView.swift
//  SwiftUI-Tinder
//
//  Created by Chirag Kular on 2/7/25.
//

import SwiftUI

struct SwipeActionIndicatorView: View {
    var body: some View {
        HStack {
            Text("LIKE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.green)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.green, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(-45))

            Spacer()

            Text("NOPE")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.red, lineWidth: 2)
                        .frame(width: 100, height: 48)
                }
                .rotationEffect(.degrees(45))
        }
        .padding(40)
    }
}

#Preview {
    SwipeActionIndicatorView()
}
