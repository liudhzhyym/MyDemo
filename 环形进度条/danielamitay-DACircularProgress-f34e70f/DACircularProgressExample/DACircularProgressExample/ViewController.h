//
//  ViewController.h
//  DACircularProgressExample
//
//  Created by Daniel Amitay on 2/6/12.
//  Copyright (c) 2012 Daniel Amitay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DACircularProgressView.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) DACircularProgressView *progressView;
@property (strong, nonatomic) DACircularProgressView *largeProgressView;
@property (strong, nonatomic) DACircularProgressView *largestProgressView;

@end
