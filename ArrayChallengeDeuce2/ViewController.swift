//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    // Create your methods here
    func addNameToDeliLine (name:String) ->String{
        switch (name) {
        case "Billy Crystal" :
            deliLine.insert(name, atIndex : 0)
        case "Meg Ryan" :
            deliLine.insert(name, atIndex : 0)
        default :
            deliLine.append(name)
        }
        switch (name){
        case "Billy Crystal" :
            return"Welcome Billy! You can sit wherever you like."
        case "Meg Ryan" :
            return"Welcome Meg! You can sit wherever you like."
        case deliLine[0]:
            return"Welcome \(name), you're first in line!"
        default :
            return"Welcome \(name), you're number \(deliLine.count) in line."
            
        }
    }
    func nowServing() ->String{
        let serving : String
        if deliLine.isEmpty {
            return"There is no one to be served."
        }else {
            
            serving = "Now serving \(deliLine[0])!"
            deliLine.removeAtIndex(0)
            
        }
        return serving
    }
    func deliLineDescription() ->String{
        if deliLine.isEmpty {
            return"The line is currently empty."
        }else {
            var sentence = "The line is:\n"
            for (index ,customer) in deliLine.enumerate() {
                sentence += "\(index+1). \(customer)\n"
            }
            sentence.removeAtIndex(sentence.endIndex.predecessor())
            return sentence
        }
        
    }

}

