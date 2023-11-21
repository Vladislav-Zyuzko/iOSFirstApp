import SwiftUI

extension MainTabbedView {
    func CustomTabItem(imageName: String, title: String, isActive: Bool) -> some View {
        HStack(spacing: 8) {
            HStack {
                Image(imageName)
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundColor(isActive ? AppTheme.TextColors.lightBlue : AppTheme.TextColors.primaryGray)
                if isActive {
                    Text(title)
                        .font(AppTheme.Fonts.nunito_bold_14)
                        .foregroundColor(AppTheme.TextColors.lightBlue)
                }
            }
            .padding(12)
            .background(isActive ? AppTheme.BgColors.dimBlue : .clear)
            .cornerRadius(12)
            Spacer()
        }
        .frame(width: isActive ? .infinity : 67, height: 48)
    }
}
