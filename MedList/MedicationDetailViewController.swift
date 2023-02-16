//
//  MedicationDetailViewController.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import SwiftUI

struct MedicationDetailViewController: View {
    // MARK: - Properties

    let medication: Medication
    @ObservedObject var viewModel: MedicationListViewModel

    // MARK: - User Interface

    var body: some View {
        Form {
            Section(header: Text("Medication Details")) {
                Text(medication.name)
                Text(medication.dose)
                Text(medication.directions)
            }

            Section {
                Button(action: {
                    self.viewModel.deleteMedication(at: IndexSet([self.viewModel.medications.firstIndex(where: { $0.id == self.medication.id })!]))
                }) {
                    Text("Delete")
                }
            }
        }
        .navigationBarTitle("Medication Details")
    }
}

struct MedicationDetailViewController_Previews: PreviewProvider {
    static var previews: some View {
        MedicationDetailViewController(medication: Medication(), viewModel: MedicationListViewModel())
    }
}
