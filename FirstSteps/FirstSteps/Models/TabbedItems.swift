enum TabbedItems : Int, CaseIterable {
    case home = 0
    case schedule
    case messages
    case profile
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .schedule:
            return "Schedule"
        case .messages:
            return "Messages"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return "Image-Home".localized
        case .schedule:
            return "Image-Calendar".localized
        case .messages:
            return "Image-Message".localized
        case .profile:
            return "Image-Profile".localized
        }
    }
}
