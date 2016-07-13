//: Playground - noun: a place where people can play

import UIKit



struct Burger
{
    var doneLevel: String
    var cheese: String
    var topping01: String
    var topping02: String
    var veggie:Bool
    
    init( _ veggie: Bool, _ doneLevel: String, _ cheese: String? = nil, _ topping01: String? = nil, _ topping02:String? = nil)
    {
        self.veggie = veggie
        
        if topping02 != nil
        {
            self.topping02 = topping02!
        }
        else
        {
            self.topping02 = "NONE"
        }
        
        
        if topping01 != nil
        {
            self.topping01 = topping01!
        }
        else
        {
            self.topping01 = "NONE"
        }
        
        if cheese != nil
        {
            self.cheese = cheese!
        }
        else
        {
            self.cheese = "NONE"
        }
        
        self.doneLevel = doneLevel
        //self.cheese = cheese
        
    }
    
    
    func displayBurger()
    {
        let meatType:String = veggie ? "QUINOA BURGER" : "ANGUS BURGER"
        
        
        print("ORDER: Burger (type - \(meatType)) (cook - \(doneLevel)) (Cheese - \(cheese)) (1st Topping - \(topping01)) (2nd Topping - \(topping02)) PRICE: $" + String(format:"%5.2f",cost()))
    }
    
    func cost() -> Double
    {
        var burgerCost:Double = 8.00
        
        if veggie == true
        {
            burgerCost += 1.50
        }
        
        if cheese != "NONE"
        {
            burgerCost += 1.00
        }
        
        if topping01 != "NONE"
        {
            burgerCost += 0.75
        }
        
        if topping02 != "NONE"
        {
            burgerCost += 0.75
        }
        
        return burgerCost
    }
    
    func futureMethod3(customer: Int) -> Bool
    {
        return true
    }
    
}  // Burger

enum Toppings:String
{
    case Ketchup = "Ketchup"
    case Mustard = "Mustard"
    case Pickle = "Pickle"
    case Tomato = "Tomato"
    case Onion = "Onion"
    case Salsa = "Salsa"
    case Jalapeno = "Jalapeno"
    case Mushroom = "Mushroom"
    case Bacon = "Bacon"
}

enum Cheeses:String
{
    case American = "American"
    case Swiss = "Swiss"
    case Provolone = "Provolone"
    case Cheddar = "Cheddar"
    case Pepper_Jack = "Pepper Jack"
    case Mozz = "Mozz"
    case NONE = "NONE"
}

func topping(which:Toppings)->String
{
    switch(which)
    {
    case Toppings.Ketchup : return String(Toppings.Ketchup)
    case Toppings.Mustard : return String(Toppings.Mustard)
    case Toppings.Pickle : return String(Toppings.Pickle)
    case Toppings.Tomato : return String(Toppings.Tomato)
    case Toppings.Onion : return String(Toppings.Onion)
    case Toppings.Salsa : return String(Toppings.Salsa)
    case Toppings.Mushroom : return String(Toppings.Mushroom)
    case Toppings.Bacon : return String(Toppings.Bacon)
    case Toppings.Jalapeno : return String(Toppings.Jalapeno)
    }
}

func cheese(which:Cheeses)->String
{
    switch(which)
    {
    case Cheeses.American : return String(Cheeses.American)
    case Cheeses.Swiss : return String(Cheeses.Swiss)
    case Cheeses.Provolone : return String(Cheeses.Provolone)
    case Cheeses.Cheddar : return String(Cheeses.Cheddar)
    case Cheeses.Pepper_Jack : return String(Cheeses.Pepper_Jack)
    case Cheeses.Mozz : return String(Cheeses.Mozz)
    case Cheeses.NONE : return String(Cheeses.NONE)
    }
}


var b1 = Burger(false,"Well Done",cheese(Cheeses.Pepper_Jack),topping(Toppings.Jalapeno), topping(Toppings.Bacon))


b1.displayBurger()

var b2 = Burger(false,"Medium",cheese(Cheeses.Pepper_Jack),topping(Toppings.Jalapeno))

b2.displayBurger()

var b3 = Burger(true,"Medium",cheese(Cheeses.Pepper_Jack))

b3.displayBurger()


var b4 = Burger(false,"Medium Rare")

b4.displayBurger()




