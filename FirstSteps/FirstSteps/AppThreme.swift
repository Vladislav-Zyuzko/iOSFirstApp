import SwiftUI

struct AppTheme {
    
    struct BgColors {
        static let primaryWhite = Color.white
        static let dimWhite = Color(red: 0.35, green: 0.46, blue: 0.65).opacity(0.04)
        static let lightWhite98 = Color(red: 0.98, green: 0.98, blue: 0.98)
        static let lightWhite96 = Color(red: 0.96, green: 0.96, blue: 0.96)
        static let primaryBlue = Color(red: 0.28, green: 0.58, blue: 1)
        static let primaryDarkGray = Color(red: 0.39, green: 0.71, blue: 0.1).opacity(0.1)
    }
    
    struct TextColors {
        static let primaryWhite = Color.white
        static let lightGray = Color(red: 0.8, green: 0.88, blue: 1)
        static let primaryYellow = Color(red: 1, green: 0.69, blue: 0.32)
        static let lightBlue = Color(red: 0.39, green: 0.71, blue: 1)
        static let primaryBlue = Color(red: 0.28, green: 0.58, blue: 1)
        static let primaryGray = Color(red: 0.53, green: 0.59, blue: 0.73)
        static let primaryBlack = Color(red: 0.05, green: 0.11, blue: 0.2)
    }
    
    struct Fonts {
        
        static let poppins_bold_16 = Font.custom(
            "Poppins-Bold_Font".localized, size: 16)
        static let poppins_bold_20 = Font.custom(
            "Poppins-Bold_Font".localized, size: 20)
        
        static let poppins_semibold_16 = Font.custom(
            "Poppins-SemiBold_Font".localized, size: 16)
        
        static let poppins_regular_12 = Font.custom(
            "Poppins-Regular_Font".localized, size: 12)
        static let poppins_regular_14 = Font.custom(
            "Poppins-Regular_Font".localized, size: 14)
        static let poppins_regular_15 = Font.custom(
            "Poppins-Regular_Font".localized, size: 15)
        static let poppins_regular_16 = Font.custom(
            "Poppins-Regular_Font".localized, size: 16)
        
        static let nunito_bold_14 = Font.custom(
            "Nunito-Bold_Font".localized, size: 14)
    }
}
