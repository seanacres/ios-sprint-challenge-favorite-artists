//
//  FavoriteArtistsTableViewController.m
//  FavoriteArtists
//
//  Created by Sean Acres on 8/2/20.
//  Copyright © 2020 Sean Acres. All rights reserved.
//

#import "FavoriteArtistsTableViewController.h"
#import "SMAFavoriteArtist.h"
#import "SMAFavoriteArtistController.h"

@interface FavoriteArtistsTableViewController ()

@property SMAFavoriteArtistController *favoriteArtistController;

@end

@implementation FavoriteArtistsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.favoriteArtistController = [[SMAFavoriteArtistController alloc] init];
}

- (IBAction)addNewArtistTapped:(id)sender {
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.favoriteArtistController.artists.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ArtistCell" forIndexPath:indexPath];
    
    SMAFavoriteArtist *artist = [self.favoriteArtistController.artists objectAtIndex:indexPath.row];
    
    cell.textLabel.text = artist.artistName;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Formed in: %.0f", artist.formationDate];
    
    return cell;
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
