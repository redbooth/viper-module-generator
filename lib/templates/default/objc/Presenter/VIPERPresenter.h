//
// Created by Pedro Piñera Buendía on 2014.
// Copyright (c) 2014 Redbooth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPERProtocols.h"

@class VIPERWireframe;

@interface VIPERPresenter : NSObject <VIPERPresenterProtocol, VIPERInteractorOutputProtocol>

// Properties
@property (nonatomic, weak) UIViewController <VIPERViewControllerProtocol> * viewController;
@property (nonatomic, strong) id <VIPERInteractorInputProtocol> interactor;
@property (nonatomic, strong) VIPERWireFrame *wireFrame;

@end
