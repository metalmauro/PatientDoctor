//
//  main.m
//  PatientDoctor
//
//  Created by Matthew Mauro on 2016-11-03.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"
#import "Medication.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *matt = [[Patient alloc]init];
        Doctor *peter = [[Doctor alloc]init];
        [matt getSick];
        [matt visitDoctor:peter];
        BOOL order = [matt requestMedication:peter for:matt.symptoms];
        if(order == TRUE)
        {
            Medication *med = [peter perscribe:matt];
            [med heal:matt];
        }else{
            NSLog(@"Sorry, but you're not sick enough for medication");
        }
    }
    return 0;
}
