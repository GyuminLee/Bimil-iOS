//
//  BimilListView.swift
//  Bimil-iOS
//
//  Created by Gyumin on 05.12.19.
//  Copyright © 2019 KarlsBubu. All rights reserved.
//

import SwiftUI

struct BimilListView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(tempData) { data in
                    NavigationLink(destination: BimilDetail()) {
                        BimilRow(bimil: data)
                    }
                }
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        // Button Action
                    }, label: {
                        Text("+")
                            .font(.system(.largeTitle))
                            .frame(width: 56, height: 50)
                    })
                }
            }
        .navigationBarTitle(Text("Bimils"))
        }
    }
}

struct BimilListView_Previews: PreviewProvider {
    static var previews: some View {
        BimilListView()
    }
}
