//
//  StudyObjectControlApp.swift
//  StudyObjectControl
//
//  Created by yimkeul on 2023/03/12.
//

import SwiftUI

@main
struct StudyObjectControlApp: App {
    @EnvironmentObject var timerData : TimerData
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(TimerData())
        }
    }
}
