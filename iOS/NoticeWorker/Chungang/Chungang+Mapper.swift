//
//  Chungang+Mapper.swift
//  NoticeWorker
//
//  Created by 김태인 on 2020/05/06.
//  Copyright © 2020 김태인. All rights reserved.
//

import Foundation

extension NW_Chungang {
    func mappingChungangCollegeDept() {
        mappingTable = [CollegeDeptMapper]()
        mappingTable?.append(CollegeDeptMapper(college: SeoulCollegeCode.eng.rawValue,
                                               deptList: [SeoulDept.ENG_Computer(page: nil, keyword: nil)]))
        
        mappingTable?.append(CollegeDeptMapper(college: SeoulCollegeCode.sc.rawValue,
                                               deptList: [SeoulDept.SC_Economics(page: nil, keyword: nil),
                                                          SeoulDept.SC_Anthropology(page: nil, keyword: nil)]))
        
        mappingTable?.append(CollegeDeptMapper(college: SeoulCollegeCode.nc.rawValue,
                                               deptList: [SeoulDept.NC_Biology(page: nil, keyword: nil)]))
        
        mappingTable?.append(CollegeDeptMapper(college: SeoulCollegeCode.edu.rawValue,
                                               deptList: [SeoulDept.EDU_Math(page: nil, keyword: nil)]))
        
        mappingTable?.append(CollegeDeptMapper(college: SeoulCollegeCode.school.rawValue,
                                               deptList: [SeoulDept.Seoul(page: nil, keyword: nil)]))
    }
}
