//
//  MainInteractor.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "MainInteractor.h"

@implementation MainInteractor

- (void)getImage:(void (^)(UIImage *))completion {
    [self.service getImage:completion];
}

@end
