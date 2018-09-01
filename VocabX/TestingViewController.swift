//
//  TestingViewController.swift
//  VocabX
//
//  Created by Tomas Leriche on 9/1/18.
//  Copyright © 2018 Tomas Leriche. All rights reserved.
//

import UIKit


class TestingViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
 
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    
    @IBOutlet weak var stackView1: UIStackView!
    
    @IBOutlet weak var nextQ: UIButton!
    
    
    let allVocabWords = VocabWord.allVocabWords
    
    
    @IBAction func nextQuestion(_ sender: Any) {
        loadUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadUI()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func randomWord() -> VocabWord {
        let randomNum = Int(arc4random_uniform(UInt32(allVocabWords.count)))
        let randomWord = allVocabWords[randomNum]
        
        return randomWord
    }
    
    func loadUI() {
        label1.text = randomWord().definition
        button1.setTitle(randomWord().name, for: .normal)
        button2.setTitle(randomWord().name, for: .normal)
        button3.setTitle(randomWord().name, for: .normal)
        button4.setTitle(randomWord().name, for: .normal)
        button5.setTitle(randomWord().name, for: .normal)
    }
  
}
