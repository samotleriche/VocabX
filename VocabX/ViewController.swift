//
//  ViewController.swift
//  VocabX
//
//  Created by Tomas Leriche on 8/30/18.
//  Copyright © 2018 Tomas Leriche. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let colorPalete : [UIColor] = [UIColor.FlatColor.Gray.Clouds,
                                   UIColor.FlatColor.Yellow.Sunflower,
                                   UIColor.FlatColor.Orange.NeonCarrot,
                                   UIColor.FlatColor.Green.Emerland
                                   ]
    
    let allVocabWords = VocabWord.allVocabWords
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allVocabWords.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VocabWordCell") as! VocabWordTableViewCell
        
        let vocabWord: VocabWord = self.allVocabWords[indexPath.row]
        
    
        let randomColor = colorPalete[Int(arc4random_uniform(UInt32(colorPalete.count)))]
        
        cell.view.backgroundColor = randomColor
    
        
        cell.vocabWordInfo = vocabWord
        
        //let radius = cell.view.frame.height / 2
        let radius = 5
        
        cell.view.layer.cornerRadius = CGFloat(radius)
    
        
        
//        let hue = 1 / CGFloat(allVocabWords.count) * CGFloat(indexPath.row)
//
//        let revHue = 1.truncatingRemainder(dividingBy: (Double)(hue))
//
//        cell.view.backgroundColor = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
        
        
            
//        cell.POSLabel.textColor = UIColor(hue: CGFloat(revHue), saturation: 0.5, brightness: 1, alpha: 1)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detailVC.dataSource = allVocabWords[indexPath.row]
        
        navigationController?.pushViewController(detailVC, animated: true)
        
        
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

