//
//  MedicationCell.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import SwiftUI

struct MedicationCell: View {
    // MARK: - Properties

    let medication: Medication

    // MARK: - User Interface

    var body: some View {
        Text(medication.name)
    }
}

struct MedicationCell_Previews: PreviewProvider {
    static var previews: some View {
        MedicationCell(medication: Medication(name: "Test Medication"))
    }
}

