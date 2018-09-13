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
    
    
    @IBOutlet weak var expandableTitleLabel: UILabel!
    
    @IBOutlet weak var expandableBriefLabel: UILabel!
    
    @IBOutlet weak var expandButton: UIButton!
    

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
        
        setupView()
    }
    
    
    func setupView(){
        self.expandButton.setImage(R.image.expandArrowDown(), for: .normal)
    }
    
    
    
    @IBAction func expandButtonOnClick(_ sender: Any) {
        
   
        
      
    }
    
    

    
}
