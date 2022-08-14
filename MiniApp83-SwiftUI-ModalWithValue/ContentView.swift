//
//  ContentView.swift
//  MiniApp83-SwiftUI-ModalWithValue
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView = false
    @State var countNumber = 0

    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                Text(String(countNumber))
                    .font(.title)
                    .padding()

                HStack {
                    Button("  マイナス  ") {
                        countNumber -= 1
                    }
                    .buttonStyle(CapsuleButtonStyle())
                    .padding()
                    Button("  プラス  ") {
                        countNumber += 1
                    }
                    .buttonStyle(CapsuleButtonStyle())
                    .padding()
                }
                Spacer()

                HStack{
                    Button("モーダル遷移") {
                        isShowSecondView = true
                    }
                    .padding()
                    .sheet(isPresented: $isShowSecondView) {
                        SecondViewModal(str: String(countNumber), isShowSecondView: $isShowSecondView)
                    }

                    NavigationLink(destination: SecondViewNavi(str: String(countNumber)).navigationTitle("セカンド画面")) {
                        Text("ナビゲーション遷移")
                    }
                }
            }
            .navigationTitle("メイン画面")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
