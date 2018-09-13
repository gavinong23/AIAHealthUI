//
//  MainContentPlanAndBenefitsView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 04/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import UIKit

class MainContentPlanAndBenefitsView: UIView {
    
    @IBOutlet weak var planAndBenefitsTitleLabel: UILabel!
    
    @IBOutlet weak var benefitsViewHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var statusTitleLabel: UILabel!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var benefitsView: BenefitsView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        Bundle.main.loadNibNamed(R.nib.mainContentPlanAndBenefitsView.name, owner: self, options: nil)
        
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        setupView()
    }
    
    
    func setupView(){
        
     
        
        //Static
        self.planAndBenefitsTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_title()
        
        self.statusTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_status()
        
        //Dynamic: status
        self.statusLabel.text = "Dynamic field"
        
        //Static Reuse: BenefitsView
        self.benefitsView.benefitsImageView.image = R.image.deductibleOption()
        
        self.benefitsView.benefitsTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_deductibleoption_title()
        
        self.benefitsView.benefitsBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_deductibleoption_brief()
        
        
        
    }


}
