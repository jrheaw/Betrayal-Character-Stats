//
//  CharacterDetailViewController.swift
//  Betrayal Character Stats
//
//  Created by Jacob Wittenauer on 2/11/15.
//  Copyright (c) 2015 Jacob Wittenauer. All rights reserved.
//

import UIKit

class CharacterDetailViewController : UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    var characterCard: CharacterCard?
    var characterCardArray: [CharacterCard]?
    var selectedCharacter: Character?
    
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterInfo: UILabel!
    
    @IBOutlet weak var mightPicker: UIPickerView!
    @IBOutlet weak var speedPicker: UIPickerView!
    @IBOutlet weak var sanityPicker: UIPickerView!
    @IBOutlet weak var knowledgePicker: UIPickerView!
    
 //   @IBOutlet weak var changeCharacterButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        selectedCharacter = characterCard!.getSelectedCharacter()
        setUpCharaterStats()
        self.view.backgroundColor = characterCard?.backgroundColor
    }
    
    func setUpPickerView(pickerView: UIPickerView, _ forStat: CharacterStat) {
        pickerView.dataSource = self
        pickerView.delegate = self
        var rotate = CGAffineTransformMakeRotation(-3.14/2)
        rotate = CGAffineTransformScale(rotate, 0.25, 2.0)
        pickerView.transform = rotate
        pickerView.showsSelectionIndicator = false
        pickerView.selectRow(forStat.getCurrentIndex() + 1, inComponent: 0, animated: false)
    }
    
    func setUpCharaterStats() {
        setUpPickerView(mightPicker, selectedCharacter!.might)
        setUpPickerView(speedPicker, selectedCharacter!.speed)
        setUpPickerView(sanityPicker, selectedCharacter!.sanity)
        setUpPickerView(knowledgePicker, selectedCharacter!.knowledge)
        characterImageView.image = selectedCharacter?.icon
        characterImageView.contentMode = UIViewContentMode.ScaleAspectFit
        characterName.text = selectedCharacter!.name
        characterInfo.text = selectedCharacter!.info
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchCharacter(sender: AnyObject) {
        characterCard?.flipCard()
        selectedCharacter = characterCard!.getSelectedCharacter()
        setUpCharaterStats()
        UIView.transitionWithView(self.view, duration: 0.7, options: UIViewAnimationOptions.TransitionFlipFromLeft, animations: {}, completion:nil)
    }
    
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    
    /*
        Returns the number of components, or columns, in the picker view
    */
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    /*
        Returns how many rows are in the picker views. Each character has 8 stat values
        and we add one for the skull
    */
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 9
    }
    
    /*
        Sets the value of a current stat index when it is selected in its corresponding
        picker
    */
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch(pickerView) {
        case mightPicker:
            selectedCharacter!.might.currentValueIndex = row - 1
        case speedPicker:
            selectedCharacter!.speed.currentValueIndex = row - 1
        case sanityPicker:
            selectedCharacter!.sanity.currentValueIndex = row - 1
        case knowledgePicker:
            selectedCharacter!.knowledge.currentValueIndex = row - 1
        default:
            return
        }
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 30
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 0
    }
    
    /*
        Returns the label for the given rown in the picker. The label needs to be turned 90
        degrees like the picker is. We add a skull for 0 stat value at the beginning

    */
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        // Get the value of the label from the char stat array, or skull if the row is 0
        var labelText: String
        if(row == 0) {
            labelText = "💀"
        } else {
            switch(pickerView) {
            case mightPicker:
                let value = selectedCharacter!.might.valuesArray[row - 1] as? Int
                labelText = String(value!)
            case speedPicker:
                let value = selectedCharacter!.speed.valuesArray[row - 1] as? Int
                labelText = String(value!)
            case sanityPicker:
                let value = selectedCharacter!.sanity.valuesArray[row - 1] as? Int
                labelText = String(value!)
            case knowledgePicker:
                let value = selectedCharacter!.knowledge.valuesArray[row - 1] as? Int
                labelText = String(value!)
            default:
                labelText = ""
            }
            
        }
        
        // Transform the label 90 degrees
        var rect = CGRectMake(0, 0, 60, 50);
        var label = UILabel(frame: rect)
        var rotate = CGAffineTransformMakeRotation(3.14/2);
        rotate = CGAffineTransformScale(rotate, 0.25, 2);
        label.transform = rotate
        
        // Set other label attributes
        label.text = labelText
        label.font = UIFont.systemFontOfSize(64)
        label.textAlignment = .Center
        label.textColor = UIColor.whiteColor()
        //label.numberOfLines = 2
        //label.lineBreakMode = UILineBreakModeWordWrap;
        label.backgroundColor = UIColor.clearColor()
        label.clipsToBounds = true
        return label
    }

}
