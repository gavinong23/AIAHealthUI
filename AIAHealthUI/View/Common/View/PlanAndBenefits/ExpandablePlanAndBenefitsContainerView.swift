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
    
    
    //In-patient
    @IBOutlet weak var expandablePlanAndBenefitsView: ExpandablePlanAndBenefitsView!
    
       @IBOutlet weak var expandedStackView: UIStackView!
    
   
    @IBOutlet weak var expandedHospitalRoomView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedICUView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedInHospitalView: ExpandedPlanAndBenefitsView!
    
    //Out-patient
    @IBOutlet weak var expandablePlanAndBenefitsView2: ExpandablePlanAndBenefitsView!
    
    @IBOutlet weak var expandedStackView2: UIStackView!
    
    
    @IBOutlet weak var expandedPreHospitalView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedPostHospitalView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedCancerTreatmentView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedSurgeryView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedDengueView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedEmergencyView: ExpandedPlanAndBenefitsView!
    
    
    //extra care
    @IBOutlet weak var expandablePlanAndBenefitsView3: ExpandablePlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedStackView3: UIStackView!
    
    
    @IBOutlet weak var expendedLensView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedHomeNursingView: ExpandedPlanAndBenefitsView!
    
    
    @IBOutlet weak var expandedRepatriationView: ExpandedPlanAndBenefitsView!
    
    
    //footer
    @IBOutlet weak var alertImageView: UIImageView!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    
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
    
    func setExpandableContent(){
        //In patient
        self.expandablePlanAndBenefitsView.expandableTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_title()
        self.expandablePlanAndBenefitsView.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_brief()
        
        //Out patient
        self.expandablePlanAndBenefitsView2.expandableTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_title()
        self.expandablePlanAndBenefitsView2.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_brief()
        
        //Extra Care
        self.expandablePlanAndBenefitsView3.expandableTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_title()
        self.expandablePlanAndBenefitsView3.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_brief()
        
        //footer
        alertImageView.image = R.image.alert()
        
        alertLabel.text = R.string.main.ahealthplus_plan_and_benefits_footer()
    }
    
    func setExpandedContent(){
        //In-Patient Care
        expandedHospitalRoomView.expandedImageView.image = R.image.icon_boardroom()
        expandedHospitalRoomView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_hospitalroom_and_board()
        expandedHospitalRoomView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_150daysperyear()
        
        expandedICUView.expandedImageView.image = R.image.icon_intensive_care()
        expandedICUView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_icu()
        expandedICUView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_150daysperyear()
        
        expandedInHospitalView.expandedImageView.image = R.image.icon_inhospital_blue()
        expandedInHospitalView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_inhospitalrelatedfees()
        expandedInHospitalView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_inhospitalrelatedfees_brief()
        
        expandedInHospitalView.bottomBorderView.isHidden = true
        
        //Out-Patient Care
        expandedPreHospitalView.expandedImageView.image = R.image.icon_microscopes()
        expandedPreHospitalView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_prehospitalisation()
        expandedPreHospitalView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_prehospitalisation_brief()
        
        expandedPostHospitalView.expandedImageView.image = R.image.icon_xray()
        expandedPostHospitalView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_posthospitalisation()
        expandedPostHospitalView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_posthospitalisation_brief()
        
        expandedCancerTreatmentView.expandedImageView.image = R.image.icon_treatment()
        expandedCancerTreatmentView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_outpatientKidneydialysis()
        expandedCancerTreatmentView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_outpatientKidneydialysis_brief()
        
        expandedSurgeryView.expandedImageView.image = R.image.icon_surgery()
        expandedSurgeryView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_surgery()
        expandedSurgeryView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_surgery_brief()
        
        expandedDengueView.expandedImageView.image = R.image.icon_dengue()
        expandedDengueView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_denguefever()
        expandedDengueView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_denguefever_brief()
        
        expandedEmergencyView.expandedImageView.image = R.image.icon_emergency()
        expandedEmergencyView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_emergency()
        expandedEmergencyView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_emergency_brief()
        
        expandedEmergencyView.bottomBorderView.isHidden = true
        
        
        //Extra Care
        expendedLensView.expandedImageView.image = R.image.icon_lens()
        expendedLensView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_intraocularlens()
        expendedLensView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_intraocularlens_brief()
        
        expandedHomeNursingView.expandedImageView.image = R.image.icon_home()
        expandedHomeNursingView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_homenursingcare()
        expandedHomeNursingView.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_homenursingcare_brief()
        
        expandedRepatriationView.expandedImageView.image = R.image.icon_emergency()
        expandedRepatriationView.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_extracare_emergencymedical()
        expandedRepatriationView.expandedBriefLabel.isHidden = true
        
            expandedRepatriationView.bottomBorderView.isHidden = true
        
        
        
        
        
    }
    
    func setupView(){
        
        //set static content
        setExpandableContent()
        setExpandedContent()
        
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
