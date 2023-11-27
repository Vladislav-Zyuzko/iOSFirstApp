import SwiftUI

struct MainTabbedView : View {
    @State var selectedTab = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomePage()
                    .tag(0)
                Text("Schedule page")
                    .tag(1)
                Text("Messages page")
                    .tag(2)
                Text("Profile page")
                    .tag(3)
            }
            ZStack {
                HStack {
                    ForEach((TabbedItems.allCases), id: \.self) { item in
                        Button {
                            selectedTab = item.rawValue
                        } label: {
                            CustomTabItem(imageName: item.iconName, title: item.title, isActive: selectedTab == item.rawValue)
                        }
                    }
                }
                .padding(6)
            }
            .padding(.horizontal, 24)
            .frame(height: 30)
        }
        .accentColor(AppTheme.BgColors.primaryWhite)
    }
}
