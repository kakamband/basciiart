# _bASCIIart_  (o˘◡˘o)

Create your own ASCII art by uploading an image and watch it come to life in ASCII!

Simply upload an image and it'll be converted into ASCII. ᕕ( ᐕ )ᕗ

<button name="button" style="color: white; border: 1px solid white; background-color: black; border-radius: 20px; padding: 8px 23px; font-family: 'Space Mono', monospace;" onclick="https://basciiart.herokuapp.com/">give bASCIIart a whirl!</button>

## Features

![bASCIIart Associations](https://github.com/oisa/basciiart/blob/main/app/assets/images/1-screenshot.png)

##### Create ASCII art posts

Upload an image and see it be converted into ASCII and join the bASCIIart collection.

##### Like posts and leave comments on them

bASCIIart holds the ability for users to make comments and like posts.

##### Copy to clipboard

Users or visitors to the site can copy posts to their clipboards to funkify their docs or emails :)


## Technical breakdown

##### Ruby version

2.7.2

##### Dependencies

The ASCII conversion is being taken care of by the brilliant [asciiart](https://github.com/nodanaonlyzuul/asciiart) gem. For this gem to function, the project requires the inclusion of [rmagick](https://github.com/rmagick/rmagick).

[Cloudinary](https://github.com/cloudinary/cloudinary_gem) is also being utilised to store the images that are used to generate the images. In a future iteration, the plan is to remove the storage function (or incorporate a removal step) and replace the current method by temporarily storing image files to perform the conversion, then be discarded to minimise/remove the storage footprint on Cloudinary. For me this is particularly interesting due the the marked difference in file size between the image and the ASCII art output.

##### Database creation and associations

bASCIIart currently uses 4 databases:

1. Users
2. Posts (Beets)
3. Comments
4. Likes

They relate in the following ways:

![bASCIIart Associations](https://github.com/oisa/basciiart/blob/main/app/assets/images/3-associations.png)

##### Deployment

To run the project locally:

1. Download the repo and include the [Cloudinary](https://github.com/cloudinary/cloudinary_gem) and [asciiart](https://github.com/nodanaonlyzuul/asciiart) gems.
2. Run the seed data via `rails db:seed` to initial seed data that doesn't rely on Cloudinary.
3. Update your bash profile with your [Cloudinary API details](http://cloudinary.com/console/cloudinary.yml).


#### Shout outs

Shout out to [Joel](https://github.com/wofockham), [Stacey](https://github.com/StaceyBros) and [Guillaume](https://github.com/gcrk) for teaching and helping in such an amazing way - this really would not exist without these three - mucho gracias!

Lastly - thanks so much for the crew who built the [asciiart](https://github.com/nodanaonlyzuul/asciiart) gem! It truly was a _gem_ to work with and made the project so fun to build :)
