//
//  MenuItemDetails.swift
//  Restaurant
//
//  Created by William Bodily on 4/5/25.
//

import SwiftUI

struct MenuItemDetails: View {
    
    let dish: Dish
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: dish.image ?? "")!) { image in image.image?
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 160, height: 160)
                    .clipped()
                    .clipShape(Circle())
            }
            Text(dish.title ?? "")
                .font(Font.cfLLSectionCategories)
                .foregroundColor(Color(hex: Color.scLLBlack))
                .padding(.top)
            Text(dish.desc ?? "")
                .font(Font.cfLLParagraphRegular)
                .foregroundColor(Color(hex: Color.scLLGreen))
                .frame(maxWidth: .infinity, alignment: .center)
                .lineLimit(4)
                .padding()
        }
    }
}

#Preview {
//    MenuItemDetails()
}
