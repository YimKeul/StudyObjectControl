//
//  SecondView.swift
//  StudyObjectControl
//
//  Created by yimkeul on 2023/03/13.
//

import SwiftUI

struct SecondView: View {
    
    //    @ObservedObject var timerData : TimerData = TimerData()
    //    이렇게 선언하면 Preview에서 에러가 난다.
    //    Missing argument for parameter 'timerData' in call Insert 'timerData: <#TimerData#>'
    
    @ObservedObject var timerData : TimerData
    
    
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
        SecondView(timerData: TimerData())
    }
}
