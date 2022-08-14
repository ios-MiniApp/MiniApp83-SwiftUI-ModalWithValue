//
//  SecondViewNavi.swift
//  MiniApp83-SwiftUI-ModalWithValue
//

import SwiftUI

struct SecondViewNavi: View {
    let str: String

    var body: some View {
        ZStack {
            Color(.green)
                .ignoresSafeArea()
            Text(str)
                .font(.title)
                .padding()
        }
    }
}

struct SecondViewNavi_Previews: PreviewProvider {
    static var previews: some View {
        SecondViewNavi(str: "テスト")
    }
}
