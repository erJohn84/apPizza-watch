//
//  APIngredientesInterfaceController.swift
//  apPizza-Watch
//
//  Created by John Veronelli on 24/11/2016.
//  Copyright © 2016 John Veronelli. All rights reserved.
//

import WatchKit
import Foundation


class APIngredientesInterfaceController: WKInterfaceController {

    @IBOutlet var ingredientes: WKInterfaceTable!
    @IBOutlet weak var confirmButton: WKInterfaceButton!
    
    var pizza = Pizza()
    var ings: [(String)] = ["Jamon", "Pepperoni", "pimientos", "salchicha", "aceituna"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        if segueIdentifier == "ingredientes"{
            return pizza
        }
        return nil
    }

}
