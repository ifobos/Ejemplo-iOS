//
//  marcadorPosicionMapa.m
//  Ejemplo
//
//  Created by Juan Carlos Garcia Alfaro on 12/12/13.
//  Copyright (c) 2013 Juan Carlos Garcia Alfaro. All rights reserved.
//

#import "marcadorPosicionMapa.h"


@implementation marcadorPosicionMapa

@synthesize coordenada;
-(CLLocationCoordinate2D)coordinate
{
    return coordenada;
}

-(NSString *)title
{
    return @"Te encontre!!!";
}

-(NSString *)subtitle
{
    return @"Posicion segun coordenadas del equipo";
}


@end
