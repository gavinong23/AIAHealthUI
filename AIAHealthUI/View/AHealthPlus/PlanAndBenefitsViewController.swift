//
//  PlanAndBenfitsViewController.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 04/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import UIKit
import ExpandableCell

class PlanAndBenefitsViewController: UIViewController {
    
  
    @IBOutlet weak var expandablePlanAndBenfitsTableView: ExpandableTableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        setupExpandableTableView()

    }
    
    func setupExpandableTableView(){
        expandablePlanAndBenfitsTableView.animation = .automatic
        
          expandablePlanAndBenfitsTableView.estimatedRowHeight = UITableViewAutomaticDimension
        expandablePlanAndBenfitsTableView.expandableDelegate = self
        
        //register
expandablePlanAndBenfitsTableView.register(R.nib.expandableSectionPlanAndBenefitsTableViewCell(), forCellReuseIdentifier: R.reuseIdentifier.expandableCell.identifier)
        
    expandablePlanAndBenfitsTableView.register(R.nib.expandedPlanAndBenefitsTableViewCell(), forCellReuseIdentifier: R.reuseIdentifier.expandedCell.identifier)
        
          self.expandablePlanAndBenfitsTableView.tableFooterView = UIView()
        
        self.expandablePlanAndBenfitsTableView.separatorStyle = UITableViewCellSeparatorStyle.none
        
    }
    
    

}

extension PlanAndBenefitsViewController: ExpandableDelegate{
    
    
    //Expanded Height
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightsForExpandedRowAt indexPath: IndexPath) -> [CGFloat]? {
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                
                return [UITableViewAutomaticDimension, UITableViewAutomaticDimension, UITableViewAutomaticDimension]
                
            case 2:
                return [UITableViewAutomaticDimension, UITableViewAutomaticDimension, UITableViewAutomaticDimension]
                
            case 3:
                return [22]
                
            default:
                break
            }
        default:
            break
        }
        return nil
    }
    
    //expanded: modify content here
    func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCellsForRowAt indexPath: IndexPath) -> [UITableViewCell]? {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                
                //inPatientInHospitalRelatedFeesCell
                let inPatientCareHospitalRoomCell = expandablePlanAndBenfitsTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.expandedCell.identifier) as! ExpandedPlanAndBenefitsTableViewCell
                
                //Content
                inPatientCareHospitalRoomCell.expandedTitleLabel.text = String(format: "%@", R.string.main.ahealthplus_plan_and_benefits_inpatientcare_hospitalroom_and_board())
                
                inPatientCareHospitalRoomCell.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_150daysperyear()
                
                //inPatientCareIcuCell
                let inPatientCareIcuCell = expandablePlanAndBenfitsTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.expandedCell.identifier) as! ExpandedPlanAndBenefitsTableViewCell
                
                //Content
                inPatientCareIcuCell.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_icu()
                
                inPatientCareIcuCell.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_150daysperyear()
                
                //inPatientInHospitalRelatedFeesCell
                let inPatientInHospitalRelatedFeesCell = expandablePlanAndBenfitsTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.expandedCell.identifier) as! ExpandedPlanAndBenefitsTableViewCell
                
                //Content
                inPatientInHospitalRelatedFeesCell.expandedTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_inhospitalrelatedfees()
                
                inPatientInHospitalRelatedFeesCell.expandedBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_inhospitalrelatedfees_brief()
                
             
                return [inPatientCareHospitalRoomCell, inPatientCareIcuCell, inPatientInHospitalRelatedFeesCell]
                
     
                
            default:
                break
            }
        default:
            break
        }
        return nil
    }
    
    
    //Expandable Height
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension 
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    func expandableTableView(_ expandableTableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    //Expandable: Modify here
    func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.expandableCell.identifier) as? ExpandableSectionPlanAndBenefitsTableViewCell else { return UITableViewCell() }
                
                cell.expandableTitleLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_title()
                
                cell.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_inpatientcare_brief()
                
                
                
                
                
                return cell
            case 1:
                
                guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.expandableCell.identifier) as? ExpandableSectionPlanAndBenefitsTableViewCell else { return UITableViewCell() }
                
                cell.expandableTitleLabel.text = String(format:"%@",R.string.main.ahealthplus_plan_and_benefits_outpatientcare_title())
                
                cell.expandableBriefLabel.text = R.string.main.ahealthplus_plan_and_benefits_outpatientcare_brief()
                
                return cell
            case 2:
                guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.expandableCell.identifier) as? ExpandableSectionPlanAndBenefitsTableViewCell else { return UITableViewCell() }
                
                cell.expandableTitleLabel.text = "Gavin Ong"
                
                return cell
      
            default:
                break
            }
        case 1:
            switch indexPath.row {
            case 0, 1, 2:
                guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.expandableCell.identifier) else {return UITableViewCell()}
                
                return cell
                
            default:
                break
            }
        default:
            break
        }
        
        return UITableViewCell()
    }
    

    
    
  
    

}




