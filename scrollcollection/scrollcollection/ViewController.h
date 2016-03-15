//
//  ViewController.h
//  scrollcollection
//
//  Created by Vizgro Tech on 3/15/16.
//  Copyright © 2016 Starline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>
{
    NSArray *customeArray;
}

@property (strong, nonatomic) IBOutlet UICollectionView *collectionview;

@end

