//
// SettingsBundle
//
//  An exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var favoritePizza: UILabel!
    
    @IBAction func displayDefaults(){
        
        var text = "" // initialize a string to place the pizza.
        
        // Add the Multi Value here
        
        
        //A switch uses .bool(for:key)
        if defaults.bool(forKey: "panPizza_preference"){
            text += "Deep Dish Pizza \n"
        }else {
            text += "Thin crust\n"
        }
        // Text uses .string(for:key)! which can be nil, so unwrap it!
        if let toppings = defaults.string(forKey: "toppings_preference"){
            text += toppings
        }
        favoritePizza.text = text
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        displayDefaults()
    }


}

