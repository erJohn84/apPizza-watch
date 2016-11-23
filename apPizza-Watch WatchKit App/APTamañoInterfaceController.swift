//
//  APTamañoInterfaceController.swift
//  apPizza-Watch
//
//  Created by John Veronelli on 23/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import WatchKit
import Foundation

class APTamañoInterfaceController: WKInterfaceController {
    
    @IBOutlet var sizePicker: WKInterfacePicker!
    @IBAction func pickerSelectedItemChanged(value: Int) {
    }
    @IBOutlet weak var confirmButton: WKInterfaceButton!
    
    let pickerData = ["Pequeña","Mediana","Grande"]
    var value = "pequeña"
    var pizza = Pizza?()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
