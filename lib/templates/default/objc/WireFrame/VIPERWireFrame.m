//
// Created by Pedro Piñera Buendía on 2014.
// Copyright (c) 2014 Redbooth. All rights reserved.
//

#import "VIPERWireFrame.h"

@implementation VIPERWireFrame

+ (void)presentVIPERModuleFrom:(UIViewController*)fromViewController
{
    UIViewController <VIPERViewControllerProtocol> *viewController;
    viewController = [[VIPERViewController alloc] init];
    viewController.presenter = [VIPERPresenter new];
    viewController.presenter.interactor = [VIPERInteractor new];
    viewController.presenter.interactor.presenter = viewController.presenter;
    viewController.presenter.viewController = viewController;
    viewController.presenter.wireFrame = [VIPERWireFrame new];
    viewController.presenter.interactor.dataManager = [VIPERDataManager new];
    viewController.presenter.interactor.dataManager.interactor = viewController.presenter.interactor;

    //TOODO - New view controller presentation (present, push, pop, .. )
}

@end