//
//  MainViewController.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/12/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "MainViewController.h"
#import "MainProtocols.h"
#import "ImageCollectionViewCell.h"

@interface MainViewController ()

@end

@implementation MainViewController {
    NSString* cellIdentifier;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureUI];
}


-(void)configureUI{
    [self setTitle:@"Rainbow List"];
    cellIdentifier = @"ImageCellIdentifier";
    UICollectionView* collectionView = self.collectionView;
    collectionView.backgroundColor = UIColor.whiteColor;
    [collectionView registerClass:[ImageCollectionViewCell class] forCellWithReuseIdentifier:cellIdentifier];
}

#pragma mark - Collection Delegates

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    ImageCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    [self.presenter getImage:^(UIImage *image) {
        cell.imageView.image = image;
    }];
    return cell;
}



@end
