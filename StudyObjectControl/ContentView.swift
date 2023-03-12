//
//  ContentView.swift
//  StudyObjectControl
//
//  Created by yimkeul on 2023/03/12.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var timerData : TimerData = TimerData()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button {
                    timerData.resetCount()
                } label: {
                    Text("Reset Counter")
                }
                
                NavigationLink("Next Screen") {
                    SecondView(timerData: timerData)
                }.padding()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
