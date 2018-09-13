

import UIKit

class BenefitsView: UIView {
    
    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var benefitsImageView: UIImageView!
    
    
    @IBOutlet weak var benefitsTitleLabel: UILabel!

    @IBOutlet weak var benefitsBriefLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    func commonInit() {
        Bundle.main.loadNibNamed(R.nib.benefitsView.name, owner: self, options: nil)
        
        addSubview(contentView)
        
        contentView.frame = self.bounds
        
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        
    }
    

}
