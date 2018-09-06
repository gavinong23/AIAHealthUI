//
//  BenefitsOfHealthRewardView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 06/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import UIKit

class BenefitsOfHealthRewardView: UIView {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var benefitsStackView: UIStackView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    
    func commonInit() {
        Bundle.main.loadNibNamed(R.nib.benefitsOfHealthRewardView.name, owner: self, options: nil)
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        
        let subviews = benefitsStackView.arrangedSubviews
        
        subviews.map{ subview in
            subview.removeFromSuperview()
        }
        
        
        let benefitsView = BenefitsView()
        
        benefitsView.frame = benefitsStackView.frame
        
        benefitsStackView.addArrangedSubview(benefitsView)
        
         let benefitsView2 = BenefitsView()
        
         benefitsStackView.addArrangedSubview(benefitsView2)
        
        let benefitsView3 = BenefitsView()
        benefitsStackView.addArrangedSubview(benefitsView3)
        
        
        
        
//        if let pizzaToppingIcons = pizzaToppingIcons{
//            pizzaToppingIcons.map{ pizzaToppingIcon in
//                let imageView = UIImageView()
//                imageView.image = pizzaToppingIcon.toppingImage()
//                imageView.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
//                imageView.layer.borderWidth=1.0
//                imageView.layer.masksToBounds = false
//                imageView.clipsToBounds = true
//                imageView.layer.cornerRadius = imageView.frame.size.height/2
//                dominoPizzaTypeStackView.addArrangedSubview(imageView)
//            }
//        }
    
    }
    
    
    

}
