//
//  MedListApp.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import SwiftUI

@main
struct MedListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: MedicationListViewModel())
        }
    }
}
