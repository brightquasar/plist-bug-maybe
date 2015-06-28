//  DetailViewController.swift
//  FinalProjectVer1
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit

public class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var imageView: UIImageView!          // These 3 outlets are to the storyboard detail view. 

  @IBOutlet weak var cameraMissingAlert: UILabel!  // this is now used to display a gaming message.

  var selectedPerson : Person!  // Will "initialize" this through UITextFieldDelegate protocol??

  public var lastPersonSelectedLastName = ""  // Would need to, at least, persist this one var.

  var imageWhichMatchesSelectedPerson = ""


           // -------------------------------------

  override public func viewDidLoad() {
    super.viewDidLoad()
    imageWhichMatchesSelectedPerson = setupTextFields(1)  // Fun with overloading:]
    switch imageWhichMatchesSelectedPerson {
    case "Woolley":
      let imageOfme = UIImage(named: "me")
      self.imageView.image = imageOfme
      lastPersonSelectedLastName = "Woolley"
    case "Tyson":
      let imageOfTyson = UIImage(named: "NeilTyson")
      self.imageView.image = imageOfTyson
      lastPersonSelectedLastName = "Tyson"
    case "Sagan":
      let imageOfSagan = UIImage(named: "carlSagan")
      self.imageView.image = imageOfSagan
      lastPersonSelectedLastName = "Sagan"
    case "Stenger":
      let imageOfVictorStenger = UIImage(named: "VictorStenger")
      self.imageView.image = imageOfVictorStenger
      lastPersonSelectedLastName = "Stenger"
    case "Schrodinger":
      let imageOfErwinS = UIImage(named: "ErwinS")
      self.imageView.image = imageOfErwinS
    case "Crick":
      let imageOfFransisCrick = UIImage(named: "FransisCrick")
      self.imageView.image = imageOfFransisCrick
    case "Watson":
      let imageOfJamesWatson = UIImage(named: "JamesWatson")
      self.imageView.image = imageOfJamesWatson
    case "Dawkins":
      let imageOfRichardDawkins = UIImage(named: "RichardDawkins")
      self.imageView.image = imageOfRichardDawkins
    case "Feynman":
      let imageOfRichardFeynman = UIImage(named: "RichardFeynman")
      self.imageView.image = imageOfRichardFeynman
    case "Weinberg":
      let imageOfStevenWeinberg = UIImage(named: "StevenWeinberg")
      self.imageView.image = imageOfStevenWeinberg
      // Shows all the above.


// Does not show Asimov. Or, anyone else below, because, for one thing, (I commented them all out in ViewController.swift) ...
// ... because, Xcode was chokeing on something in there. 
    case "Asimov":
      let imageOfAsimov = UIImage(named: "IsaacAsimov")
      self.imageView.image = imageOfAsimov


    case "Dirac":
      let imageOfDirac = UIImage(named: "PaulDirac")
      self.imageView.image = imageOfDirac
    case "Erdos":
      let imageOfErdos = UIImage(named: "PaulErdos")
      self.imageView.image = imageOfErdos
    case "Price (r)":
      let imageOfRobertPrice = UIImage(named: "RobertPrice")
      self.imageView.image = imageOfRobertPrice
    case "Gibson":
      let imageOfStevenGibson = UIImage(named: "StevenGibson")
      self.imageView.image = imageOfStevenGibson
    case "Randi":
      let imageOfRandiTheGreat = UIImage(named: "RandiTheGreat")
      self.imageView.image = imageOfRandiTheGreat
    case "deGrey":
      let imageOfdeGrey = UIImage(named: "AubreyDNJdeGrey")
      self.imageView.image = imageOfdeGrey
    case "Barker":
      let imageOfDanBarker = UIImage(named: "DanBarker")
      self.imageView.image = imageOfDanBarker
    case "Fresco":
      let imageOfJFresco = UIImage(named: "JFresco")
      self.imageView.image = imageOfJFresco
    case "Hitchens":
      let imageOfCHitchens = UIImage(named: "CHitchens")
      self.imageView.image = imageOfCHitchens
    case "Pinker":
      let imageOfStevenPinker = UIImage(named: "StevenPinker")
      self.imageView.image = imageOfStevenPinker
    case "Price":
      let imageOfGRPrice = UIImage(named: "GRPrice")
      self.imageView.image = imageOfGRPrice
    case "Galvon":
      let imageOfDennisGalvon = UIImage(named: "DennisGalvon")
      self.imageView.image = imageOfDennisGalvon
    case "Baxter":
      let imageOfSBaxter = UIImage(named: "SBaxter")
      self.imageView.image = imageOfSBaxter
    case "Couple":
      let imageOfRickLooksHappy = UIImage(named: "RickLooksHappy")
      self.imageView.image = imageOfRickLooksHappy
    case "Heinlein":
      let imageOfRAHeinlein = UIImage(named: "RAHeinlein")
      self.imageView.image = imageOfRAHeinlein
    case "McClure":
      let imageOfMMcClure = UIImage(named: "MMcClure")
      self.imageView.image = imageOfMMcClure
    case "Collins":
      let imageOfFCollins = UIImage(named: "FCollins")
      self.imageView.image = imageOfFCollins
    case "Turing":
      let imageOfAlanTuring = UIImage(named: "AlanTuring")
      self.imageView.image = imageOfAlanTuring
    case "Snow":
      let imageOfAuroraSnow = UIImage(named: "AuroraSnow")
      self.imageView.image = imageOfAuroraSnow
    default:
      break
    }

    self.setupTextFields()

  }


// Some silliness.
  func lastPersonSelectedLastNameMember() {
    var lastPersonSelectedLastName = "Tyson"
    func lastName() -> String {
       return "Tyson"
    }
  }




// Fun with overloading:]
  func setupTextFields(shortVer: Int) -> String {
    self.lastNameTextField.delegate = self
    return self.selectedPerson.lastName
  }

  func setupTextFields() {
    self.firstNameTextField.delegate = self
    self.lastNameTextField.delegate = self
    self.firstNameTextField.tag = 0
    self.lastNameTextField.tag = 1
    //self.firstNameTextField.text = self.selectedPerson.firstName  // I was definately NOT going to use these two, because I
    //self.lastNameTextField.text = self.selectedPerson.lastName   // ... intended to make a guessing game of things. 
  }

  public func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()  // dismiss keyboard

    println("This is the Last LastName textFieldShouldReturn: " + "\(lastPersonSelectedLastName)")
    switch lastPersonSelectedLastName {
    case "Woolley":
      let imageOfme = UIImage(named: "me")
      self.imageView.image = imageOfme
    case "Tyson":
      let imageOfTyson = UIImage(named: "NeilTyson")
      self.imageView.image = imageOfTyson
      lastPersonSelectedLastName = "Tyson"
    case "Sagan":
      let imageOfSagan = UIImage(named: "carlSagan")
      self.imageView.image = imageOfSagan
      lastPersonSelectedLastName = "Sagan"
    case "Stenger":
      let imageOfVictorStenger = UIImage(named: "VictorStenger")
      self.imageView.image = imageOfVictorStenger
    case "Schrodinger":
      let imageOfErwinS = UIImage(named: "ErwinS")
      self.imageView.image = imageOfErwinS
    case "Crick":
      let imageOfFransisCrick = UIImage(named: "FransisCrick")
      self.imageView.image = imageOfFransisCrick
    case "Watson":
      let imageOfJamesWatson = UIImage(named: "JamesWatson")
      self.imageView.image = imageOfJamesWatson
    case "Dawkins":
      let imageOfRichardDawkins = UIImage(named: "RichardDawkins")
      self.imageView.image = imageOfRichardDawkins
    case "Feynman":
      let imageOfRichardFeynman = UIImage(named: "RichardFeynman")
      self.imageView.image = imageOfRichardFeynman
    case "Weinberg":
      let imageOfStevenWeinberg = UIImage(named: "StevenWeinberg")
      self.imageView.image = imageOfStevenWeinberg
    default:
      break
    }

    return false // true or false
  }

  public func textFieldDidEndEditing(textField: UITextField) {  // use more-clear switch to asign per tags
    switch textField.tag {
    case 0:
      self.selectedPerson.firstName = textField.text
    case 1:
      self.selectedPerson.lastName = textField.text
    default:
      break
    }

    println("This is the Last LastName textFieldDidEndEditing: " + "\(lastPersonSelectedLastName)")
    switch lastPersonSelectedLastName {
    case "Woolley":
      let imageOfme = UIImage(named: "me")
      self.imageView.image = imageOfme
    case "Tyson":
      let imageOfTyson = UIImage(named: "NeilTyson")
      self.imageView.image = imageOfTyson
    case "Sagan":  // This should have fixed the bug, at least on Sagan. Per the above var lastPersonSelectedLastName.
      let imageOfSagan = UIImage(named: "carlSagan")
      self.imageView.image = imageOfSagan
    case "Stenger":
      let imageOfVictorStenger = UIImage(named: "VictorStenger")
      self.imageView.image = imageOfVictorStenger
    case "Schrodinger":
      let imageOfErwinS = UIImage(named: "ErwinS")
      self.imageView.image = imageOfErwinS
    case "Crick":
      let imageOfFransisCrick = UIImage(named: "FransisCrick")
      self.imageView.image = imageOfFransisCrick
    case "Watson":
      let imageOfJamesWatson = UIImage(named: "JamesWatson")
      self.imageView.image = imageOfJamesWatson
    case "Dawkins":
      let imageOfRichardDawkins = UIImage(named: "RichardDawkins")
      self.imageView.image = imageOfRichardDawkins
    case "Feynman":
      let imageOfRichardFeynman = UIImage(named: "RichardFeynman")
      self.imageView.image = imageOfRichardFeynman
    case "Weinberg":
      let imageOfStevenWeinberg = UIImage(named: "StevenWeinberg")
      self.imageView.image = imageOfStevenWeinberg
    default:
      break
    }

  }


  @IBAction func photoButtonPressed(sender: AnyObject) {
    let imagePickerController = UIImagePickerController()
    imagePickerController.delegate = self
    imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
    imagePickerController.allowsEditing = true

    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
      self.presentViewController(imagePickerController, animated: true, completion: nil)
    }
/*
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
      self.presentViewController(imagePickerController, animated: true, completion: nil)
    } else {  // Warn the user of the missing camera in both the sim and the really-old-iPod-touch
      self.cameraMissingAlert.text = "No camera found"
    }
*/
  }

  // Added optional binding.
  public func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject: AnyObject]) {
    if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
      self.imageView.image = image
      self.selectedPerson.actualImage = image  // This adds the image from the PhotoLibrary to the selectedPerson: Person!  up top.
      // Thusly setting the stage for saving the aforementioned image to Documents/archive. 
      picker.dismissViewControllerAnimated(true, completion: nil)
    }
  }

}
