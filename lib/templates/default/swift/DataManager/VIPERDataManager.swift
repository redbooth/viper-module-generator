//
//  VIPERDataManager.swift
//  VIPERGenDemo
//
//  Created by Pedro Piñera Buendía on 22/08/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation


class VIPERDataManager: VIPERDataManagerInputProtocol {
    init () {
        self.interactor = nil
    }
    var interactor: VIPERDataManagerOutputProtocol?
}
