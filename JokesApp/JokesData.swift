//
//  JokesData.swift
//  JokesApp
//
//  Created by Oğuz on 14.08.2023.
//

import Foundation

struct JokesData: Codable, Identifiable {
    let id = UUID()
    let type: String
    let value: [Value]
}

struct Value: Codable,Identifiable {
    let id: Int
    let joke: String
    let categories: [String]
}
