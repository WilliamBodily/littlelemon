//
//  Colors.swift
//  Restaurant
//
//  Created by William Bodily on 4/5/25.
//

import SwiftUI

extension Color {
    
    static let pcLLGreen: String = "#495E57"
    static let pcLLYellow: String = "#F4CE14"
    static let scLLSalmon: String = "#EE9972"
    static let scLLGreen: String = "#71807B"
    static let scLLPink: String = "#FBDABB"
    static let scLLGray: String = "AFAFAF"
    static let scLLLiteGray: String = "#EDEFEE"
    static let scLLBlack: String = "#333333"
    static let scLLWhite: String = "#FFFFFF"
    
    // Convert from Hex Code string to Color
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}
