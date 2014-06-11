FootballTeams
=============

An iOS sample project with a collection view that displays flags

###Step 1:Create a viewController
  - Create a FootballViewController
  - Add it to the rootViewController of the window 
    - Inside of a navigation controller
    
###Step 2:Create a datasource
  - You're going to add a collectionview to the viewController so you'll need a datasource
  - Create a subclass of NSObject called FootballCollectionViewDatasource
    - Add a registerCollectionView: method
    - Make sure it implements the required CollectionViewDatasource methods
      - Number of Items
      - Cell for Item
    
###Step 3:Add the Collection View to your View Controller
  - Add a collection view property to the view controller
  - Initialize and add the collection view to your view's subview
    - You'll need to initialize a FlowLayout a default layout should be fine
  - Add a datasource property to the view controller
  - Initialize the datasource in the init or viewdidload method
  - Set the collection view's datasource to the property datasource

###Step 4:Return data
  - Get the images from here:  http://cl.ly/0y162s2D2Y1h
    - Add them to the images folder
  - In the cellForItem method create an imageView with an image named:
    - [NSString stringWithFormat:@”%d”, indexPath.row + 1]
  - Add the image view to the cell

