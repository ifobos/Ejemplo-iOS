//
//  repositorioItems.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "repositorioItems.h"

@implementation repositorioItems
static repositorioItems* instancia;

-(id)init
{
    if (self=[super init])
    {
        self.items=[[NSMutableArray alloc]init];
    }
    return self; 
}


+(repositorioItems*)sharedInstance
{
    if (instancia==Nil) {
        instancia=[[repositorioItems alloc] init];
    }
    return instancia;
}
@end
