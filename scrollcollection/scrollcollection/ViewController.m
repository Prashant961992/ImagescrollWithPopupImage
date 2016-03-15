//
//  ViewController.m
//  scrollcollection
//
//  Created by Vizgro Tech on 3/15/16.
//  Copyright © 2016 Starline. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "scrollcollection-Swift.h"


@interface ViewController ()

@property ImageCache *ImageCache;
@property (nonatomic, strong) UIView *customAlert;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _collectionview.dataSource=self;
    _collectionview.delegate=self;
    _ImageCache =[[ImageCache alloc]init];
   // customeArray=[[NSArray alloc]initWithObjects:@"http://oi43.tinypic.com/25hz7sg.jpg",@"http://oi44.tinypic.com/16hvtok.jpg",@"http://www.google.com/intl/en_ALL/images/logo.png",@"https://www.gstatic.com/webp/gallery3/2.png",@"https://www.gstatic.com/webp/gallery3/2.png", nil];
    self.collectionview.backgroundColor=[UIColor whiteColor];
    customeArray = @[@[
                         @"http://oi43.tinypic.com/25hz7sg.jpg",
                         @"http://oi44.tinypic.com/16hvtok.jpg",
                         @"http://www.google.com/intl/en_ALL/images/logo.png",
                         @"https://www.gstatic.com/webp/gallery3/1.png",
                         @"https://www.gstatic.com/webp/gallery3/2.png"
                         ],
                        
                        @[
                         @"https://www.gstatic.com/webp/gallery3/3.png",
                         @"https://www.gstatic.com/webp/gallery3/5.png",
                         @"https://www.gstatic.com/webp/gallery3/4.png",
                         @"http://oi43.tinypic.com/25hz7sg.jpg",
                         @"http://oi44.tinypic.com/16hvtok.jpg",
                         @"http://www.google.com/intl/en_ALL/images/logo.png",
                         @"https://www.gstatic.com/webp/gallery3/1.png",
                         @"https://www.gstatic.com/webp/gallery3/2.png"
                         ]
                        ,
                        @[
                         @"http://www.gstatic.com/webp/gallery/1.jpg",
                         @"http://www.gstatic.com/webp/gallery/2.jpg",
                         @"http://www.gstatic.com/webp/gallery/3.jpg",
                         @"http://oi43.tinypic.com/25hz7sg.jpg",
                         @"http://oi44.tinypic.com/16hvtok.jpg",
                         @"http://www.google.com/intl/en_ALL/images/logo.png",
                         @"https://www.gstatic.com/webp/gallery3/1.png",
                         @"https://www.gstatic.com/webp/gallery3/2.png"
                         ],
                        @[
                         @"http://www.gstatic.com/webp/gallery/4.jpg",
                         @"http://www.gstatic.com/webp/gallery/5.jpg",
                         @"http://www.bbcode.org/images/lubeck_small.jpg",
                         @"http://oi43.tinypic.com/25hz7sg.jpg",
                         @"http://oi44.tinypic.com/16hvtok.jpg",
                         @"http://www.google.com/intl/en_ALL/images/logo.png",
                         @"https://www.gstatic.com/webp/gallery3/1.png",
                         @"https://www.gstatic.com/webp/gallery3/2.png"
                         ],
                        @[
                         @"http://www.fnordware.com/superpng/pnggrad16rgb.png",
                         @"https://www.gstatic.com/webp/gallery3/2.png",
                         @"http://oi43.tinypic.com/25hz7sg.jpg",
                         @"http://oi44.tinypic.com/16hvtok.jpg",
                         @"http://www.google.com/intl/en_ALL/images/logo.png",
                         @"https://www.gstatic.com/webp/gallery3/1.png",
                         @"https://www.gstatic.com/webp/gallery3/2.png"
                         
                         ],
                        @[
                         @"https://www.gstatic.com/webp/gallery3/3.png",
                         @"http://oi43.tinypic.com/25hz7sg.jpg",
                         @"http://oi44.tinypic.com/16hvtok.jpg",
                         @"http://www.google.com/intl/en_ALL/images/logo.png",
                         @"https://www.gstatic.com/webp/gallery3/1.png",
                         @"https://www.gstatic.com/webp/gallery3/2.png"
                         ]
                     ];
     
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [customeArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"CollectionViewCell" forIndexPath:indexPath];
    cell.backgroundColor=[UIColor whiteColor];
    
    UIScrollView *scroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0,0, self.collectionview.frame.size.width,110)];
  
    scroll.backgroundColor=[UIColor redColor];

    [cell addSubview:scroll];
    
    CGFloat xbase=10;
    
    NSArray *arrcount=[customeArray objectAtIndex:indexPath.row];
    
    for (int i=0; i<[arrcount count]; i++)
    {
        UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(xbase,7,100, 100)];
        imgView.layer.cornerRadius=5.0f;
        imgView.backgroundColor=[UIColor whiteColor];
        imgView.layer.borderColor=(__bridge CGColorRef _Nullable)([UIColor blackColor]);
        imgView.layer.borderWidth=5.0;
        
        NSString *str=[arrcount objectAtIndex:i];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button addTarget:self
                   action:@selector(aMethod:)
         forControlEvents:UIControlEventTouchUpInside];
        //button.layer.cornerRadius=50.0f;
        [button setTitle:str forState:UIControlStateNormal];
        button.frame = CGRectMake(xbase,7,100, 100);
       // button.backgroundColor=[UIColor blackColor];
        [scroll addSubview:button];
        xbase += 100 + 10;
        [scroll addSubview:imgView];
        
        
        UIActivityIndicatorView *indicator=[[UIActivityIndicatorView alloc]init];
        indicator.frame = CGRectMake(0, 0, 25, 25);
        indicator.color = [UIColor blackColor];
        indicator.center = imgView.center;
        [indicator startAnimating];
        [scroll addSubview:indicator];
        
        [[ImageCache sharedInstance]getImage:[NSURL URLWithString:str] completion:^(UIImage *imageview,NSError *error)
         {
             if (error==nil)
             {
                  imgView.image=imageview;
                  [indicator stopAnimating];
             }
             else
             {
                 NSLog(@"%@",error);
             }
         }];
    
    }
    scroll.contentSize= CGSizeMake(xbase, scroll.frame.size.height);
    return cell;
}

-(IBAction)aMethod:(id)sender
{
    NSString *str=[sender titleLabel].text;
    NSLog(@"%@",str);
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    _customAlert = [[UIView alloc] initWithFrame:screenRect];
    [_customAlert setClipsToBounds:YES];
    [self.view addSubview:_customAlert];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(Method:)
     forControlEvents:UIControlEventTouchUpInside];
    button.frame=screenRect;
  
    [_customAlert addSubview:button];
    
    UIView *popupview=[[UIView alloc]init];
    CGRect newFrame = popupview.frame;
    newFrame.size = CGSizeMake(200.0,200.0);
    popupview.frame = newFrame;
    [popupview setCenter:self.customAlert.center];
    popupview.backgroundColor=[UIColor whiteColor];
    
    UIImageView *imgView=[[UIImageView alloc]init];
    CGRect newFrame1 = imgView.frame;
    newFrame1.size = CGSizeMake(200.0,200.0);
    imgView.frame = newFrame1;
    imgView.layer.cornerRadius=0.5;
    imgView.backgroundColor=[UIColor whiteColor];
    imgView.layer.borderColor=(__bridge CGColorRef _Nullable)([UIColor blackColor]);
    imgView.layer.borderWidth=5.0;
    
    [[ImageCache sharedInstance]getImage:[NSURL URLWithString:str] completion:^(UIImage *imageview,NSError *error)
     {
         if (error==nil)
         {
             imgView.image=imageview;
         }
         else
         {
             NSLog(@"%@",error);
         }
     }];
    [popupview addSubview:imgView];
   
    
    [UIView animateWithDuration:0.3/1.5f delay:0 usingSpringWithDamping:0.7f initialSpringVelocity:3.0f options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.customAlert.backgroundColor=[UIColor colorWithRed:0.0f green:0.0f blue:0.0f alpha:0.4f];
        popupview.layer.opacity = 1.0f;
   
        popupview.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished)
    {
             popupview.layer.transform = CATransform3DMakeScale(1, 1, 1);
    }];
  //  [UIView beginAnimations:@"" context:nil];
    popupview.alpha = 0;
    [UIView animateWithDuration:0.1 animations:^{popupview.alpha = 1.0;}];
    CAKeyframeAnimation *bounceAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    bounceAnimation.values = @[@0.01f, @1.1f, @1.0f];
    bounceAnimation.keyTimes = @[@0.0f, @0.5f, @1.0f];
    bounceAnimation.duration = 0.2;
    [popupview.layer addAnimation:bounceAnimation forKey:@"bounce"];
    
    [_customAlert addSubview:popupview];
}
- (void)performContainerAnimation
{
    
    [UIView animateWithDuration:0.3/1.5f delay:0 usingSpringWithDamping:0.7f initialSpringVelocity:3.0f options:UIViewAnimationOptionAllowAnimatedContent animations:^{
        //self.containerView.center = self.center;
    } completion:^(BOOL finished) {
        
    }];
}
-(IBAction)Method:(id)sender
{
    [UIView animateWithDuration:0.15
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
                     
                         [self.customAlert removeFromSuperview];
                     }
                     completion:^(BOOL finished)
     {
     }];
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.collectionview.frame.size.width,120);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
