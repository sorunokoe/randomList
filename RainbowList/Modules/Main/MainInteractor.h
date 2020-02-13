//
//  MainInteractor.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainProtocols.h"
#import "ImageService.h"

@interface MainInteractor : NSObject <MainInteractorInputProtocol>
@property (nonatomic, strong) id<ImageService> service;
@property (nonatomic, weak) id<MainInteractorOutputProtocol> output;
@end

