//
//  TimerData.swift
//  StudyObjectControl
//
//  Created by yimkeul on 2023/03/13.
//

import Foundation
import Combine

class TimeData : ObservableObject{
    
    @Published var timeCount = 0
    var timer : Timer?
    
    init(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeDidFire), userInfo: nil, repeats: true)
    }
    
    @objc func timeDidFire() {
        timeCount += 1
    }

    func resetCount() {
        timeCount = 0
    }
    
}
