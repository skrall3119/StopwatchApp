//
//  InterfaceController.swift
//  stopwatch WatchKit Extension
//
//  Created by Alex Janci on 2/25/22.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var isStarted = false
    
    @IBOutlet weak var startStopButton: WKInterfaceButton!
    @IBOutlet weak var timeLabel: WKInterfaceTimer!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    @IBAction func StartStopTimer() {
        isStarted = !isStarted
        if isStarted {
            startStopButton.setTitle("Stop")
            resetTimer(timer: timeLabel, 0)
        } else {
            startStopButton.setTitle("Start")
            timeLabel.stop()
        }
    }
    func resetTimer(timer: WKInterfaceTimer, _ interval: TimeInterval){
        timer.stop()
        let time = Date(timeIntervalSinceNow: interval)
        timer.setDate(time)
        timer.start()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
