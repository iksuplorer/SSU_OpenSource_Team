//
//  Seoul_Soongsil.swift
//  NoticeWorker
//
//  Created by 김태인 on 2020/04/24.
//  Copyright © 2020 김태인. All rights reserved.
//

import Foundation

public class NW_Soongsil: Organization {
    public override init() {
        super.init()
        self.setOrganizationDept()
        self.organizationCode = .Soongsil
    }
    
    public func testFunc() -> [Notice] {
        var items = [TestNotice]()
        let noticeProperty: [TestNoticeProperty] = [.date(value: "2020-04-26"),
                                            .title(value: "Test Title"),
                                            .isActive(value: false),
                                            .url(value: "https://www.google.com"),
                                            .author(value: "TestAuthor"),
                                            .custom(key: "viewCount", value: 100),
                                            .custom(key: "isNew", value: false)]
        
        let item = TestNotice(property: noticeProperty)
        items.append(item)
        
        noticeProperty.contains(where: ({ $0.key == TestNoticeProperty.title(value: "").key }))
        
        var testItems = [Notice]()
        var testItem = Notice(title: "Test Title", url: "https://www.google.com")
        testItem.author = "Test"
        testItem.date = "2020-04-25"
        testItem.isActive = true
        testItem.custom = ["viewCount": 100]
        testItems.append(testItem)
        
        testItem.custom?["viewCount"]
        return testItems
    }
    
    override func getNoticeList(html: String) -> [Notice]? {
        return testFunc()
    }
    
    override func getSchoolName() -> String? {
        return "숭실대학교"
    }
    
    override func getNoticeURL(dept code: DeptCode, page: Int, quantity: Int, completion: @escaping (Result<URL, URLGenerateError>) -> Void) {
        // MARK: TEMP
        if code == SoongsilDeptCode.itComputer.rawValue {
            completion(.failure(.invalid))
        }
        completion(.failure(.emptyKeyword))
    }
    
    override func getDeptCount(collegeName: String) -> Int? {
        return super.collegeList?.filter({ $0.collegeName == collegeName }).count
    }
    
    override func setOrganizationDept() {
        var college = College()
        let dept: Dept = Dept(deptName: "테스트학과", urlString: "https://www.google.com")
        
        college.collegeName = "테스트 단과대학"
        college.deptList?.append(dept)
        collegeList?.append(college)
    }
}
