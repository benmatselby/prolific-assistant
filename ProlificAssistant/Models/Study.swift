//
//  Study.swift
//  ProlificAssistant
//
//  Created by Ben Selby on 19/12/2022.
//

import Foundation

/**
 * Responsible for representing a Study object from the JSON API results. Casing is important.
 */
struct Study: Codable {
    var id: String
    var name: String
    var total_available_places: Int
}

/**
 * Responsible for representing an array of studies from the JSON API results. Casing is important.
 */
struct Studies: Codable {
    var results: [Study]
}
