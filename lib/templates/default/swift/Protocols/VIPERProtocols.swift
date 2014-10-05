//
//  VIPERProtocols.swift
//  VIPERGenDemo
//
//  Created by Pedro Piñera Buendía on 22/08/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation


protocol VIPERInteractorOutputProtocol
{
    /* Add your extra communication methods here */
    /* Interactor -> Presenter */
}

protocol VIPERInteractorInputProtocol
{
    var presenter: VIPERInteractorOutputProtocol? { get set }
    
    /* Add your extra communication methods here */
    /* Presenter -> Interactor */
}

protocol VIPERPresenterProtocol
{
    var viewController: VIPERViewControllerProtocol? { get set }
    var interactor: VIPERInteractorInputProtocol? { get set }
    var wireFrame: VIPERWireFrame? { get set }

    //    /* Add your extra communication methods here */
    //    /* Presenter -> ViewController */
}

protocol VIPERViewControllerProtocol
{
    var presenter: VIPERViewControllerProtocol? { get set }
}

protocol VIPERDataManagerInputProtocol
{
    var interactor: VIPERDataManagerOutputProtocol? { get set }
}

protocol VIPERDataManagerOutputProtocol
{
    //var dataManager: VIPERDataManagerInputProtocol { get set }
}

