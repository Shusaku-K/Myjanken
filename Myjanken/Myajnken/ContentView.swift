//
//  ContentView.swift
//  Myajnken
//
//  Created by 金城秀作 on 2021/02/13.
//

import SwiftUI

struct ContentView: View {
    
    @State var answerNumber = 0
    
    var body: some View {
        
        
        VStack {
            
            Spacer()
            
            if answerNumber == 0 {
                Text("これからジャンケンをします")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                //画像を指定
                Image("gu")
                    //リサイズを指定
                    .resizable()
                    //画面内に収まるように、アスペクト比を維持する値を指定
                    .aspectRatio(contentMode: .fit)
                
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
            
           
            Button(action: {
                
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
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
