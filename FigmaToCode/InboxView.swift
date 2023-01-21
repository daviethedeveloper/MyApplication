//
//  InboxView.swift
//  FigmaToCode
//
//  Created by daviethdev on 1/20/23.
//

import SwiftUI

struct InboxView: View {
    @State var countDownTimer = 5
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        VStack{
            Color("Background")
            Text("\(countDownTimer)")
                .onReceive(timer) {_ in
                    if countDownTimer > 0 && timerRunning {
                        countDownTimer -= 1
                    } else {
                        timerRunning = false
                    }
                }
                .font(.system(size: 80, weight: .bold))
                .opacity(0.80)
            
            HStack(spacing: 30){
                Button("Start") {
                    timerRunning = true
                }
                
                Button("Reset") {
                    countDownTimer = 5
                }.foregroundColor(.red)
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
