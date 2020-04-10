//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBAction func choiceMade(_ sender: UIButton) {
        updateUI(userChoice: sender.tag)
        print(sender.tag)
    }
    let storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStory(story: 0)
    }
    func updateStory(story: Int) {
        let storyLabels = storyBrain.nextStory(numberStory: story)
        storyLabel.text = storyLabels[0]
        choice1Button.setTitle("\(storyLabels[1])", for: .normal)
        choice2Button.setTitle(storyLabels[2], for: .normal)
    }
    func updateUI(userChoice: Int) {
        if storyLabel.text == storyBrain.stories[0].title {
            if userChoice == 0 {
                updateStory(story: 2)
            } else if userChoice == 1 {
                updateStory(story: 1)
            }
        } else if storyLabel.text == storyBrain.stories[1].title {
            if userChoice == 0 {
                updateStory(story: 2)
            } else if userChoice == 1 {
                updateStory(story: 3)
            }
        } else if storyLabel.text == storyBrain.stories[2].title {
            if userChoice == 0 {
                updateStory(story: 5)
            } else if userChoice == 1 {
                updateStory(story: 4)
            }
        } else if storyLabel.text == storyBrain.stories[3].title || storyLabel.text == storyBrain.stories[4].title || storyLabel.text == storyBrain.stories[5].title {
            if userChoice == 0 || userChoice == 1 {
                updateStory(story: 0)
            }
        }
    }
}

