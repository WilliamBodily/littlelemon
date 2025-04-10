//
//  Hero.swift
//  Restaurant
//
//  Created by William Bodily on 4/5/25.
//

import SwiftUI

struct Hero: View {
    
    @Binding var isLoggedIn: Bool
    
    let heroTitle = "Little Lemon"
    let heroLocation = "Chicago"
    let heroDescription = "We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist."
    let heroWelcome = "Welcome to Little Lemon where we are sure to delight you with our unique, modern take on Mediterranean cuisine. Register now to start your culinary journey with us!"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(heroTitle)
                .font(Font.cfLLDisplayTitle)
                .foregroundColor(Color(hex: Color.pcLLYellow))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                .padding(.top)
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 10) {
                    Text(heroLocation)
                        .font(Font.cfLLSubTitle)
                        .foregroundColor(Color(hex: Color.scLLWhite))
                        .frame(maxWidth: .infinity, alignment: .topLeading)
                    Text(isLoggedIn ? heroDescription : heroWelcome)
                        .font(Font.cfLLLeadText)
                        .foregroundColor(Color(hex: Color.scLLWhite))
                        .frame(maxWidth: .infinity, maxHeight: 120, alignment: .leading)
                }
                Image("Hero image")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(maxWidth: 140, maxHeight: 140)
                    .clipShape(Rectangle())
                    .cornerRadius(16)
            }
            .padding(.bottom)
            .padding(.leading)
            .padding(.trailing)
        }
        .background(Color(hex: Color.pcLLGreen))
    }
}

#Preview {
    Hero(isLoggedIn: .constant(false))
}
