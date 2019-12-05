//
//  TagView.swift
//  Bimil-iOS
//
//  Created by Eunae Jang on 2019/12/05.
//  Copyright © 2019 KarlsBubu. All rights reserved.
//

import SwiftUI

struct TagView: View {
    @State var isOn: Bool
    var type: PasswordType
    var tagBgColor: Color {
        return isOn ? .yellow : .gray
    }

    var body: some View {
        HStack {
            Text(type.rawValue)
                .font(.caption)
                .foregroundColor(Color.black.opacity(0.8))
                .padding([.leading, .trailing], 10)
                .padding([.top, .bottom], 5)
                .background(
                    RoundedRectangle(cornerRadius: 25).fill(tagBgColor.opacity(0.3))
                )
        }
    }
    
    enum PasswordType: String, CaseIterable, Codable, Hashable {
        case number = "123"
        case capital = "ABC"
        case specialCharacter = "!@#"
    }
    
    
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
        TagView(isOn: true, type: TagView.PasswordType.number)
    }
}
