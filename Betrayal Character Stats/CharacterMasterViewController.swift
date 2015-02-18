//
//  ViewController.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import UIKit

class CharacterMasterViewController: UIViewController {

    var characterImageViewArray: [UIImageView] = []
    
    @IBOutlet weak var jockImageView: UIImageView!
    @IBOutlet weak var finalGirlImageView: UIImageView!
    @IBOutlet weak var professorImageView: UIImageView!
    @IBOutlet weak var fortuneTellerImageView: UIImageView!
    @IBOutlet weak var littleGirlImageView: UIImageView!
    @IBOutlet weak var curiousBoyImageView: UIImageView!
    
    var characterCardArray: [CharacterCard] = []
    
    override func viewDidLoad() {
        println("view did load")
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
        
        for index in 0..<characterImageViewArray.count {
            let characterCard = CharacterCard(index: index)
            characterCardArray.append(characterCard)
            let characterImageView = characterImageViewArray[index]
            characterImageView.image = characterCard.getSelectedCharacter()?.icon
            characterImageView.backgroundColor = characterCard.backgroundColor
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showCharacterDetails" {
            let characterImageView = sender!.view as UIImageView
            if let index = find(characterImageViewArray, characterImageView) {
                let characterDetailController = segue.destinationViewController as CharacterDetailViewController
                characterDetailController.characterCard = characterCardArray[index]
                characterDetailController.characterCardArray = characterCardArray
            }
        }
    }

    @IBAction func characterSelected(sender: AnyObject) {
         performSegueWithIdentifier("showCharacterDetails", sender: sender)
    }
    
    @IBAction func resetCharacters(sender: AnyObject) {
        var refreshAlert = UIAlertController(title: "Reset Characters", message: "All current stats will be lost.", preferredStyle: UIAlertControllerStyle.Alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            self.characterCardArray.removeAll()
            for index in 0..<self.characterImageViewArray.count {
                let characterCard = CharacterCard(index: index)
                self.characterCardArray.append(characterCard)
            }
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
            //CANCEL reset action
        }))
        
        presentViewController(refreshAlert, animated: true, completion: nil)

    }

}

