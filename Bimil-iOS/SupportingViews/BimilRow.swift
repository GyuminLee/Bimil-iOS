//
//  BimilRow.swift
//  Bimil-iOS
//
//  Created by Eunae Jang on 2019/12/05.
//  Copyright © 2019 KarlsBubu. All rights reserved.
//

import SwiftUI

struct BimilRow: View {
    var bimil: Bimil
    
    var body: some View {
        HStack {
            Text(bimil.name)
        }
    }
}

struct BimilRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BimilRow(bimil: tempData[0])
            BimilRow(bimil: tempData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))  // Size of Row
    }
}
