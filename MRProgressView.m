//
//  MRProgressView.m
//  RecipesDemo
//
//  Created by MASUD RANA on 2/20/16.
//  Copyright © 2016 MASUD RANA. All rights reserved.
//

#import "MRProgressView.h"

@implementation MRProgressView

+ (UIView*) createProgressView:(CGRect)frame messageText:(NSString*)text{
    UIView *loadView = [[UIView alloc] initWithFrame:frame];
    loadView.backgroundColor = [UIColor clearColor];
    
    UIActivityIndicatorView *activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    [loadView addSubview: activityView];
    activityView.center = CGPointMake(loadView.bounds.size.width/2, loadView.bounds.size.height*0.67);
    activityView.color = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    activityView.transform = CGAffineTransformMakeScale(1.3, 1.3);
    [activityView startAnimating];
    [activityView setHidesWhenStopped:YES];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    
    UILabel *lodingLable = [[UILabel alloc] initWithFrame:CGRectMake(0, loadView.bounds.size.height*0.69, loadView.bounds.size.width, 30)];
    lodingLable.text = text;
    lodingLable.textColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    lodingLable.textAlignment = NSTextAlignmentCenter;
    [lodingLable setAdjustsFontSizeToFitWidth:YES];
    lodingLable.font = [UIFont boldSystemFontOfSize:14];
    [loadView addSubview:lodingLable];
    
    return loadView;
}


@end
