//
//  ViewController.m
//  iOSps8
//
//  Created by student on 05/12/2022.
//  Copyright © 2022 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)enter{
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Daniel";
    NSString *message;

    if([yourName length] == 0){
        yourName = @"World";
    }

    if([yourName isEqualToString:myName]){
        message = [NSString stringWithFormat:@"Hello %@! We have the same name:)", yourName];
    }
    else{
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }

    self.messageLabel.text = message;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.delegate = self;
        controller.surname = self.surnameTextField.text;
    
}

-(void) addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item{
    NSLog(@"This was returned from SecondViewController %@", item);
    self.surnameTextField.text = item;
}
    


@end
