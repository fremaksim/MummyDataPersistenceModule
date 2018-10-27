//
//  ViewController.swift
//  MummyDataPersistence
//
//  Created by mozhe on 2018/10/27.
//  Copyright © 2018 mozhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: -- Test
        //store class
        let test = TestArchive(name: "Test", age: 18, data: Data(),
                               sub: SubArchive(name: "SubTest", age: 20),
                               structs: SubStruct(value: "Struct", description: "oooStruct"))
        let _ =  MummyCaches.shared.keyedArchiver(path: MummyPath.documentURLPath,
                                                  fileName: "newTest.archive", object: test)
        let newTest =   MummyCaches.shared.keyedUnArchiver(path: MummyPath.documentURLPath,
                                                           fileName: "newTest.archive",
                                                           object: TestArchive.self)
        
        if let des = newTest?.subStruct.description {
            print(des)
        }
        
    }


}

