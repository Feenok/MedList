//
//  Medication.swift
//  MedList
//
//  Created by Ernest Margariti on 2/15/23.
//

import Foundation

struct Medication: Identifiable, Decodable, Encodable {
    let id = UUID()
    var name = ""
    var dose = ""
    var directions = ""
}

