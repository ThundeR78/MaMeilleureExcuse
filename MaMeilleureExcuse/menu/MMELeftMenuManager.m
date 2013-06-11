//
//  MMELeftMenuManager.m
//  MaMeilleureExcuse
//
//  Created by julien zerbit on 01/04/13.
//  Copyright (c) 2013 JulienS. All rights reserved.
//

#import "MMELeftMenuManager.h"
#import "MMELeftMenuViewController.h"

static MMELeftMenuViewController* sharedMenu = NULL;

@implementation MMELeftMenuManager

+(MMELeftMenuViewController*) sharedMenu
{
    //mettre synchronise
    //Si deux controller appellent très vite le sharedmenu il risque detre écrasé
    if(!sharedMenu)
    {
        sharedMenu = [[MMELeftMenuViewController alloc]initWithNibName:@"MMELeftMenuViewController" bundle:nil];
    }
    return sharedMenu;
}

-(void)destroyMenu
{
    [sharedMenu release];
    sharedMenu = nil;
}

@end
