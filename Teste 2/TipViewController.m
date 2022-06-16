//
//  TipViewController.m
//  Teste 2
//
//  Created by Gui David on 6/15/22.
//

#import "TipViewController.h"

@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipSegCtrl;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"Tapped");
    [self.view endEditing:true];
}

- (IBAction)updateTotal:(id)sender {
    double tipPercentages[] = {0.15, 0.18, 0.20};

    double selectedTipPercent = tipPercentages[self.tipSegCtrl.selectedSegmentIndex];
    
    double billDouble = [self.billField.text doubleValue];
    double total = (selectedTipPercent + 1) * billDouble;
    
    // + self.billField;
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", (selectedTipPercent * billDouble)];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
