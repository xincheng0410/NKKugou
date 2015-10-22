//
//  Student.h
//  Student
//
//  Created by neuedu on 15/8/5.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
 
@property(nonatomic,copy)NSString * firstName;
@property (nonatomic,copy) NSString *  secondName;
-(instancetype) initWithFirstName:(NSString*)first andSecondName:(NSString*)second;
+(instancetype) studentWithFirstName:(NSString*)first andSecondName:(NSString*)second;

@end
