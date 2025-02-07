//
//  CardView.swift
//  SwiftUI-Tinder
//
//  Created by Chirag Kular on 2/7/25.
//

import SwiftUI

struct CardView: View {
    @State private var xoffset: CGFloat = 0
    @State private var degrees: Double = 0
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.samplePerson)
                .resizable()
                .scaledToFill()

            UserInfoView()
                .padding(.horizontal, 100)
        }
        .frame(width: cardWidth, height: cardHeight)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(x: xoffset)
        .rotationEffect(.degrees(degrees))
        .animation(.snappy, value: xoffset)
        .gesture(
            DragGesture()
                .onChanged(onDragChanged)
                .onEnded(onDragEnded)
        )
    }
}

private extension CardView {
    func onDragChanged(_ value: _ChangedGesture<DragGesture>.Value) {
        xoffset = value.translation.width
        degrees = Double(value.translation.width / 25)
    }

    func onDragEnded(_ value: _ChangedGesture<DragGesture>.Value) {
        let width = value.translation.width

        if abs(width) <= abs(screenCutOff) {
            xoffset = 0
            degrees = 0
        }
    }
}

private extension CardView {
    var screenCutOff: CGFloat {
        (UIScreen.main.bounds.width / 2) * 0.8
    }

    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 20
    }

    var cardHeight: CGFloat {
        UIScreen.main.bounds.height / 1.45
    }
}

#Preview {
    CardView()
}
