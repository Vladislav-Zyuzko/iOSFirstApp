import SwiftUI

struct WelcomeBlock : View {
    var body : some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text("Hello-Phrase".localized)
                    .font(AppTheme.Fonts.poppins_regular_16)
                    .foregroundColor(AppTheme.TextColors.primaryGray)
                Text("Welcome-Phrase".localized)
                    .font(AppTheme.Fonts.poppins_bold_20)
                    .foregroundColor(AppTheme.TextColors.primaryBlack)
            }
            Spacer()
            Image("Image-Smile".localized)
                .resizable()
                .frame(width: 56, height: 56)
        }
        .padding(.top, 20)
        .padding(.bottom, 32)
    }
}
