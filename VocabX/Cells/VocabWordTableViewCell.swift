//
//  VocabWordTableViewCell.swift
//  VocabX
//
//  Created by Tomas Leriche on 8/30/18.
//  Copyright © 2018 Tomas Leriche. All rights reserved.
//

import UIKit


class VocabWordTableViewCell: UITableViewCell {

    @IBOutlet weak var POSLabel: UILabel!
    
    @IBOutlet weak var vocabWordNameLabel: UILabel!
    
    @IBOutlet weak var view: UIView!
    
    @IBOutlet weak var vocabDefinitionLabel: UILabel!
    
    @IBOutlet weak var vocabSwitch: UISwitch!
    
    
    var vocabWordInfo: VocabWord? {
        didSet {
             updateUI()
        }
    }
    
    func updateUI() {
        
        vocabSwitch.isOn = false
        
        vocabWordNameLabel.text = vocabWordInfo?.name
        vocabWordNameLabel.textColor = UIColor.init(red: 0, green: 0, blue: 100, alpha: 1)
        
        
        
        vocabDefinitionLabel.text = vocabWordInfo?.definition
        
        POSLabel.text = vocabWordInfo?.POS
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
