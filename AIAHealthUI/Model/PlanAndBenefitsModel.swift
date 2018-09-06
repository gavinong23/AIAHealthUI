//
//  PlanAndBenefitsModel.swift
//  AIAHealthUI
//
//  Created by Gavin.ong on 05/09/2018.
//  Copyright © 2018 Gavin.ong. All rights reserved.
//

import Foundation


public struct Item {
    public var title: String
    public var detail: String
    
    public init(title: String, detail: String) {
        self.title = title
        self.detail = detail
    }
}

public struct Section {
    public var sectionTitle: String
    public var sectionBrief: String
    public var items: [Item]
    
    public init(sectionTitle:String, sectionBrief: String, items: [Item]) {
        self.sectionTitle = sectionTitle
        self.sectionBrief = sectionBrief
        self.items = items
    }
}

public var sectionsData: [Section] = [
    Section(sectionTitle: R.string.main.ahealthplus_plan_and_benefits_inpatientcare_title(), sectionBrief: R.string.main.ahealthplus_plan_and_benefits_inpatientcare_brief(), items:  [Item(title: R.string.main.ahealthplus_plan_and_benefits_inpatientcare_hospitalroom_and_board(), detail: R.string.main.ahealthplus_plan_and_benefits_inpatientcare_150daysperyear())]
       )
]




