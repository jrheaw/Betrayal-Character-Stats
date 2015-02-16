//
//  CharacterDetailViewController.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import UIKit

class CharacterDetailViewController : UIViewController {
    
    var characterCard: CharacterCard?
    var characterCardArray: [CharacterCard]?
    var selectedChracter: Character?
    
    @IBOutlet weak var mightBar: UISegmentedControl!
    @IBOutlet weak var mightStepper: UIStepper!
    @IBOutlet weak var sanityBar: UISegmentedControl!
    @IBOutlet weak var sanityStepper: UIStepper!
    @IBOutlet weak var knowledgeBar: UISegmentedControl!
    @IBOutlet weak var knowledgeStepper: UIStepper!
    @IBOutlet weak var speedBar: UISegmentedControl!
    @IBOutlet weak var speedStepper: UIStepper!
    
    @IBOutlet weak var characterName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        selectedChracter = characterCard!.getSelectedCharacter()
        setUpCharaterStats()
//        if let mightValues: [Int] = characterCard?.sideA?.might?.valuesArray as? [Int] {
//            for var index = 0; index < mightValues.count; index++ {
//                let title = mightValues[index]
//                mightBar.setTitle(String(title), forSegmentAtIndex:index)
//                if(index == characterCard?.sideA?.might?.getCurrentIndex()) {
//                    mightBar.selectedSegmentIndex = index
//                }
//                println("\(mightValues[index]) \(index)")
//            }
//        }
       
    }
    
    func setUpCharaterStats() {
        setSegmentTitlesAndSelection(selectedChracter!.might, segment: mightBar, stepper: mightStepper)
        setSegmentTitlesAndSelection(selectedChracter!.speed, segment: speedBar, stepper: speedStepper)
        setSegmentTitlesAndSelection(selectedChracter!.sanity, segment: sanityBar, stepper: sanityStepper)
        setSegmentTitlesAndSelection(selectedChracter!.knowledge, segment: knowledgeBar, stepper: knowledgeStepper)
        characterName.text = selectedChracter!.name
    }
    
    func setSegmentTitlesAndSelection(stat: CharacterStat, segment: UISegmentedControl, stepper: UIStepper) {
        stepper.maximumValue = 0
        stepper.maximumValue = 7
        segment.userInteractionEnabled = false
        if let values: [Int] = stat.valuesArray as? [Int] {
            for var index = 0; index < values.count; index++ {
                let title = values[index]
                segment.setTitle(String(title), forSegmentAtIndex:index)
                if(index == stat.getCurrentIndex()) {
                    segment.selectedSegmentIndex = index
                    stepper.value = Double(index)
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeStat(sender: UIStepper) {
        if(sender === mightStepper) {
            mightBar.selectedSegmentIndex = Int(sender.value)
            selectedChracter!.might.currentValueIndex = Int(sender.value)
        } else if (sender === sanityStepper) {
            sanityBar.selectedSegmentIndex = Int(sender.value)
            selectedChracter!.sanity.currentValueIndex = Int(sender.value)
        } else if (sender === speedStepper) {
            speedBar.selectedSegmentIndex = Int(sender.value)
            selectedChracter!.speed.currentValueIndex = Int(sender.value)
        } else if (sender === knowledgeStepper) {
            knowledgeBar.selectedSegmentIndex = Int(sender.value)
            selectedChracter!.knowledge.currentValueIndex = Int(sender.value)
        }
        
    }
    
    @IBAction func switchCharacter(sender: AnyObject) {
        characterCard?.flipCard()
        selectedChracter = characterCard!.getSelectedCharacter()
        setUpCharaterStats()
        UIView.transitionWithView(self.view, duration: 0.7, options: UIViewAnimationOptions.TransitionFlipFromLeft, animations: {}, completion:nil)
    }

}
