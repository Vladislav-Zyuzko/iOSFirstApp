import SwiftUI

struct DoctorCards : View {
    var body : some View {
        
        let DoctorList = [
            DoctorCard(
                doctorName: "DentalDoctor-Name".localized,
                doctorStatus: "DentalDoctor-Status".localized,
                doctorImage: "Image-Avatar2".localized,
                doctorLocation: "DentalDoctor-Location".localized,
                doctorRating: "DentalDoctor-Rating".localized,
                doctorOpenTime: "DentalDoctor-OpenTime".localized
            ),
            DoctorCard(
                doctorName: "MainDoctor-Name".localized,
                doctorStatus: "MainDoctor-Status".localized,
                doctorImage: "Image-Avatar1".localized,
                doctorLocation: "MainDoctor-Location".localized,
                doctorRating: "MainDoctor-Rating".localized,
                doctorOpenTime: "MainDoctor-OpenTime".localized
            )
        ]
        
        VStack(alignment: .leading, spacing: 16) {
            Text("DoctorList-Title".localized)
                .font(AppTheme.Fonts.poppins_semibold_16)
                .foregroundColor(AppTheme.TextColors.primaryBlack)
            VStack(spacing: 12) {
                ForEach(DoctorList) { item in
                    VStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Image(item.doctorImage)
                                .resizable()
                                .frame(width: 48, height: 48)
                                .background(AppTheme.BgColors.lightWhite98)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text(item.doctorName)
                                    .font(AppTheme.Fonts.poppins_bold_16)
                                    .foregroundColor(AppTheme.TextColors.primaryBlack)
                                Spacer(minLength: 8)
                                Text(item.doctorStatus)
                                    .font(AppTheme.Fonts.poppins_regular_14)
                                    .foregroundColor(AppTheme.TextColors.primaryGray)
                            }
                            Spacer()
                            HStack(spacing: 8) {
                                Image("Image-Location".localized)
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                Text(item.doctorLocation)
                                    .font(AppTheme.Fonts.poppins_regular_14)
                                    .foregroundColor(AppTheme.TextColors.primaryGray)
                            }
                        }
                        Divider()
                        HStack(spacing: 30.5) {
                            ClockBlock(
                                content: item.doctorRating,
                                color: AppTheme.TextColors.primaryYellow
                            )
                            ClockBlock(
                                content: item.doctorOpenTime,
                                color: AppTheme.TextColors.primaryBlue
                            )
                        }
                    }
                    .padding(20)
                    .background(AppTheme.BgColors.primaryWhite)
                    .cornerRadius(12)
                    .shadow(color: AppTheme.BgColors.dimWhite, radius: 10, x: 2, y: 12)
                }
            }
        }
    }
}

struct ClockBlock : View {
    
    let content: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 6) {
            Image("Image-Clock".localized)
                .resizable()
                .frame(width: 20, height: 20)
                .colorMultiply(color)
            Text(content)
                .font(AppTheme.Fonts.poppins_regular_12)
                .foregroundColor(color)
        }
    }
}
