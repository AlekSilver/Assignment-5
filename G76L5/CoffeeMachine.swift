//
//  CoffeeMachine.swift
//  G76L5
//
//  Created by Oleksandr Seliverstov on 28.12.2019.
//  Copyright © 2019 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
    
    override var description: String {
        return "Привет, я - личная кофемашина \n Выберите напиток".uppercased()
    }
    var water: Int
    var coffee: Int
    var milk: Int
    var tray: Int
    let waterMes = "Залейте воду"
    let coffeeMes = "Засыпьте кофе"
    let milkMes = "Залейте молоко"
    let trayMes = "Очистите контейнер отходов"
    private let trayLimit = 5
    
    init(water: Int, coffee: Int, milk: Int, tray: Int) {
        self.water = water
        self.coffee = coffee
        self.milk = milk
        self.tray = tray
    }
    
    func makeEspresso() -> String {
        var result = ""
        if tray < trayLimit {
            if water >= 100 && coffee >= 1 {
                result = "Возьмите Ваш Espresso"
                print("Возьмите Ваш Espresso")
                water = water - 100
                coffee = coffee - 1
                tray = tray + 1
            } else if water < 100 {
                result = waterMes
                print(waterMes)
            } else if coffee < 1 {
                result = coffeeMes
                print(coffeeMes)
            }
        } else {
            result = trayMes
            print(trayMes)
        }
        return result
    }
    
    func makeAmericano() -> String {
        var result = ""
        if tray < trayLimit {
            if water >= 200 && coffee >= 1 {
                result = "Возьмите Ваш Americano"
                print("Возьмите Ваш Americano")
                water = water - 200
                coffee = coffee - 1
                tray = tray + 1
            } else if water < 200 {
                result = waterMes
                print(waterMes)
            } else if coffee < 1 {
                result = coffeeMes
                print(coffeeMes)
            }
        } else {
            result = trayMes
            print(trayMes)
        }
        return result
    }
    
    func makeAmericanoMilk() -> String {
        var result = ""
        if tray < trayLimit {
            if water >= 200 && coffee >= 1 && milk >= 50 {
                result = "Возьмите Ваш Americano с молоком"
                print("Возьмите Ваш Americano с молоком")
                water = water - 200
                coffee = coffee - 1
                milk = milk - 50
                tray = tray + 1
            } else if water < 200 {
                result = waterMes
                print(waterMes)
            } else if coffee < 1 {
                result = coffeeMes
                print(coffeeMes)
            } else if milk < 50 {
                result = milkMes
                print(milkMes)
            }
        } else {
            result = trayMes
            print(trayMes)
        }
        return result
    }
    
    func makeCapuchino() -> String {
        var result = ""
        if tray < trayLimit {
            if water >= 100 && coffee >= 1 && milk >= 100 {
                result = "Возьмите Ваш Capuchino"
                print("Возьмите Ваш Capuchino")
                water = water - 100
                coffee = coffee - 1
                milk = milk - 100
                tray = tray + 1
            } else if water < 100 {
                result = waterMes
                print(waterMes)
            } else if coffee < 1 {
                result = coffeeMes
                print(coffeeMes)
            } else if milk < 100 {
                result = milkMes
                print(milkMes)
            }
        } else {
            result = trayMes
            print(trayMes)
        }
        return result
    }
    
    func addWater() -> String {
        var result = ""
        water = water + 1000
        result = "Вода добавлена \n Выберите напиток"
        print("Вода добавлена \n Выберите напиток")
        return result
    }
    
    func addCoffee() -> String {
        var result = ""
        coffee = coffee + 5
        result = "Кофе добавлен \n Выберите напиток"
        print("Кофе добавлен \n Выберите напиток")
        return result
    }
    
    func addMilk() -> String {
        var result = ""
        milk = milk + 500
        result = "Молоко добавлено \n Выберите напиток"
        print("Молоко добавлено \n Выберите напиток")
        return result
    }
    
    func cleanTray() -> String {
        var result = ""
        tray = 0
        result = "Лоток для отходов чист \n Выберите напиток"
        print("Лоток для отходов чист \n Выберите напиток")
        return result
    }
    
}
