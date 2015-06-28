//  Person.swift
//  FinalProjectVer1
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit




// I am going to try forced unwrapping of everything Xcode will let me. As noted bolow. 
// ====================================================================================




class Person: NSObject, NSCoding  {
  var firstName: String
  var lastName: String
  var imageName: String
  var actualImage: UIImage!  // Going hard-core, because we have to try different things, ? was not working.
    
                                                                             // Here.
  init (first: String, last: String, imageStringName: String, AnImage: UIImage!) {
    self.firstName = first
    self.lastName = last
    self.imageName = imageStringName
    self.actualImage = AnImage!                                                 // Here.
  }

  required init(coder aDecoder: NSCoder) {
    self.firstName = aDecoder.decodeObjectForKey("firstName") as!String
    self.lastName = aDecoder.decodeObjectForKey("lastName") as! String
    self.imageName = aDecoder.decodeObjectForKey("imageName") as! String
    self.actualImage = aDecoder.decodeObjectForKey("actualImage") as! UIImage!   // Here.
  }

  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(self.firstName, forKey: "firstName")
    aCoder.encodeObject(self.lastName, forKey: "lastName")
    aCoder.encodeObject(self.imageName, forKey: "imageName")
    aCoder.encodeObject(self.actualImage!, forKey: "actualImage")                 // Here.
  }

}
