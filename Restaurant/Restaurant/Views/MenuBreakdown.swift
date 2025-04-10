//
//  MenuBreakdown.swift
//  Restaurant
//
//  Created by William Bodily on 4/9/25.
//

import SwiftUI

struct MenuBreakdown: View {
    
    @Binding var filterOnStarters: Bool
    @Binding var filterOnMains: Bool
    @Binding var filterOnDesserts: Bool
    @Binding var filterOnDrinks: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            Text("ORDER FOR DELIVERY!")
                .font(Font.cfLLSectionTitle)
                .foregroundColor(Color(hex: Color.scLLBlack))
                .frame(maxWidth: .infinity, maxHeight: 36, alignment: .bottomLeading)
                .padding([.leading, .trailing])
            HStack {
                Button {
                    print("Toggling starters")
                    print("filterOnStarters: \(filterOnStarters)")
                    filterOnStarters.toggle()
                    if (filterOnStarters) {
                        toggleFilterOn("starters")
                    } else {
                        toggleFilterOn("")
                    }
                    print("Starters toggled")
                    print("filterOnStarters: \(filterOnStarters)")
                    print("filterOnMains: \(filterOnMains)")
                    print("filterOnDesserts: \(filterOnDesserts)")
                    print("filterOnDrinks: \(filterOnDrinks)")
                    
                } label: {
                    Text("Starters")
                        .font(Font.cfLLSectionCategories)
                        .foregroundColor(Color(hex: Color.pcLLGreen))
                        .frame(maxWidth: 70, maxHeight: 8)
                        .padding()
                }
//                .onTapGesture {
//                    Self.backgroundColor(Color(hex: Color.scLLGray))
//                }
                .buttonStyle(PlainButtonStyle())
                .buttonStyle(.bordered)
                .background(Color(hex: Color.scLLLiteGray))
                .cornerRadius(8)
                .controlSize(.large)
                Button {
                    filterOnMains.toggle()
                    if (filterOnMains) {
                        toggleFilterOn("mains")
                    } else {
                        toggleFilterOn("")
                    }
                } label: {
                    Text("Mains")
                        .font(Font.cfLLSectionCategories)
                        .foregroundColor(Color(hex: Color.pcLLGreen))
                        .frame(maxWidth: 70, maxHeight: 8)
                        .padding()
                }
                .buttonStyle(PlainButtonStyle())
                .buttonStyle(.bordered)
                .background(Color(hex: Color.scLLLiteGray))
                .cornerRadius(8)
                .controlSize(.large)
                Button {
                    filterOnDesserts.toggle()
                    if (filterOnDesserts) {
                        toggleFilterOn("desserts")
                    } else {
                        toggleFilterOn("")
                    }
                } label: {
                    Text("Desserts")
                        .font(Font.cfLLSectionCategories)
                        .foregroundColor(Color(hex: Color.pcLLGreen))
                        .frame(maxWidth: 70, maxHeight: 8)
                        .padding()
                }
                .buttonStyle(PlainButtonStyle())
                .buttonStyle(.bordered)
                .background(Color(hex: Color.scLLLiteGray))
                .cornerRadius(8)
                .controlSize(.large)
                Button {
                    filterOnDrinks.toggle()
                    if (filterOnDrinks) {
                        toggleFilterOn("drinks")
                    } else {
                        toggleFilterOn("")
                    }
                } label: {
                    Text("Drinks")
                        .font(Font.cfLLSectionCategories)
                        .foregroundColor(Color(hex: Color.pcLLGreen))
                        .frame(maxWidth: 70, maxHeight: 8)
                        .padding()
                }
                .buttonStyle(PlainButtonStyle())
                .buttonStyle(.bordered)
                .background(Color(hex: Color.scLLLiteGray))
                .cornerRadius(8)
                .controlSize(.large)
            }
            .padding([.leading, .trailing])
            .padding([.top, .bottom,], 10)
        }
    }
    
    func toggleFilterOn(_ filterOn: String) {
        
        switch filterOn {
        case "starters":
            filterOnMains = false
            filterOnDesserts = false
            filterOnDrinks = false
        case "mains":
            filterOnStarters = false
            filterOnDesserts = false
            filterOnDrinks = false
        case "desserts":
            filterOnStarters = false
            filterOnMains = false
            filterOnDrinks = false
        case "drinks":
            filterOnStarters = false
            filterOnMains = false
            filterOnDesserts = false
        default:
            filterOnStarters = false
            filterOnMains = false
            filterOnDesserts = false
            filterOnDrinks = false
        }
    }
}

#Preview {
    MenuBreakdown(filterOnStarters: .constant(true), filterOnMains: .constant(true), filterOnDesserts: .constant(true), filterOnDrinks: .constant(true))
}
