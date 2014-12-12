//
//  HouseDrawing.m
//  Drawing a House
//
//  Created by Matthew Linaberry on 12/11/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "HouseDrawing.h"

@implementation HouseDrawing


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
//    Override the drawRect method and create a UIBezierPath to draw an outline for the house. The line width should be 2 and it should be a black stroke.
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(1/4.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height, 1/2.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    bezierPath.lineWidth = 2.0;
    [[UIColor yellowColor] setFill];
    [bezierPath fill];
    [bezierPath stroke];
    
    UIBezierPath *roofPath = [UIBezierPath bezierPath];
    roofPath.lineWidth = 2.0;
    [roofPath moveToPoint:CGPointMake(1/5.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [roofPath addLineToPoint:CGPointMake(1/2.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [roofPath addLineToPoint:CGPointMake(4/5.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height)];
    [roofPath closePath];
    [[UIColor redColor] setFill];
    [roofPath fill];
    [roofPath stroke];
    
    
//        
//        Extra Credit: Add a window, chimney and door to the house. Add fill colors to give the house a different color then the roof.
    
    UIBezierPath *doorPath = [UIBezierPath bezierPathWithRect:CGRectMake(3/8.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height, 1/4.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)];
    doorPath.lineWidth = 2.0;
    [[UIColor brownColor] setFill];
    [doorPath fill];
    [doorPath stroke];
//        
//        Notes
//        
//        Add a view to your storyboard and create a subclass of UIView to manage it. This way you will be able to override the drawRect method to draw a UIBezierPath on the screen.
//        Once you setup the points of the UIBezierPath using CGPointMake call the method stroke to draw the UIBezierPath on the screen.
}


@end
