//
//  SecondView.swift
//  MiniApp83-SwiftUI-ModalWithValue
//

import SwiftUI

struct SecondViewModal: View {
    let str: String
    @Binding var isShowSecondView: Bool

    var body: some View {
        ZStack {
            Color(.green)
                .ignoresSafeArea()
            VStack {
                Text(str)
                    .font(.title)
                    .padding()
                Button("前の画面に戻る") {
                    isShowSecondView = false
                }
                .buttonStyle(CapsuleButtonStyle())
            }
        }
    }

}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView(str: "テスト")
//    }
//}
