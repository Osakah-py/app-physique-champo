//
//  Structures.swift
//  physique-champo
//
//  Created by Alex Lescot on 13/07/2024.
//

import Foundation

struct Categorie : Hashable, Codable, Identifiable {
    var id : Int
    var name : String
    var icon : String
    var size : Int
}
