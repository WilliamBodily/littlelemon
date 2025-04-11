//
//  Header.swift
//  Restaurant
//
//  Created by William Bodily on 4/5/25.
//

import SwiftUI

struct Header: View {
    
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        ZStack {
            Image("Logo")
            HStack {
                Spacer()
                if (isLoggedIn) {
                    Image("Profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 50)
                        .clipShape(Circle())
                        .padding(.trailing)
                }
            }
        }
        .frame(maxHeight: 60)
    }
}

#Preview {
    Header(isLoggedIn: .constant(false))
}
