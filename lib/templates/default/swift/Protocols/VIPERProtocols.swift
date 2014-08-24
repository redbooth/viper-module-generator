//
//  VIPERProtocols.swift
//  VIPERGenDemo
//
//  Created by Pedro Piñera Buendía on 22/08/14.
//  Copyright (c) 2014 ___Redbooth___. All rights reserved.
//

import Foundation


protocol VIPERInteractorOutputProtocol {
    
}

protocol VIPERInteractorInputProtocol {
    func setPresenter(presenter: VIPERPresenterProtocol)
    func presenter() -> (VIPERPresenterProtocol)
}

protocol VIPERViewControllerProtocol {
    
}

protocol VIPERDataManagerInputProtocol {
    
}

protocol VIPERDataManagerOutputProtocol {
    
}

protocol VIPERPresenterProtocol {
    func setViewController(viewController: VIPERViewControllerProtocol)
    func viewController() -> (VIPERViewControllerProtocol)
    
}


/*

@protocol VIPERPresenterProtocol
@required
- (void)setViewController:(id <VIPERViewControllerProtocol>) viewController;
- (id <VIPERViewControllerProtocol>)viewController;
- (void)setInteractor:(id <VIPERInteractorInputProtocol, VIPERDataManagerOutputProtocol>)interactor;
- (id <VIPERInteractorInputProtocol, VIPERDataManagerOutputProtocol>)interactor;
- (void)setWireframe:(VIPERWireFrame*)wireframe;
- (VIPERWireFrame*)wireframe;
@end

@protocol VIPERViewControllerProtocol
@required
- (void)setPresenter:(id<VIPERPresenterProtocol, VIPERInteractorOutputProtocol, VIPERDataManagerOutputProtocol>)presenter;
- (id<VIPERPresenterProtocol, VIPERInteractorOutputProtocol, VIPERDataManagerOutputProtocol>)presenter;
@end

@protocol VIPERDataManagerInputProtocol
- (void)setInteractor:(id <VIPERDataManagerOutputProtocol>)interactor;
- (id <VIPERDataManagerOutputProtocol>)interactor;
@end

@protocol VIPERDataManagerOutputProtocol
- (void)setDataManager:(id<VIPERDataManagerInputProtocol>)dataManager;
- (id<VIPERDataManagerInputProtocol>)dataManager;
@end*/