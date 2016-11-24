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
    @IBOutlet weak var confirmButton: WKInterfaceButton!
    
    var pizza = Pizza()
    var tamanos: [(String)] = ["Pequeña", "Mediana", "Grande"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }

    override func willActivate() {
        super.willActivate()
        let pickerItems: [WKPickerItem] = tamanos.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0
            pickerItem.caption = $0
            return pickerItem
        }
        sizePicker.setItems(pickerItems)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pickerSelectedItemChanged(value: Int) {
        pizza.tamano = String(tamanos[value])
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "tamano"{
            return pizza
        }
        return nil
    }
}
