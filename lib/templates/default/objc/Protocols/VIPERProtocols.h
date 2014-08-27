//
// Created by Pedro Piñera Buendía on 2014.
// Copyright (c) 2014 Redbooth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

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
@end
