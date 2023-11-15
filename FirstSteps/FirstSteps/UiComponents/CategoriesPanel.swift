import SwiftUI

struct CategoriesPanel : View {
    
    let CategoriesList = [
        Category(
            imageName: "Image-Virus".localized,
            caption: "Virus-Description".localized
        ),
        Category(
            imageName: "Image-Doctor".localized,
            caption: "Doctor-Description".localized
        ),
        Category(
            imageName: "Image-Medicine".localized,
            caption: "Medicine-Description".localized
        ),
        Category(
            imageName: "Image-Hospital".localized,
            caption: "Hospital-Description".localized
        )
    ]
    
    var body : some View {
        HStack() {
            ForEach(Array(CategoriesList.enumerated()), id: \.offset) { index, item in
                VStack() {
                    VStack {
                        Image(item.imageName)
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    .padding(24)
                    .background(AppTheme.BgColors.lightWhite98)
                    .clipShape(Circle())
                    Text(item.caption)
                        .font(AppTheme.Fonts.poppins_regular_15)
                        .foregroundColor(AppTheme.TextColors.primaryGray)
                }
                if index != CategoriesList.count - 1 {
                    Spacer()
                }
            }
        }
    }
}
