//
//  ViewController.m
//  parse
//
//  Created by ashish ranjan on 5/16/14.
//  Copyright (c) 2014 University of Cincinnati. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *usernameTextfiled;
@property (strong, nonatomic) IBOutlet UITextField *PasswordTextfield;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
////    
//    PFObject *login=[PFObject objectWithClassName:@"TextBookApp"];
//    login[@"name"]= self.usernameTextfiled.text;
//    login[@"password"]= self.PasswordTextfield.text;
//  [login saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
//      
//      
//      if(succeeded)
//      {
//          UIAlertView *alertview=[[UIAlertView alloc] initWithTitle:@"Save" message:@"You object saved" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
//          [alertview show];
//          NSLog(@"Login sucessfull");ss
//      }
//    
//     
//	// Do any additional setup after loading the view, typically from a nib.
//
//  }];
//error line to show login failed
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Saveinbutton:(UIButton *)sender {
    
    PFObject *login=[PFObject objectWithClassName:@"TextBookApp"];
    login[@"name"]= self.usernameTextfiled.text;
    login[@"password"]= self.PasswordTextfield.text;
    [login saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        
        
        if(succeeded)
        {
            UIAlertView *alertview=[[UIAlertView alloc] initWithTitle:@"Save" message:@"You object saved" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alertview show];
            NSLog(@"Login sucessfull");
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }];

    
    

}

@end
