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
    func setPresenter(presenter: VIPERPresenterProtocol)
    func presenter() -> (VIPERPresenterProtocol)
    
    /* Add your extra communication methods here */
    /* Presenter -> Interactor */
}

protocol VIPERViewControllerProtocol
{
    
}

protocol VIPERDataManagerInputProtocol
{
    
}

protocol VIPERDataManagerOutputProtocol {
    
}

protocol VIPERPresenterProtocol
{
//    func setViewController(viewController: VIPERViewControllerProtocol)
//    func viewController() -> (VIPERViewControllerProtocol)
//    func setInteractor(interactor: VIPERInteractorInputProtocol, VIPERDataManagerOutputProtocol)
//    func interactor() -> (interactor: VIPERInteractorInputProtocol, VIPERDataManagerOutputProtocol)
//    func setWireFrame(wireFrame: VIPERWireframe)
//    func wireFrame() -> VIPERWireframe
//    
//    /* Add your extra communication methods here */
//    /* Presenter -> ViewController */
}


/*
@protocol VIPERDataManagerOutputProtocol;
@protocol VIPERViewControllerProtocol;
@protocol VIPERPresenterProtocol;
@protocol VIPERDataManagerInputProtocol;
@class VIPERWireFrame;

@protocol VIPERInteractorOutputProtocol

@end

@protocol VIPERInteractorInputProtocol
@required
- (void)setPresenter:(id <VIPERPresenterProtocol>)presenter;
- (id <VIPERPresenterProtocol>)presenter;
@end

@protocol VIPERPresenterProtocol
@required
- (void)setViewController:(id <VIPERViewControllerProtocol>) viewController;
- (id <VIPERViewControllerProtocol>)viewController;
- (void)setInteractor:(id <VIPERInteractorInputProtocol, VIPERDataManagerOutputProtocol>)interactor;
- (id <VIPERInteractorInputProtocol, VIPERDataManagerOutputProtocol>)interactor;
- (void)setWireFrame:(VIPERWireFrame*)wireFrame;
- (VIPERWireFrame*)wireFrame;
@end

@protocol VIPERViewControllerProtocol
@required
- (void)setPresenter:(id<VIPERPresenterProtocol, VIPERInteractorOutputProtocol>)presenter;
- (id<VIPERPresenterProtocol, VIPERInteractorOutputProtocol>)presenter;
@end

@protocol VIPERDataManagerInputProtocol
- (void)setInteractor:(id <VIPERDataManagerOutputProtocol>)interactor;
- (id <VIPERDataManagerOutputProtocol>)interactor;
@end

@protocol VIPERDataManagerOutputProtocol
- (void)setDataManager:(id<VIPERDataManagerInputProtocol>)dataManager;
- (id<VIPERDataManagerInputProtocol>)dataManager;
@end
*/