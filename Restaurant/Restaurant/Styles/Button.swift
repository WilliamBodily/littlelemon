//
//  Button.swift
//  Restaurant
//
//  Created by William Bodily on 4/9/25.
//

import SwiftUI

let primaryColor1 = Color(hex: Color.pcLLGreen)
let primaryColor2 = Color(hex: Color.pcLLYellow)
let secondaryColor1 = Color(hex: Color.scLLGreen)

struct ButtonStyleYellowColorWide: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .foregroundColor(configuration.isPressed ? .white : .black)
            .padding(10)
            .background(configuration.isPressed ? primaryColor1 : primaryColor2)
            .cornerRadius(8)
            .padding(.horizontal)
    }
}

struct ButtonStylePrimaryColor1: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? primaryColor1 : .white)
            .padding(10)
            .background(configuration.isPressed ? .white : primaryColor1)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(primaryColor1, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

struct ButtonStylePrimaryColorReverse: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .white : primaryColor1)
            .padding(10)
            .background(configuration.isPressed ? primaryColor1 : .white)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(primaryColor1, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

struct ButtonToggleStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? .white : primaryColor1)
            .padding(10)
            .background(configuration.isPressed ? primaryColor1 : .white)
            .cornerRadius(8)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(primaryColor1, lineWidth: 1)
            )
            .padding(.horizontal)
    }
}

struct MyToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            HStack {
                configuration.label
            }
        }
        .foregroundColor(primaryColor1)
        .padding(5)
        .background {
            if configuration.isOn {
                secondaryColor1
            }
        }
        .cornerRadius(8)
    }
}
