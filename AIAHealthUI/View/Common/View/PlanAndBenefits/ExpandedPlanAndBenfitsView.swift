//
//  ExpandedPlanAndBenfitsView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 11/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import Foundation
import UIKit



class ExpandedPlanAndBenefitsView: UIView{
    
    @IBOutlet var contentView: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        Bundle.main.loadNibNamed(R.nib.expandedPlanAndBenfitsView.name, owner: self, options: nil)
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        translatesAutoresizingMaskIntoConstraints = false
        
         layoutIfNeeded()
    }
    
    
}
