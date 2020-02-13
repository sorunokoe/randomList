//
//  MainPresenter.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainProtocols.h"
#import "MainViewController.h"

@interface MainPresenter : NSObject <MainInteractorOutputProtocol>

@property (nonatomic, weak) id<MainViewProtocol> view;
@property (nonatomic, strong) id<MainInteractorInputProtocol> interactor;

-(void)getImage: (void (^)(UIImage* image)) completion;

@end

