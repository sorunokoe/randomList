//
//  MainViewController.h
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/12/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainProtocols.h"
#import "MainPresenter.h"

@class MainPresenter;
@interface MainViewController : UICollectionViewController <MainViewProtocol>
@property (nonatomic, strong) MainPresenter* presenter;
@end

