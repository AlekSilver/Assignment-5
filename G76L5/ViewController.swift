//
//  ViewController.swift
//  G76L5
//
//  Created by Oleksandr Seliverstov on 28.12.2019.
//  Copyright © 2019 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var espressoButton: UIButton!
    @IBOutlet weak var americanoButton: UIButton!
    @IBOutlet weak var americanoMilkButton: UIButton!
    @IBOutlet weak var capuchinoButton: UIButton!
    
    override func viewDidLoad() {
        espressoButton.layer.masksToBounds = true
        espressoButton.layer.cornerRadius = 10
        americanoButton.layer.masksToBounds = true
        americanoButton.layer.cornerRadius = 10
        americanoMilkButton.layer.masksToBounds = true
        americanoMilkButton.layer.cornerRadius = 10
        capuchinoButton.layer.masksToBounds = true
        capuchinoButton.layer.cornerRadius = 10
        
        super.viewDidLoad()
        displayLabel.text = myCoffeeMachine.description
    }
    
    let myCoffeeMachine = CoffeeMachine.init(water: 0, coffee: 0, milk: 0, tray: 0)
    
    @IBAction func addWater(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.addWater()
    }
    @IBAction func addCoffee(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.addCoffee()
    }
    @IBAction func addMilk(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.addMilk()
    }
    @IBAction func cleanTray(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.cleanTray()
    }
    @IBAction func makeEspresso(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeEspresso()
    }
    @IBAction func makeAmericano(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeAmericano()
    }
    @IBAction func makeAmericanoMilk(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeAmericanoMilk()
    }
    @IBAction func makeCapuchino(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeCapuchino()
    }
    
}

