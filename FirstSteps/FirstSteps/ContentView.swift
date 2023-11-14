//
//  ContentView.swift
//  FirstSteps
//
//  Created by Effective on 13.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("smile")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Swift!")
                .font(AppTheme.Fonts.poppins_bold_20)
        }
    }
}
