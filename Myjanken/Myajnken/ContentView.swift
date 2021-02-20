//
//  ContentView.swift
//  Myajnken
//
//  Created by 金城秀作 on 2021/02/13.
//　全体像
// 1.じゃんけんの種類を数字で管理する変数を追加「0 = スタート」「1 = グー」「2 = チョキ」「3 = パー」
// 2.じゃんけんを表示
// 3.ボタンをタップで「グー」「チョキ」「パー」が表示
// 4.ランダムで表示させる
// 5.前回と違う結果が表示されるように変更

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        
        VStack {
            
            Spacer()
            //じゃんけんの数字が0の場合。スタート画面。
            if answerNumber == 0 {
                Text("これからジャンケンをします")
                    .padding(.bottom)
                //じゃんけんの数字が1の場合。
            } else if answerNumber == 1 {
                //画像を指定
                Image("gu")
                    //リサイズを指定.Modifier（画面のはみ出しなどレイアウトの修正）
                    //resizable = 利用可能なサイズに自動調整。
                    .resizable()
                    //画面内に収まるように、アスペクト比を維持する値「.fit」を指定
                    .aspectRatio(contentMode: .fit)
                    //.fill = 縦横比を保持したまま短い辺を基準に画面いっぱいに表示。 
                
                Spacer()
                //ジャンケンの種類を指定
             Text("グー")
                .padding(.bottom)
                
            } else if answerNumber == 2 {
                
                //画像を指定
                Image("choki")
                    //リサイズを指定
                    .resizable()
                    //画面内に収まるように、アスペクト比を維持する値を指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                //ジャンケンの種類を指定
             Text("チョキ")
                .padding(.bottom)
                
            } else {
                
                //画像を指定
                Image("pa")
                    //リサイズを指定
                    .resizable()
                    //画面内に収まるように、アスペクト比を維持する値を指定
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                //ジャンケンの種類を指定
             Text("パー")
                .padding(.bottom)
                
            }
            
           //じゃんけんを開始するボタン。
            Button(action: {
                
                //新しいじゃんけんの結果を一時的に格納。
                var newAnswerNumber = 0
                
                
                //repeatは文字通り繰り返し。
                repeat {
                    //random = 乱数。 1~3の中からランダムに生成。
                    newAnswerNumber = Int.random(in: 1...3)
                    
                    //異なる結果の場合repeatを抜ける。
                    //whileは繰り返す条件。
                } while answerNumber == newAnswerNumber
                
                //新しいじゃんけんの結果を格納。
                answerNumber = newAnswerNumber

            }) {
               Text("ジャンケンをする！")
                
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .font(.title)
                .background(Color.pink)
                .foregroundColor(Color.white)
                
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
