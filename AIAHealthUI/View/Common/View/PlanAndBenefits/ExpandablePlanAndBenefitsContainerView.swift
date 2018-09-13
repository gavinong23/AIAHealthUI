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
    
    func setStaticContent(){
        
        //In patient
        self.expandablePlanAndBenefitsView.expandableTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_title()
        self.expandablePlanAndBenefitsView.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_brief()
        
        //Out patient
        self.expandablePlanAndBenefitsView2.expandableTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_title()
        self.expandablePlanAndBenefitsView2.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_brief()
        
        //Extra Care
        self.expandablePlanAndBenefitsView3.expandableTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_title()
        self.expandablePlanAndBenefitsView3.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_brief()
        
    }
    
    func setupView(){
        
        //set static content
        setStaticContent()
        
        //hide all expanded view
        self.expandedStackView.isHidden = true
        self.expandedStackView2.isHidden = true
        self.expandedStackView3.isHidden = true
        
        
        //set expand onClick
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
                
                if self.expandedStackView.isHidden{
                    self.expandablePlanAndBenefitsView.expandButton.imageView?.transform = (self.expandablePlanAndBenefitsView.expandButton.transform.scaledBy(x: 1, y: 1))
                }else{
                    self.expandablePlanAndBenefitsView.expandButton.imageView?.transform = (self.expandablePlanAndBenefitsView.expandButton.transform.scaledBy(x: 1, y: -1))
                }
                
                
                self.layoutIfNeeded()
            })
        }else if(sender.tag == 2){
            UIView.animate(withDuration: 0.1, animations: {
                self.expandedStackView2.isHidden = !self.expandedStackView2.isHidden
                
                if self.expandedStackView2.isHidden{
                    self.expandablePlanAndBenefitsView2.expandButton.imageView?.transform = (self.expandablePlanAndBenefitsView2.expandButton.transform.scaledBy(x: 1, y: 1))
                }else{
                    self.expandablePlanAndBenefitsView2.expandButton.imageView?.transform = (self.expandablePlanAndBenefitsView2.expandButton.transform.scaledBy(x: 1, y: -1))
                }
                
                
                self.layoutIfNeeded()
            })
        }else if(sender.tag == 3){
            
            UIView.animate(withDuration: 0.1, animations: {
                self.expandedStackView3.isHidden = !self.expandedStackView3.isHidden
                
                if self.expandedStackView3.isHidden{
                    self.expandablePlanAndBenefitsView3.expandButton.imageView?.transform = (self.expandablePlanAndBenefitsView.expandButton.transform.scaledBy(x: 1, y: 1))
                }else{
                    self.expandablePlanAndBenefitsView3.expandButton.imageView?.transform = (self.expandablePlanAndBenefitsView3.expandButton.transform.scaledBy(x: 1, y: -1))
                }
                
                self.layoutIfNeeded()
            })
            
            
        }
        
       
    }
    
    
    
}
