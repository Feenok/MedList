//
//  MedicationStore.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import Foundation

class MedicationStore: ObservableObject {
    
    // MARK: - Properties
    
    @Published var medications = [Medication]() {
        didSet {
            saveMedications()
        }
    }
    
    // MARK: - Initialization
    
    init() {
        loadMedications()
    }
    
    // MARK: - Public methods
    
    func addMedication(_ medication: Medication) {
        medications.append(medication)
    }
    
    func deleteMedication(at offsets: IndexSet) {
        medications.remove(atOffsets: offsets)
    }
    
    // MARK: - Private methods
    
    private func loadMedications() {
        if let data = UserDefaults.standard.data(forKey: Constants.UserDefaults.medicationsKey),
           let medications = try? JSONDecoder().decode([Medication].self, from: data) {
            self.medications = medications
        }
    }
    
    private func saveMedications() {
        if let data = try? JSONEncoder().encode(medications) {
            UserDefaults.standard.set(data, forKey: Constants.UserDefaults.medicationsKey)
        }
    }
}
