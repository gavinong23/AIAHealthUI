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
    
    
 
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var expandablePlanAndBenefitsView: ExpandablePlanAndBenefitsView!
    
       @IBOutlet weak var expandedStackView: UIStackView!
    
    @IBOutlet weak var expandablePlanAndBenefitsView2: ExpandablePlanAndBenefitsView!
    
    @IBOutlet weak var expandedStackView2: UIStackView!
    
    
    @IBOutlet weak var expandablePlanAndBenefitsView3: ExpandablePlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedStackView3: UIStackView!
    
  
    
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
        
        
  
        setupView()
        
    }
    
    func setupView(){
        
            expandablePlanAndBenefitsView.expandButton.tag = 1
        expandablePlanAndBenefitsView.expandButton.addTarget(self, action: #selector(self.expandButtonOnClick), for: .touchUpInside)
        
            expandablePlanAndBenefitsView2.expandButton.tag = 2
        expandablePlanAndBenefitsView2.expandButton.addTarget(self, action: #selector(self.expandButtonOnClick), for: .touchUpInside)
        
        expandablePlanAndBenefitsView3.expandButton.tag = 3
        
        expandablePlanAndBenefitsView3.expandButton.addTarget(self, action: #selector(self.expandButtonOnClick), for: .touchUpInside)
        

        
        layoutIfNeeded()
    }
    

    @objc func expandButtonOnClick(sender: UIButton){
        
        if(sender.tag == 1){
            UIView.animate(withDuration: 0.1, animations: {
                self.expandedStackView.isHidden = !self.expandedStackView.isHidden
                self.layoutIfNeeded()
            })
        }else if(sender.tag == 2){
            UIView.animate(withDuration: 0.1, animations: {
                self.expandedStackView2.isHidden = !self.expandedStackView2.isHidden
                self.layoutIfNeeded()
            })
        }else if(sender.tag == 3){
            
            UIView.animate(withDuration: 0.1, animations: {
                self.expandedStackView3.isHidden = !self.expandedStackView3.isHidden
                self.layoutIfNeeded()
            })
            
            
        }
        
       
    }
    
    
    
}
