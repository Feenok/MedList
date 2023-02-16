//
//  AddMedicationViewController.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import SwiftUI

struct AddMedicationViewController: View {
    // MARK: - Properties

    @State var medication = Medication()
    @ObservedObject var viewModel: MedicationListViewModel

    // MARK: - User Interface

    var body: some View {
        Form {
            Section(header: Text("Medication Details")) {
                TextField("Medication name", text: $medication.name)
                TextField("Dose", text: $medication.dose)
                TextField("Directions", text: $medication.directions)
                }
            Section {
                Button(action: {
                    self.viewModel.addMedication(self.medication)
                    self.medication = Medication()
                }) {
                    Text("Save")
                }
            }
        }
        .navigationBarTitle("Add Medication")
    }
}

struct AddMedicationViewController_Previews: PreviewProvider {
static var previews: some View {
AddMedicationViewController(viewModel: MedicationListViewModel())
}
}

