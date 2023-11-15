import SwiftUI

struct MainDoctorCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image("Image-Avatar1".localized)
                    .resizable()
                    .frame(width: 48, height: 48)
                    .background(AppTheme.BgColors.primaryWhite)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("MainDoctor-Name".localized)
                        .font(AppTheme.Fonts.poppins_bold_16)
                        .foregroundColor(AppTheme.TextColors.primaryWhite)
                    Spacer(minLength: 8)
                    Text("MainDoctor-Status".localized)
                        .font(AppTheme.Fonts.poppins_regular_14)
                        .foregroundColor(AppTheme.TextColors.lightGray)
                }
                Spacer()
                Image("Image-RightArrow".localized)
            }
            Divider()
            HStack(spacing: 30.5) {
                HStack(spacing: 8) {
                    Image("Image-Calendar".localized)
                    Text("MainDoctor-Date".localized)
                        .font(AppTheme.Fonts.poppins_regular_12)
                        .foregroundColor(AppTheme.TextColors.primaryWhite)
                }
                HStack(spacing: 8) {
                    Image("Image-Clock".localized)
                    Text("MainDoctor-Time".localized)
                        .font(AppTheme.Fonts.poppins_regular_12)
                        .foregroundColor(AppTheme.TextColors.primaryWhite)
                }
            }
        }
        .padding(20)
        .background(AppTheme.BgColors.primaryBlue)
        .cornerRadius(12)
    }
}
