import Foundation
import SwiftUI

extension String {
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
}
