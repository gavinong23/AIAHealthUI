//
//  UsageHealthWalletView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 06/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import UIKit

class UsageHealthWalletView: UIView {
    
    
    @IBOutlet var contentView: UIView!
    
    //prevention
    @IBOutlet weak var preventionImageView: UIImageView!
    
    @IBOutlet weak var preventionTitleLabel: UILabel!
    
    @IBOutlet weak var preventionBriefLabel: UILabel!
    
    
    //Hospitalisation
    
    @IBOutlet weak var hospitalisationImageView: UIImageView!
    
  
    @IBOutlet weak var hospitalisationTitleLabel: UILabel!
    
    @IBOutlet weak var hospitalisationBriefLabel: UILabel!
    
    //Follow Up and Recover
    
    @IBOutlet weak var followUpImageView: UIImageView!
    
    @IBOutlet weak var followUpTitleLabel: UILabel!
    
   
    @IBOutlet weak var followUpRecoveryTitleLabel: UILabel!
    
    
    @IBOutlet weak var followUpRecoveryBriefLabel: UILabel!
    
    
    @IBOutlet weak var followUpMobilityTitleLabel: UILabel!
    
    
    @IBOutlet weak var followUpMobilityBriefLabel: UILabel!
    
    //Annual Limit Extra
    
    @IBOutlet weak var annualLimitImageView: UIImageView!
    
    
    @IBOutlet weak var annualLimitTitleLabel: UILabel!
    
    @IBOutlet weak var annualLimitBriefLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        Bundle.main.loadNibNamed(R.nib.usageHealthWalletView.name, owner: self, options: nil)
        
        addSubview(contentView)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        layoutIfNeeded()
        
        setupView()
    }
    
    func setupView(){
        //prevention
        self.preventionImageView.image = R.image.icon_prevention()
        self.preventionTitleLabel.text = R.string.main.ahealthplus_healthwallet_usage_prevention()
        self.preventionBriefLabel.text = R.string.main.ahealthplus_healthwallet_usage_prevention_brief()
        
        //Hospitalisation
        self.hospitalisationImageView.image = R.image.icon_inhospital_grey()
        self.hospitalisationTitleLabel.text = R.string.main.ahealthplus_healthwallet_usage_hospitalisationtreatment()
        self.hospitalisationBriefLabel.text = R.string.main.ahealthplus_healthwallet_usage_hospitalisationtreatment_brief()
        
        
        //Follow Up and Recovery
        self.followUpImageView.image = R.image.icon_recover()
        self.followUpTitleLabel.text = R.string.main.ahealthplus_healthwallet_usage_followup_and_recover()
        
        self.followUpRecoveryTitleLabel.text = R.string.main.ahealthplus_healthwallet_usage_followup_and_recover_recoverycare()
        
        self.followUpRecoveryBriefLabel.text = R.string.main.ahealthplus_healthwallet_usage_followup_and_recover_recoverycare_brief()
        
        self.followUpMobilityTitleLabel.text = R.string.main.ahealthplus_healthwallet_usage_followup_and_recover_mobility()
        
        self.followUpMobilityBriefLabel.text = R.string.main.ahealthplus_healthwallet_usage_followup_and_recover_mobility_brief()
    
        
        //Annual Limit Extra
        self.annualLimitImageView.image = R.image.icon_extra()
        self.annualLimitTitleLabel.text = R.string.main.ahealthplus_healthwallet_usage_annuallimitextra()
        self.annualLimitBriefLabel.text = R.string.main.ahealthplus_healthwallet_usage_annuallimitextra_brief()
        
    }
    

}
