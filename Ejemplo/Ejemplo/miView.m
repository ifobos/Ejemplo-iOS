//
//  miView.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "miView.h"

@implementation miView
@synthesize x;
@synthesize y;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    if (x==0 && y==0) {
        x=10;
        y=20;
    }
    UIImage * imagen = [UIImage imageNamed:@"apple.png"];
    [imagen drawAtPoint:CGPointMake(x, y)];
    
    NSString* Texto= @"Mi vista personalizada, Toca la pantalla!!";
    NSDictionary *atributos = @{NSFontAttributeName: [UIFont systemFontOfSize:12]};
    [Texto drawAtPoint: CGPointMake(3, 3) withAttributes: atributos];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([touches count]==1) {
        UITouch * toque = [touches anyObject];
        x = [toque locationInView:self].x;
        y = [toque locationInView:self].y;
        
        [self setNeedsDisplay];
        
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self touchesBegan:touches withEvent:event]; 
}

@end
