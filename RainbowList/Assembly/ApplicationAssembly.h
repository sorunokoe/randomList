//
//  ApplicationAssembly.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "TyphoonAssembly.h"
#import "MainAssembly.h"

@class AppDelegate;
@class UIViewController;
@class MainAssembly;

@interface ApplicationAssembly : TyphoonAssembly

@property (nonatomic, strong, readonly) MainAssembly* mainAssembly;

- (AppDelegate *)appDelegate;

@end
