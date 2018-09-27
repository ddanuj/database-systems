# CSCI 585 Database Systems

## Homework 3 - Visualization of Spatial Data using Google Earth

In this homework, you are going to work with spatial data - you will create (generate/sample) some data, visualize it, do queries on it, and visualize the query results.
### Steps
- You need to create (generate) latitude,longitude pairs (ie. spatial coordinates) for 9 locations.
- Now that you have 9 coordinates and their label strings, you are going to create a KML file (.kml format, which is XML) out of them using a text editor. The .kml file with the 9 placemarks is going to be your starter file, for doing visualizations and queries.
- Download Google Earth on your laptop, install it, bring it up. Load your .kml file into it - that should show you your 9 sampled locations, on Google Earth's globe. Take a snapshot (screengrab) of this for submitting.
- You will use the spatial db software to execute the following two spatial queries that you'll write:
- - compute the convex hull for your 9 points [a convex hull for a set of 2D points is the smallest convex polygon that contains the point set].
- - compute the three nearest neighbors of your home/apt/dormroom location [look up the spatial function to do this].
- Bonus Question: Using SGM 123 as the center, compute (don't use GPS!) a set (sequence) of lat-long (ie. spatial) co-ordinates that lie along a pretty Spirograph(TM) curve.