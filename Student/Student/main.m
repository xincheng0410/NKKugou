//
//  main.m
//  Student
//
//  Created by neuedu on 15/8/5.
//  Copyright (c) 2015年 neuedu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
void text()
{
    Student * stu1 = [[Student alloc]initWithFirstName:@"fu" andSecondName:@"zhao"];
    Student * stu2 = [[Student alloc]initWithFirstName:@"cheng" andSecondName:@"xin"];
    Student * stu3 = [[Student alloc]initWithFirstName:@"fu" andSecondName:@"xie"];
    Student * stu4 = [[Student alloc]initWithFirstName:@"jiaxin" andSecondName:@"sun"];
    
    NSArray * array = [NSArray arrayWithObjects:stu1,stu2,stu3,stu4, nil];
    
    NSArray * new = [array sortedArrayUsingComparator:^NSComparisonResult(Student* obj1,Student* obj2) {
        NSComparisonResult ret = [obj1.firstName compare:obj2.firstName];
        switch (ret) {
            case NSOrderedAscending:
                
                break;
            case NSOrderedDescending:
                break;
            case NSOrderedSame:
                ret = [obj1.secondName compare:obj2.secondName];
                break;
            default:
                break;
        }
        return ret;
    }];
    NSLog(@"array is %@",array);
    NSLog(@"-----------------");
    NSLog(@"new is %@",new);
    


}
void text2()
{
    
    Student * stu1 = [[Student alloc]initWithFirstName:@"fu" andSecondName:@"zhao"];
    Student * stu2 = [[Student alloc]initWithFirstName:@"cheng" andSecondName:@"xin"];
    Student * stu3 = [[Student alloc]initWithFirstName:@"fu" andSecondName:@"xie"];
    Student * stu4 = [Student studentWithFirstName:@"jiaxin" andSecondName:@"sun"];
    //Student * stu4 = [[Student alloc]initWithFirstName:@"jiaxin" andSecondName:@"sun"];

    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:stu1,@"stu1",stu2,@"stu2",stu3,@"stu3", nil];
    
    [dict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        NSLog(@"key is %@,obj is %@",key,obj);
    }];
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        text();
        text2();
    
    
    }
    return 0;
}
