//
//  MainAssembly.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "TyphoonAssembly.h"
#import "ServiceAssembly.h"

@class ServiceAssembly;

@interface MainAssembly : TyphoonAssembly

@property(nonatomic, strong, readonly) ServiceAssembly* serviceAssembly;

-(UIViewController *)rootViewController;

@end

