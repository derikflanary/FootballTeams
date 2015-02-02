//
//  CollectionViewDataSource.m
//  FootballTeams
//
//  Created by Derik Flanary on 2/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CollectionViewDataSource.h"

@interface CollectionViewDataSource () <UICollectionViewDataSource>

@end

@implementation CollectionViewDataSource

-(void)

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    
}


@end
