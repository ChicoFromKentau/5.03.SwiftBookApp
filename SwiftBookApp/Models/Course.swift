//
//  Course.swift
//  SwiftBookApp
//
//  Created by Chingiz Alimov on 18.10.2023.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageUrl: URL
    let numberOfLessons: Int
    let numberOfTests: Int
}
