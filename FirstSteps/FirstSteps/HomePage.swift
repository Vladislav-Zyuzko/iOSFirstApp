//
//  ContentView.swift
//  FirstSteps
//
//  Created by Effective on 13.11.2023.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ScrollView {
            VStack{
                WelcomeBlock()
                MainDoctorCard()
                SearchLine()
                CategoriesPanel()
                DoctorCards()
            }
            .padding(.horizontal, 24)
        }
    }
}
