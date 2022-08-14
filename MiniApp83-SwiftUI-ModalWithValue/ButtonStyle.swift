//
//  ButtonStyle.swift
//  MiniApp83-SwiftUI-ModalWithValue
//

import Foundation
import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)   //背景色
            .foregroundColor(.white)  //文字色
            .font(.body.bold())       //フォントサイズ・スタイル
            .clipShape(Capsule())     //背景の形
            .scaleEffect(configuration.isPressed ? 0.95 : 1)  //ボタンが押された時のエフェクト
    }

}
