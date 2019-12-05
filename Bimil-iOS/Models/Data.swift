//
//  Data.swift
//  Bimil-iOS
//
//  Created by Eunae Jang on 2019/12/05.
//  Copyright © 2019 KarlsBubu. All rights reserved.
//

import Foundation
import CoreLocation
import SwiftUI

let tempData: [Bimil] = load("tempData.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
