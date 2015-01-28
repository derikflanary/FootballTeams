//
//  FTFootballCollectionViewDataSource.m
//  FootballTeams
//
//  Created by Joshua Howland on 6/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "FTFootballCollectionViewDataSource.h"

static NSString * const BallCellIdentifier = @"BallCell";

@implementation FTFootballCollectionViewDataSource

- (void)registerCollectionView:(UICollectionView *)collectionView {
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:BallCellIdentifier];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BallCellIdentifier forIndexPath:indexPath];

    UIImageView *cellImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld", indexPath.row + 1]]];
    [cell addSubview:cellImage];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld", indexPath.row + 1]];
    return CGSizeMake(image.size.width, image.size.height);
}

@end
