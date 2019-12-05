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
        VStack(alignment: .leading) {
            Text(bimil.name)
                .font(.headline)
            Text(bimil.webAddress)
                .font(.caption)
                .foregroundColor(Color.gray)
                .padding(.top, 5)
            HStack {
                TagView(isOn: bimil.typeNumber, type: TagView.PasswordType.number)
                TagView(isOn: bimil.typeCapital, type: TagView.PasswordType.capital)
                TagView(isOn: bimil.typeSpecialCharacter, type: TagView.PasswordType.specialCharacter)
            }
            .padding(.top, 15)
            
            Text("Note")
                .font(.footnote)
                .bold()
                .foregroundColor(Color.black.opacity(0.8))
                .padding(.top, 20)
            Text(bimil.note)
                .font(.footnote)
                .padding(.top, 5)
        }
        .padding([.top, .bottom], 5)
        .padding(.leading, 5)
    }
}

struct BimilRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BimilRow(bimil: tempData[0])
            BimilRow(bimil: tempData[1])
        }
        .previewLayout(.fixed(width: 300, height: 185))  // Size of Row
    }
}
