//
//  Font.swift
//  Restaurant
//
//  Created by William Bodily on 4/5/25.
//

import SwiftUI

extension Font {
    
    static var cfLLDisplayTitle: Font {
        return Font.custom("MarkaziText-Medium", size: 48)
    }
    
    static var cfLLSubTitle: Font {
        return Font.custom("MarkaziText-Regular", size: 32)
    }
    
    static var cfLLLeadText: Font {
        return Font.custom("Karla-Medium", size: 16)
    }
    
    static var cfLLSectionTitle: Font {
        return Font.custom("Karla-ExtraBold", size: 20).weight(.bold)
    }
    
    static var cfLLSectionCategories: Font {
        return Font.custom("Karla-ExtraBold", size: 12).weight(.bold)
    }
    
    static var cfLLCardTitle: Font {
        return Font.custom("Karla-Bold", size: 18)
    }
    
    static var cfLLParagraphRegular: Font {
        return Font.custom("Karla-Regular", size: 16)
    }
    
    static var cfLLParagraphRegularSmall: Font {
        return Font.custom("Karla-Regular", size: 10)
    }
    
    static var cfLLHighlight: Font {
        return Font.custom("Karla-Medium", size: 16)
    }
}
