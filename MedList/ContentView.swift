//
//  ContentView.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties

    @ObservedObject var viewModel: MedicationListViewModel

    // MARK: - User Interface

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.medications) { medication in
                    NavigationLink(destination: MedicationDetailViewController(medication: medication, viewModel: viewModel)) {
                        MedicationCell(medication: medication)
                    }
                }
                .onDelete(perform: viewModel.deleteMedication)
            }
            .navigationBarTitle(Text("Medications"))
            .navigationBarItems(trailing: Button(action: {
                self.viewModel.showAddMedication = true
            }) {
                Image(systemName: "plus")
            })
        }
        .sheet(isPresented: $viewModel.showAddMedication) {
            AddMedicationViewController(viewModel: self.viewModel)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: MedicationListViewModel())
    }
}

