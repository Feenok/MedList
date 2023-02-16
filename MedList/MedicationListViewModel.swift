//
//  MedicationListViewModel.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import SwiftUI

class MedicationListViewModel: ObservableObject {
    @Published var medications = [Medication]()
    @Published var showAddMedication = false

    func addMedication(_ medication: Medication) {
        medications.append(medication)
    }

    func deleteMedication(at offsets: IndexSet) {
        medications.remove(atOffsets: offsets)
    }
}
