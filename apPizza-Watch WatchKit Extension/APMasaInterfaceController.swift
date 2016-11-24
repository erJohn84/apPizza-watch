//
//  APMasaInterfaceController.swift
//  apPizza-Watch
//
//  Created by John Veronelli on 24/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import WatchKit
import Foundation


class APMasaInterfaceController: WKInterfaceController {
    
    @IBOutlet var masaPicker: WKInterfacePicker!
    @IBOutlet weak var confirmButton: WKInterfaceButton!
    
    var pizza = Pizza?()
    var masa: [(String)] = ["Delgada", "Crujiente", "Gruesa"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as? Pizza
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
        let pickerItems: [WKPickerItem] = masa.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            pickerItem.caption = $0
            return pickerItem
        }
        masaPicker.setItems(pickerItems)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        pizza?.masa = String(masa[value])
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "masa"{
            return pizza
        } else {
            return nil
        }
    }
}
