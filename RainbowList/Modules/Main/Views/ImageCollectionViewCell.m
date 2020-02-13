//
//  ImageCollectionViewCell.m
//  RainbowList
//
//  Created by Yeskendir Salgara on 2/13/20.
//  Copyright © 2020 Yeskendir Salgara. All rights reserved.
//

#import "ImageCollectionViewCell.h"
#import <Masonry/Masonry.h>

@implementation ImageCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configureUI];
    }
    return self;
}


-(void)configureUI{
    [self setViews];
    [self addViews];
    [self setConstraints];
}

-(void)setViews{
    _imageView = [[UIImageView alloc]init];
    _imageView.contentMode = UIViewContentModeScaleAspectFit;
    _imageView.layer.cornerRadius = 8;
    _imageView.layer.masksToBounds = YES;
}
-(void)addViews{
    [self addSubview:_imageView];
}
-(void)setConstraints{
    UIView* superview = self;
    [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(superview);
    }];
}

- (void)prepareForReuse{
    _imageView.image = [UIImage imageNamed:@"image"];
    [super prepareForReuse];
}

@end
