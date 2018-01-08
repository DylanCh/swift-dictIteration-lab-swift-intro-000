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
      
        // remove this return statement and replace it with what should be returned when you complete your implementation.
        return String(format:"%@'s top-selling album was %@",bandName,bands[bandName])
    }
    
    
    // Question #5
   
    func bestSellers() -> String {
        var  sentence = ""
        bands.forEach{ sentence += (String(format:"%@'s top-selling album was %@\n",$0,$1) }
        return sentence
    }
    
    
    
    // Question #6
   func typeOfDataStructure() -> String{
       for (key,val) in bands {
           return type(of: val)
       }
   }
    
    
    
    
    // Question #7
   
    func typeOfDataStructureForSchool() -> String{
        // let arr = ["A","B","C","D"]
        // return arr[Int(arc4random_uniform(UInt32(arr.count)))]
    }
    
    
    
    // Question #8
 
    
    
    

}
