//  ViewController.swift
//  FinalProjectVer1
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit
//import DetailViewController  // I made it all public, but that does not make it a module:(


class ViewController: UIViewController, UITableViewDataSource {
  @IBOutlet weak var tableView: UITableView!
  var people = [Person]()
  var myInfo = [String : Person]()


          // --------------------------------


// I see no reason why the following two functions would not save and retrieve my images. As they do my text.
// ... And yet, re-running the app the second time, after an un-install, leaves my cells sans images.
// Even when I hard-code an image for the Cell in storyboard, so, they must be getting over-written??
// BUT -- the archive gives me no images, EXCEPT THOSE STORED FROM PHOTO ALBUM, those ARE reloaded just fine??

// Firstly, to get any of this to run AT ALL, I was forced to hand-code from scratch my entire People.plist file.
// ====  Xcode bites! ===========================================================================================


  override func viewDidLoad() {
    super.viewDidLoad()
      if let peopleFromArchive = self.loadFromArchive() {
        self.people = peopleFromArchive  // THIS IS THE FAULT, THE ARCHIVE GIVES ME NO IMAGES, EXCEPT THOSE STORED FROM PHOTO ALBUM. 
      } else {
        self.loadPeopleFromPlist()
        self.saveToArchive()
      }
    self.tableView.dataSource = self
  }
// -- end of viewDidLoad()


  func loadPeopleFromPlist() {
    if let peoplePath = NSBundle.mainBundle().pathForResource("People", ofType: "plist"),
      peopleObjects = NSArray(contentsOfFile: peoplePath) as? [[String: String]] {
        // loop through the data from the plist (an array of dictionaries)
        for object in peopleObjects {
          if let firstName = object["FirstName"], lastName = object["LastName"], imageName = object["image"] {
            switch imageName {
            case "me":
              let imageOfme = UIImage(named: "me")
              let person = Person(first: firstName, last: lastName, imageStringName: "me", AnImage: imageOfme!)
              self.people.append(person)
            case "NeilTyson":
              let imageOfHe = UIImage(named: "NeilTyson")
              let person = Person(first: firstName, last: lastName, imageStringName: "NeilTyson", AnImage: imageOfHe!)
              self.people.append(person)
            case "carlSagan":
              let imageOfHe = UIImage(named: "carlSagan")
              let person = Person(first: firstName, last: lastName, imageStringName: "carlSagan", AnImage: imageOfHe!)
              self.people.append(person)
            case "VictorStenger":
              let imageOfHe = UIImage(named: "VictorStenger")
              let person = Person(first: firstName, last: lastName, imageStringName: "VictorStenger", AnImage: imageOfHe!)
              self.people.append(person)
            case "ErwinS":
              let imageOfHe = UIImage(named: "ErwinS")
              let person = Person(first: firstName, last: lastName, imageStringName: "ErwinS", AnImage: imageOfHe!)
              self.people.append(person)
            case "FransisCrick":
              let imageOfHe = UIImage(named: "FransisCrick")
              let person = Person(first: firstName, last: lastName, imageStringName: "FransisCrick", AnImage: imageOfHe!)
              self.people.append(person)
            case "JamesWatson":
              let imageOfHe = UIImage(named: "JamesWatson")
              let person = Person(first: firstName, last: lastName, imageStringName: "JamesWatson", AnImage: imageOfHe!)
              self.people.append(person)
            case "RichardDawkins":
              let imageOfHe = UIImage(named: "RichardDawkins")
              let person = Person(first: firstName, last: lastName, imageStringName: "RichardDawkins", AnImage: imageOfHe!)
              self.people.append(person)
            case "RichardFeynman":
              let imageOfHe = UIImage(named: "RichardFeynman")
              let person = Person(first: firstName, last: lastName, imageStringName: "RichardFeynman", AnImage: imageOfHe!)
              self.people.append(person)
            case "StevenWeinberg":
              let imageOfHe = UIImage(named: "StevenWeinberg")
              let person = Person(first: firstName, last: lastName, imageStringName: "StevenWeinberg", AnImage: imageOfHe!)
              self.people.append(person)


/*          Xcode chokes on some thing in the block below.

            case "IsaacAsimov":
              let imageOfHe = UIImage(named: "IsaacAsimov")
              let person = Person(first: firstName, last: lastName, imageStringName: "IsaacAsimov", AnImage: imageOfHe!)
              self.people.append(person)
            case "PaulDirac":
              let imageOfHe = UIImage(named: "PaulDirac")
              let person = Person(first: firstName, last: lastName, imageStringName: "PaulDirac", AnImage: imageOfHe!)
              self.people.append(person)
            case "PaulErdos":
              let imageOfHe = UIImage(named: "PaulErdos")
              let person = Person(first: firstName, last: lastName, imageStringName: "PaulErdos", AnImage: imageOfHe!)
              self.people.append(person)
            case "RobertPrice":
              let imageOfHe = UIImage(named: "RobertPrice")
              let person = Person(first: firstName, last: lastName, imageStringName: "RobertPrice", AnImage: imageOfHe!)
              self.people.append(person)
            case "StevenGibson":
              let imageOfHe = UIImage(named: "StevenGibson")
              let person = Person(first: firstName, last: lastName, imageStringName: "StevenGibson", AnImage: imageOfHe!)
              self.people.append(person)
            case "RandiTheGreat":
              let imageOfHe = UIImage(named: "RandiTheGreat")
              let person = Person(first: firstName, last: lastName, imageStringName: "RandiTheGreat", AnImage: imageOfHe!)
              self.people.append(person)
            case "AubreyDNJdeGrey":
              let imageOfHe = UIImage(named: "AubreyDNJdeGrey")
              let person = Person(first: firstName, last: lastName, imageStringName: "AubreyDNJdeGrey", AnImage: imageOfHe!)
              self.people.append(person)
            case "DanBarker":
              let imageOfHe = UIImage(named: "DanBarker")
              let person = Person(first: firstName, last: lastName, imageStringName: "DanBarker", AnImage: imageOfHe!)
              self.people.append(person)
            case "JFresco":
              let imageOfHe = UIImage(named: "JFresco")
              let person = Person(first: firstName, last: lastName, imageStringName: "JFresco", AnImage: imageOfHe!)
              self.people.append(person)
            case "CHitchens":
              let imageOfHe = UIImage(named: "CHitchens")
              let person = Person(first: firstName, last: lastName, imageStringName: "CHitchens", AnImage: imageOfHe!)
              self.people.append(person)
            case "StevenPinker":
              let imageOfHe = UIImage(named: "StevenPinker")
              let person = Person(first: firstName, last: lastName, imageStringName: "StevenPinker", AnImage: imageOfHe!)
              self.people.append(person)
            case "GRPrice":
              let imageOfHe = UIImage(named: "GRPrice")
              let person = Person(first: firstName, last: lastName, imageStringName: "GRPrice", AnImage: imageOfHe!)
              self.people.append(person)
            case "DennisGalvon":
              let imageOfHe = UIImage(named: "DennisGalvon")
              let person = Person(first: firstName, last: lastName, imageStringName: "DennisGalvon", AnImage: imageOfHe!)
              self.people.append(person)
            case "SBaxter":
              let imageOfHe = UIImage(named: "SBaxter")
              let person = Person(first: firstName, last: lastName, imageStringName: "SBaxter", AnImage: imageOfHe!)
              self.people.append(person)
            case "RickLooksHappy":
              let imageOfHe = UIImage(named: "RickLooksHappy")
              let person = Person(first: firstName, last: lastName, imageStringName: "RickLooksHappy", AnImage: imageOfHe!)
              self.people.append(person)
            case "RAHeinlein":
              let imageOfHe = UIImage(named: "RAHeinlein")
              let person = Person(first: firstName, last: lastName, imageStringName: "RAHeinlein", AnImage: imageOfHe!)
              self.people.append(person)
            case "MMcClure":
              let imageOfHe = UIImage(named: "MMcClure")
              let person = Person(first: firstName, last: lastName, imageStringName: "MMcClure", AnImage: imageOfHe!)
              self.people.append(person)
            case "FCollins":
              let imageOfHe = UIImage(named: "FCollins")
              let person = Person(first: firstName, last: lastName, imageStringName: "FCollins", AnImage: imageOfHe!)
              self.people.append(person)
            case "AlanTuring":
              let imageOfHe = UIImage(named: "AlanTuring")
              let person = Person(first: firstName, last: lastName, imageStringName: "AlanTuring", AnImage: imageOfHe!)
              self.people.append(person)
            case "AuroraSnow":
              let imageOfHe = UIImage(named: "AuroraSnow")
              let person = Person(first: firstName, last: lastName, imageStringName: "AuroraSnow", AnImage: imageOfHe!)
              self.people.append(person)
*/
            default:
              break
            } // switch
          } // if let
        } // for in loop
    } // if let
  } // func



  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.saveToArchive()
    self.tableView.reloadData()
    // Same-old short-version, finds datasource above via tableView protocol
    // ... I have yet to get the longer more efficient version to work.
    // Mignt THAT version successfully load my images ??????????????????????
    // ... those images which simply MUST be getting archived.
  }


  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.people.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PersonCell
    cell.backgroundColor = UIColor.whiteColor()  // 1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1-1
    cell.personImageView.layer.cornerRadius = 15
    cell.personImageView.layer.masksToBounds = true;
    cell.personImageView.layer.borderWidth = 2
    cell.personImageView.layer.borderColor = UIColor.blueColor().CGColor

    let personToDisplay = self.people[indexPath.row]
    /*
    // With optional binding (will add it back in -- if/when I decide to make immage an optionl in Person.swift)
    /*if*/ let image = personToDisplay.image //{
    cell.personImageView.image = image           // Set the image on the cell ************* HERE IS MY (potential) A.H.
    // One could do the same in one line of code (if we are playing hard-ball, as we are, in this version) e.g. :
    */  // Sans optional binding, and, on one line; 'cause that's how I roll.

    cell.personImageView.image = personToDisplay.actualImage!

    // The following line causes a crash. 
    //self.selectedPerson.actualImage = personToDisplay.actualImage!  // This adds the image from the PhotoLibrary to the selectedPerson: Person!

    cell.firstNameLabel.text = personToDisplay.firstName   // Set the names on the cell.
    cell.lastNameLabel.text = personToDisplay.lastName    // These "always" work.

    let userDefaults = NSUserDefaults.standardUserDefaults()  // "continued" below, userDefaults.objectForKey("LastSelected") ...

    cell.backgroundColor = UIColor.whiteColor() // --- re-set whiteColor -------------------------------------
    if let lastSelectedName = userDefaults.objectForKey("LastSelected") as? String where lastSelectedName == personToDisplay.lastName
    {
      cell.backgroundColor = UIColor.lightGrayColor() // -- lightGrayColor -- HAD A FUNNY MINOR BUG -------------------- fixed ^^^^^^
    }
    return cell
  }

/*
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowDetailViewController" {
      if let detailViewController = segue.destinationViewController as? DetailViewController,
         let myIndexPath = self.tableView.indexPathForSelectedRow(),
         let indexPath = self.tableView.indexPathForSelectedRow()
      {
         let selectedRow = indexPath.row
         let selectedPerson = self.people[selectedRow]
           //println(selectedPerson.firstName)
         detailViewController.selectedPerson = selectedPerson
         let userDefaults = NSUserDefaults.standardUserDefaults()
         userDefaults.setObject(selectedPerson.lastName, forKey: "LastSelected")  // BUG FIX, firstName not unique in my plist.
         userDefaults.synchronize()
      }
    }
  }
*/

//  Sample code: (this seems to be a mess of illogically nested ... stuff, 3 in all), the above seems to be a better construct.
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowDetailViewController" {
      if let detailViewController = segue.destinationViewController as? DetailViewController {
                                                                                               // #1 ---vvvvvvvvvvvvvv
        let myIndexPath = self.tableView.indexPathForSelectedRow()   // would be #2 (but is not itself conditioinal)
          if let indexPath = self.tableView.indexPathForSelectedRow() {
                                                                     // #3 is meaningless, as it is nested.
            let selectedRow = indexPath.row
            let selectedPerson = self.people[selectedRow]
              //println(selectedPerson.firstName)
            detailViewController.selectedPerson = selectedPerson
            let userDefaults = NSUserDefaults.standardUserDefaults()
            userDefaults.setObject(selectedPerson.lastName, forKey: "LastSelected")
            userDefaults.synchronize()
            // detailViewController.setupTextFields()  // From a previous version??
            
          }
      }
    }
/* But then who am I to judge, consider the following attempt:

    // From DetailViewController.swift

    func lastPersonSelectedLastNameMember() {
    var lastPersonSelectedLastName = "Tyson"
    func lastName() -> String {
    return "Tyson"
    }
    }

    // Then, in here we do:
    if DetailViewController.lastPersonSelectedLastNameMember.lastName == "Tyson" {

    }
    // But Xcode says no, and is presumed to be right, this time.
*/
    

  }


  func saveToArchive() {
    if let archivePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last as? String {
        println(archivePath)
      NSKeyedArchiver.archiveRootObject(self.people, toFile: archivePath + "/archive")
    }
  }

// Brad's demo code: (contains a nested if let in the following func)
  func loadFromArchive() -> [Person]? {
    if let archivePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last as? String {
      if let peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(archivePath + "/archive") as? [Person] {
        return peopleFromArchive
      }
    }
    return nil
  }

  // The following (seems to be) a better construct. (by virtue of the use of chained optional bindings)
/*
  func loadFromArchive() -> [Person]? {
    if let archivePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last as? String, peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(archivePath + "/archive") as? [Person]
    {
      return peopleFromArchive
    }
    return nil
  }
*/

}
