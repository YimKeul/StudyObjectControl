//
//  SecondView.swift
//  StudyObjectControl
//
//  Created by yimkeul on 2023/03/13.
//

import SwiftUI

struct SecondView: View {
    
    // a:
    @ObservedObject var timerData : TimerData = TimerData()
    
    
    //  b:
    //  @ObservedObject var timerData : TimerData
    
    
    var body: some View {
        VStack{
            Text("Second View")
                .font(.largeTitle)
            Text("Time Count \(timerData.timeCount)")
                .font(.headline)
        }.padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        // a:
        SecondView()
        
        // b:
        // SecondView(timerData: TimerData())
    }
}
