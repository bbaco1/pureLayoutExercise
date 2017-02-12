//
//  ViewController.m
//  ScrollTest
//
//  Created by Milorad Orzes on 12/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)segmentedControlTouched:(UISegmentedControl *)sender {
    [self removeSubviewsForHolderView];
    if (sender.selectedSegmentIndex == 1) {
        [self setupConstrainsForView:self.whiteView withSize:CGSizeMake(100, 400)];
    } else if (sender.selectedSegmentIndex == 2) {
        [self setupConstrainsForView:self.redView withSize:CGSizeMake(200, 100)];
    }
}

- (void)removeSubviewsForHolderView {
    for (UIView *view in self.holderView.subviews) {
        [view removeFromSuperview];
    }
}

- (void)setupConstrainsForView:(UIView *)view withSize:(CGSize)size {
    [self.holderView addSubview:view];
    [view autoSetDimensionsToSize:size];
    [view autoPinEdgesToSuperviewEdges];
}

@end
