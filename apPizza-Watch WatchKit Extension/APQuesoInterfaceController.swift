//
//  APQuesoInterfaceController.swift
//  apPizza-Watch
//
//  Created by John Veronelli on 24/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import WatchKit
import Foundation


class APQuesoInterfaceController: WKInterfaceController {

    @IBOutlet var quesoPicker: WKInterfacePicker!
    @IBOutlet weak var confirmButton: WKInterfaceButton!
    
    var pizza = Pizza()
    var quesos: [(String)] = ["mozzarela", "cheddar", "parmesano", "sin queso"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
        let pickerItems: [WKPickerItem] = quesos.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            pickerItem.caption = $0
            return pickerItem
        }
        quesoPicker.setItems(pickerItems)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        pizza.queso = String(quesos[value])
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "queso"{
            return pizza
        }
        return nil
    }

}
