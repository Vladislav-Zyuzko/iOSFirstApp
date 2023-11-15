import SwiftUI

struct SearchLine : View {
    
    @State private var text = ""
    @State private var showAlert = false
    
    var body : some View {
        HStack(spacing: 12) {
            Button(action: {
                if text != "" {
                    showAlert = true
                }
            }) {
                Image("Image-Search".localized)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Search Started!"),
                    message: Text("Your input: " + text)
                )
            }
            TextField(
                "",
                text: $text,
                prompt: Text("SearchLine-Placeholder".localized)
                    .font(AppTheme.Fonts.poppins_regular_15)
                    .foregroundColor(AppTheme.TextColors.primaryGray)
            )
                .font(AppTheme.Fonts.poppins_regular_15)
                .foregroundColor(AppTheme.TextColors.primaryBlack)
            Spacer()
        }
        .padding(16)
        .background(AppTheme.BgColors.lightWhite98)
        .cornerRadius(12)
        .padding(.bottom, 24)
    }
}
