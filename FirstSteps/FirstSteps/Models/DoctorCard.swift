import SwiftUI

struct DoctorCard : Identifiable {
    let id = UUID()
    let doctorName: String
    let doctorStatus: String
    let doctorImage: String
    let doctorLocation: String
    let doctorRating: String
    let doctorOpenTime: String
}
