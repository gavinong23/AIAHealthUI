//
//  VitalityStatusView.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 06/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import UIKit

class VitalityStatusView: UIView {

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
        Bundle.main.loadNibNamed(R.nib.vitalityStatusView.name, owner: self, options: nil)
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        
//        self.containerView.backgroundColor = UIColor(patternImage: UIImage(named:"bronze")!)
        
        
    }

    

}
