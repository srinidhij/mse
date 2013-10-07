//
//  AppDelegate.h
//  trial 2
//
//  Created by MSE on 31/08/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@class secondScreenViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (strong,nonatomic) secondScreenViewController *s;


@end
