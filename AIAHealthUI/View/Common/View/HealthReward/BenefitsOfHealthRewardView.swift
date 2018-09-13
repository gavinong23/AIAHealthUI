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
        
        //1
        let benefitsView = BenefitsView()
        
        benefitsView.frame = benefitsStackView.frame
        
        benefitsView.benefitsImageView.image = R.image.board_room()
        
        benefitsView.benefitsTitleLabel.text = R.string.main.ahealthplus_healthrewards_benefits_deductiblewaiver()
        
        benefitsView.benefitsBriefLabel.text = R.string.main.ahealthplus_healthrewards_benefits_deductiblewaiver_brief()
        benefitsStackView.addArrangedSubview(benefitsView)
        
        
        //2
         let benefitsView2 = BenefitsView()
        
        benefitsView2.benefitsImageView.image = R.image.icon_inhospital_grey()
        
        benefitsView2.benefitsTitleLabel.text = R.string.main.ahealthplus_healthrewards_hospitalroom_and_board_upgrade()
        
        benefitsView2.benefitsBriefLabel.text = R.string.main.ahealthplus_healthrewards_hospitalroom_and_board_upgrade_brief()
        benefitsStackView.addArrangedSubview(benefitsView2)
        
        
        //3
        let benefitsView3 = BenefitsView()
        
        benefitsView3.benefitsImageView.image = R.image.healthWalletBoosters()
        
        benefitsView3.benefitsTitleLabel.text = R.string.main.ahealthplus_healthrewards_healthwalletbooster()
        
        benefitsView3.benefitsBriefLabel.text = R.string.main.ahealthplus_healthrewards_healthwalletbooster_brief()
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
