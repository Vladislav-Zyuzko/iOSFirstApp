//
//  ContentView.swift
//  FirstSteps
//
//  Created by Effective on 13.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack{
                WelcomeBlock()
                MainDoctorCard()
            }
            .padding(.horizontal, 24)
        }
    }
}
