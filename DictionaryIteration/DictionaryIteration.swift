//
//  DictionaryIteration.swift
//  DictionaryIteration
//
//  Created by Jim Campagno on 12/28/16.
//  Copyright © 2016 Jim Campagno. All rights reserved.
//

import Foundation

class DictionaryIteration {
    
    // Replace this comment with your answer to Question #1.
    var bands:[String:String] = [
        "Nirvana" : "Nevermind",
        "Blondie" : "Parallel Lines",
        "The Kinks" : "Low Budget",
        "The Beatles" : "Sgt. Pepper's Lonely Hearts Club Band"
    ]
    
    
    
    // Question #2
    
    func addPixie(){
        bands["Pixie"] = "Doolittle"
    }
    
    
    
    // Question #3
   func removeKinks(){
       bands["The Kinks"] = nil
   }
    
    
    
    // Question #4
    func nirvanaBestSeller() -> String {
        let bandName = "Nirvana"
        let band = bands[bandName] ?? ""
        // remove this return statement and replace it with what should be returned when you complete your implementation.
        return (bandName+"'s top-selling album was " + band + ".")
    }
    
    
    // Question #5
   
    func bestSellers() -> String {
        var  sentence = ""
        bands.forEach{ sentence += ($0+"'s top-selling album was "+$1+".") }
        return sentence
    }
    
    
    
    // Question #6
   func typeOfDataStructure() -> String{
    var type = ""
    for entry in bands.enumerated() {
        type = String(describing: type(of:entry))
        break
    }
    return (type.contains("key") && type.contains("value")) ? "Tuple" : type
   }
    
    
    
    
    // Question #7
   
    func typeOfDataStructureForSchool() -> String{ return "B"}
    
    
    
    // Question #8
 
    func highestGrade(grades: [Int:String])->Int{
        //bands.sorted(by: {(k1:Int,v1: String),(k2:Int,v2:String))-> Bool in return { v2 > v1 }})
        //var vals = bands.mapValues{ val in return val}
        var top = "F"
        var key = -1
        
        for (k,val) in grades{
            if val < top{
                top = val
                key = k
            }
        }
        return key
    }
    
    

}
