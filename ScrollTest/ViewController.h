//
//  ViewController.h
//  ScrollTest
//
//  Created by Milorad Orzes on 12/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HolderView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *holderView;
@property (weak, nonatomic) IBOutlet UIView *whiteView;
@property (strong, nonatomic) IBOutlet UIView *redView;

- (IBAction)segmentedControlTouched:(UISegmentedControl *)sender;

@end

