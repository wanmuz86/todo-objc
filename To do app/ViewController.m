//
//  ViewController.m
//  To do app
//
//  Created by Wan Muzaffar on 18/03/2021.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *todos;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.todos = @[
    @{@"name":@"Makan",
      @"tempat": @"Food court"},
    @{@"name":@"Beli croissant",
      @"tempat":@"Baker Cottage"},
    @{@"name":@"Tengok Xiamoi",
      @"tempat":@"Xiaomi store"},
    @{@"name":@"Go home",
      @"tempat":@"Serdang"}
    ];


    
    // Do any additional setup after loading the view.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.todos[indexPath.row][@"name"];
    cell.detailTextLabel.text =
    self.todos[indexPath.row][@"tempat"];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  
    return self.todos.count;
}

- (IBAction)addPressed:(id)sender {
    
    UIAlertController* alertCtrl = [UIAlertController alertControllerWithTitle:@"Hello World" message:@"Hello jom break" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* okAction =
    [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alertCtrl addAction:okAction];
    [self presentViewController:alertCtrl animated:YES completion:nil];
    
}

@end
