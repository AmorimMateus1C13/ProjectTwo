//
//  ViewController.swift
//  ProjectTwo
//
//  Created by Mateus Amorim on 06/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    var projectView = ProjectView()
    var score = 0
    var correctFLag = 0
    var limitQuestion = 0
    let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        projectView.delegate = self
        addInViewController()
        makeContrants()
        askQuestion()
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    
    func addInViewController() {
        view.addSubview(projectView)
    }

    func makeContrants() {
        projectView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        projectView.array.shuffle()
        correctFLag = Int.random(in: 0...2)
        title = "What is the flag of \(projectView.array[correctFLag].uppercased())       Score: \(score)"
        
        changeFlagInButton()
    }
    
    func changeFlagInButton() {
        projectView.flagOne.setImage(UIImage(named: projectView.array[0]), for: .normal)
        projectView.flagTwo.setImage(UIImage(named: projectView.array[1]), for: .normal)
        projectView.flagThree.setImage(UIImage(named: projectView.array[2]), for: .normal)
    }
    
    func finishedGameByLimited () {
        limitQuestion += 1
        if limitQuestion == 10 {
            let end = UIAlertController(title: "End", message: "Total score is \(score)", preferredStyle: .alert)
            
            end.addAction(UIAlertAction(title: "Play Again", style: .default, handler: askQuestion))
            
            present(end, animated: true)
            limitQuestion = 0
        } else {
            let ac = UIAlertController(title: title, message: "Your score is \(score)!", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
        }
    }
}

extension ViewController: ButtonProtocol {
    func scoreWhenButtonIsPressed(_ sender: UIButton) {
        lazy var flagName = projectView.array[sender.tag]
        if sender.tag == correctFLag {
            title = "Correct!"
            score += 1
        } else {
            title = "Wrong!!! \n This is \(flagName.capitalized) flag."
            score -= 1
            if score < 0 {
                score = 0
            }
        }
        finishedGameByLimited()
    }
}
