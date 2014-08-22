//
// Created by Pedro Piñera Buendía on 2014.
// Copyright (c) 2014 Redbooth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPERProtocols.h"
#import "VIPERViewController.h"
#import "VIPERDataManager.h"
#import "VIPERInteractor.h"
#import "VIPERPresenter.h"
#import "VIPERWireframe.h"
#import <UIKit/UIKit.h>

@interface VIPERWireFrame : NSObject

@property (nonatomic, weak) UIViewController *viewController;

+ (void)presentVIPERModuleFrom:(UIViewController*)fromViewController;

@end