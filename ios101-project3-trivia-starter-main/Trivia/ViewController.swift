//
//  ViewController.swift
//  Trivia
//
//  Created by Smyan Jaipuriyar on 10/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    
    @IBOutlet weak var resetGame: UIButton!
    
    private var stackQuestions = [questions]()
    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stackQuestions = allQs()
        config(with: stackQuestions[index])
        // Do any additional setup after loading the view.
        
    }
    private func allQs() -> [questions]{
        let q1 = questions(question: "Which animal is the mascot for hufflepuff house (Harry Potter)?", option1: "Badger", option2: "Charizard", option3: "Dog", option4: "Cat")
        let q2 = questions(question: "Who was the first woman to fly across the atlantic solo?", option1: "Captain America", option2: "Goku", option3: "Amelia Earhart", option4: "Lebron James")
        let q3 = questions(question: "Which country is Tasmania apart of?", option1: "United States", option2: "Australia", option3: "China", option4: "India")
        let q4 = questions(question: "What is steph curry's real first name", option1: "Wardell", option2: "James", option3: "Stephen", option4: "Tony")
        return [q1, q2, q3, q4]
    }
    private func config(with question: questions){
        questionLabel.text = question.question
        option1.setTitle(question.option1, for: .normal)
        option2.setTitle(question.option2, for: .normal)
        option3.setTitle(question.option3, for: .normal)
        option4.setTitle(question.option4, for: .normal)
        
    }
    
    @IBAction func selectionOpt1(_ sender: Any) {
        if(index < 3){
            index = index+1
            config(with: stackQuestions[index])
        }
    }
    @IBAction func selectionOpt2(_ sender: Any) {
        if(index < 3){
            index = index+1
            config(with: stackQuestions[index])
        }
    }
    @IBAction func selectionOpt3(_ sender: Any) {
        if(index < 3){
            index = index+1
            config(with: stackQuestions[index])
        }
    }
    @IBAction func selectionOpt4(_ sender: Any) {
        if(index < 3){
            index = index+1
            config(with: stackQuestions[index])
        }
    }
    
    @IBAction func resetG(_ sender: Any) {
        if(index != 0){
            index = 0
            config(with: stackQuestions[index])
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
