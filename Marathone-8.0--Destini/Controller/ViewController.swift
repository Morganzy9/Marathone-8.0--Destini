//
//  ViewController.swift
//  Marathone-8.0--Destini
//
//  Created by Ислам Пулатов on 8/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
     
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        updateUI()
        
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        guard let userAnswer = sender.currentTitle else { return }
        
        storyBrain.nextStory(userAnswer)
        
        updateUI()
        
    }

    
    func updateUI() {
        
        storyLabel.text = storyBrain.getStoryTitle()
        
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
        
    }

}

