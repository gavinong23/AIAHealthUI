//
//  ExpandablePlanAndBenefitsView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 11/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import UIKit

class ExpandablePlanAndBenefitsView: UIView {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var expandButton: UIButton!
    
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
        Bundle.main.loadNibNamed(R.nib.expandablePlanAndBenefitsView.name, owner: self, options: nil)
        
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        translatesAutoresizingMaskIntoConstraints = false
        
         layoutIfNeeded()
    }
    
    

    
}
