//
//  ViewController.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import UIKit

class CharacterMasterViewController: UIViewController, UIAlertViewDelegate {

    var characterImageViewArray: [UIImageView] = []
    
    @IBOutlet weak var jockImageView: UIImageView!
    @IBOutlet weak var finalGirlImageView: UIImageView!
    @IBOutlet weak var professorImageView: UIImageView!
    @IBOutlet weak var fortuneTellerImageView: UIImageView!
    @IBOutlet weak var littleGirlImageView: UIImageView!
    @IBOutlet weak var curiousBoyImageView: UIImageView!
    
    var characterCardArray: [CharacterCard] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        characterImageViewArray += [
            jockImageView,
            finalGirlImageView,
            professorImageView,
            fortuneTellerImageView,
            littleGirlImageView,
            curiousBoyImageView
        ]
        
        // Set background color and image of character select image views
        for index in 0..<characterImageViewArray.count {
            let characterCard = CharacterCard(index: index)
            characterCardArray.append(characterCard)
            let characterImageView = characterImageViewArray[index]
            characterImageView.image = characterCard.icon
            characterImageView.backgroundColor = characterCard.backgroundColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showCharacterDetails" {
            let characterImageView = sender?.view as! UIImageView
            if let index = characterImageViewArray.indexOf(characterImageView) {
                let characterDetailController = segue.destinationViewController as! CharacterDetailViewController
                characterDetailController.characterCard = characterCardArray[index]
            }
        }
    }

    @IBAction func characterSelected(sender: AnyObject) {
         performSegueWithIdentifier("showCharacterDetails", sender: sender)
    }
    
    @IBAction func resetCharacters(sender: AnyObject) {
         if #available(iOS 8.0, *) {
            let refreshAlert = UIAlertController(title: "Reset Characters", message: "All current stats will be lost.", preferredStyle: UIAlertControllerStyle.Alert)
            refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { [unowned self] (action: UIAlertAction) in
                self.reset()
            }))
            
            refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction) in
                //CANCEL reset action
            }))
            
            presentViewController(refreshAlert, animated: true, completion: nil)
        } else {
            //support ios7
            let alert = UIAlertView()
            alert.title = "Reset Characters"
            alert.message = "All current stats will be lost."
            alert.addButtonWithTitle("Ok")
            alert.addButtonWithTitle("Canceasdfl")
            alert.delegate = self
            alert.show()
        }

    }
    
    func alertView(View: UIAlertView, clickedButtonAtIndex buttonIndex: Int){
        switch buttonIndex{
        case 0:
            reset()
            break;
        default:
            break;
        }
    }
    
    func reset() {
        //remove all NSUserDefaults
        if let appDomain = NSBundle.mainBundle().bundleIdentifier {
            NSUserDefaults.standardUserDefaults().removePersistentDomainForName(appDomain)
        }
        self.characterCardArray.removeAll()
        for index in 0..<self.characterImageViewArray.count {
            let characterCard = CharacterCard(index: index)
            self.characterCardArray.append(characterCard)
        }
    }

}

