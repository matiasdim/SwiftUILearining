//
//  TimeCounter.swift
//  RGBullsEye
//
//  Created by Matías Gil Echavarría on 1/21/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import Foundation

class TimeCounter: ObservableObject {
    var timer: Timer?
    @Published var counter = 0
    
    init() {
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        counter += 1
    }
    
    func killTimer() {
        self.timer?.invalidate()
        self.timer = nil
    }
}
