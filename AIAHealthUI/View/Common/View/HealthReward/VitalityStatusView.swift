//
//  VitalityStatusView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 06/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import UIKit

class VitalityStatusView: UIView {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var statusImageView: UIImageView!
    
    @IBOutlet weak var cardImageBackgroundView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    func commonInit() {
        Bundle.main.loadNibNamed(R.nib.vitalityStatusView.name, owner: self, options: nil)
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let image = UIImage(named:"bronze")
        
        self.statusImageView.image = image
        
//        let imageView = UIImageView(image: UIImage(named:"bronze"))
        
      
        
//        imageView.contentMode = .scaleAspectFill
        
//        imageView.frame = self.cardImageBackgroundView.frame
        
//        self.cardImageBackgroundView.addSubview(imageView)
        
//        self.cardImageBackgroundView.sendSubview(toBack: imageView)
        
    
        
//        self.cardImageBackgroundView.backgroundColor = UIColor(patternImage: UIImage(named:"bronze")!)
        
        
        
//        contentView.backgroundColor = .red
        
//        self.cardImageBackgroundView.backgroundColor =  .red
        
//        self.contentView.backgroundColor = UIColor(patternImage: UIImage(named:"bronze")!)
        
        
    }

    

}
