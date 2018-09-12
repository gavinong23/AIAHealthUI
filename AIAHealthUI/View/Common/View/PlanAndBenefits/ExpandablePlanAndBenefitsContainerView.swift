//
//  ExpandablePlanAndBenefitsContainerView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 11/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import Foundation
import UIKit



class ExpandablePlanAndBenefitsContainerView: UIView{
    
    
    @IBOutlet weak var expandedStackView: UIStackView!
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var expandablePlanAndBenefitsView: ExpandablePlanAndBenefitsView!
    
    @IBOutlet weak var expandedPlanAndBenfitsView: ExpandedPlanAndBenefitsView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        Bundle.main.loadNibNamed(R.nib.expandablePlanAndBenefitsContainerView.name, owner: self, options: nil)
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        translatesAutoresizingMaskIntoConstraints = false
        
         layoutIfNeeded()
        
    
        expandablePlanAndBenefitsView.expandButton.addTarget(self, action: #selector(self.expandButtonOnClick), for: .touchUpInside)
        
    }
    

    @objc func expandButtonOnClick(){
        UIView.animate(withDuration: 0.1, animations: {
            self.expandedStackView.isHidden = !self.expandedStackView.isHidden
            self.layoutIfNeeded()
        })
    }
    
    
    
}
