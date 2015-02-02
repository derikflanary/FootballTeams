//
//  FTViewController.m
//  FootballTeams
//
//  Created by Derik Flanary on 2/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CollectionViewDataSource.h"
#import "FTViewController.h"

@interface FTViewController () <UICollectionViewDelegate>

@property (nonatomic, strong)UICollectionView *collectionView;
@property (nonatomic, strong)CollectionViewDataSource *dataSource;

@end

@implementation FTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    self.collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor cyanColor];
    self.dataSource = [CollectionViewDataSource new];
    [self.dataSource registerCollectionView:self.collectionView];
    [self.collectionView setDataSource:self.dataSource];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    [self.view addSubview:self.collectionView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
