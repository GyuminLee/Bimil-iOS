//
//  Bimil.swift
//  Bimil-iOS
//
//  Created by Eunae Jang on 2019/12/05.
//  Copyright © 2019 KarlsBubu. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Bimil: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var typeNumber: Bool
    var typeCapital: Bool
    var typeSpecialCharacter: Bool
    var note: String
}
