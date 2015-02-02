//
//  CollectionViewDataSource.m
//  FootballTeams
//
//  Created by Derik Flanary on 2/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CollectionViewDataSource.h"
static NSString *const ballCellIdentifier = @"BallCell";

@interface CollectionViewDataSource () <UICollectionViewDataSource>

@end

@implementation CollectionViewDataSource


- (void)registerCollectionView:(UICollectionView *)collectionView {
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:ballCellIdentifier];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ballCellIdentifier forIndexPath:indexPath];
    UIImageView *flag = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld", indexPath.row + 1]]];
    [cell addSubview:flag];
    return cell;
    
}


@end
