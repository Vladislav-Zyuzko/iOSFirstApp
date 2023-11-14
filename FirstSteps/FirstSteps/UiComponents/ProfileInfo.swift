import SwiftUI

struct ProfileInfo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image("avatar1")
                    .resizable()
                    .frame(width: 48, height: 48)
                    .background(AppTheme.BgColors.primaryWhite)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Dr. imran Syahir")
                        .font(AppTheme.Fonts.poppins_bold_16)
                        .foregroundColor(AppTheme.TextColors.primaryWhite)
                    Spacer(minLength: 8)
                    Text("General Doctor")
                        .font(AppTheme.Fonts.poppins_regular_14)
                        .foregroundColor(AppTheme.TextColors.lightGray)
                }
                Spacer()
                Image("right-arrow")
            }
            Divider()
            HStack(spacing: 30.5) {
                HStack(spacing: 8) {
                    Image("calendar")
                    Text("Sunday, 12 June")
                        .font(AppTheme.Fonts.poppins_regular_12)
                        .foregroundColor(AppTheme.TextColors.primaryWhite)
                }
                HStack(spacing: 8) {
                    Image("clock")
                    Text("11:00 - 12:00 AM")
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
