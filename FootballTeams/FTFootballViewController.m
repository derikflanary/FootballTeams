//
//  FTFootballViewController.m
//  FootballTeams
//
//  Created by Joshua Howland on 6/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "FTFootballViewController.h"

#import "FTFootballCollectionViewDataSource.h"

@interface FTFootballViewController () <UICollectionViewDelegate>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) FTFootballCollectionViewDataSource *datasource;

@end

@implementation FTFootballViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.datasource = [FTFootballCollectionViewDataSource new];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Note: We'll come back to flow layout later. For now, just create a new one with default settings
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.datasource registerCollectionView:self.collectionView];
    
    [self.collectionView setDataSource:self.datasource];
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    [self.view addSubview:self.collectionView];
    
    [super viewDidLoad];

}

@end
