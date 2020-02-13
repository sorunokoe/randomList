//
//  MainPresenter.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "MainPresenter.h"

@implementation MainPresenter

- (void)getImage:(void (^)(UIImage *))completion {
    [self.interactor getImage:completion];
}

@end
