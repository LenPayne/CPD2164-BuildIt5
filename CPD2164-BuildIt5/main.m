//
//  main.m
//  CPD2164-BuildIt5
//
//  Created by Len Payne on 2014-11-17.
//  Copyright (c) 2014 Len Payne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Worker.h"
#import "Workstation.h"
#import "Office.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Build It #1 - Person and Employee
        // =================================
        // Build a main method that builds an instance of
        // Employee, sets its name and number, and outputs both.
        NSLog(@"Build It #1 - Person and Employee");
        
        Employee* bob = [[Employee alloc] init];
        [bob setName:@"Bob"];
        [bob setEmpID:14];
        NSLog(@"Employee: #%d %@", [bob empID], [bob name]);
        
        // Build It #2 - Workers, Workstations and Offices
        // ===============================================
        // Build an office full of workstations and workers
        NSLog(@"Build It #2 - Workers, Workstations and Offices");
        
        Worker* jim = [[Worker alloc] init];
        jim.name = @"Jim";
        Worker* sue = [[Worker alloc] init];
        sue.name = @"Sue";
        
        Workstation* desk1 = [[Workstation alloc] init];
        desk1.location = @"A1";
        Workstation* desk2 = [[Workstation alloc] init];
        desk2.location = @"B3";

        desk1.user = jim;
        jim.desktop = desk1;
        
        desk2.user = sue;
        sue.desktop = desk2;
        
        Office* office = [[Office alloc] init];
        office.workstations = [[NSMutableArray alloc] init];
        [office.workstations addObject:desk1];
        [office.workstations addObject:desk2];
        
        for (int i = 0; i < [office.workstations count]; i++) {
            Workstation* thisDesk = office.workstations[i];
            Worker* thisUser = thisDesk.user;
            NSLog(@"Location: %@, User: %@", thisDesk.location, thisUser.name);
        }
        
        
    }
    return 0;
}
