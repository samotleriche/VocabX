//
//  DetailViewController.swift
//  VocabX
//
//  Created by Tomas Leriche on 9/1/18.
//  Copyright © 2018 Tomas Leriche. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var buttonCard: UIButton!
    
    var isOpen = false
    
    var detailText : String?
    
    var dataSource : VocabWord?
    
    @IBAction func flipCard(_ sender: Any) {
        flipCard()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailView.bringSubview(toFront: buttonCard)
        
        mainLabel.text = dataSource?.name
        subLabel.text = dataSource?.definition
        
        //let radius = cell.view.frame.height / 2
        
        detailView.layer.cornerRadius = 5
        detailView.backgroundColor = UIColor.FlatColor.Blue.Denim
        
        mainLabel.textColor = UIColor.FlatColor.Gray.WhiteSmoke
        subLabel.textColor = UIColor.FlatColor.Gray.WhiteSmoke
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

    func flipCard() {
        print("button pressed")
        if isOpen {
            isOpen = false
            
            UIView.transition(with: detailView, duration: 0.4, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else{
            isOpen = true
            
            UIView.transition(with: detailView, duration: 0.4, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        
    }
    
}
