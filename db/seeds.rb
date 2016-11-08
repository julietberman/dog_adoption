# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rescue.destroy_all
Dog.destroy_all

oph = Rescue.create(name: "Operation Paws for Homes", img_url: "https://pbs.twimg.com/profile_images/688122648375607297/dqSYjQOL.jpg", website: "ophrescue.org", state: "DC")

lucky_dog = Rescue.create(name: "Lucky Dog Animal Rescue", img_url: "https://pbs.twimg.com/profile_images/1153998652/Final_Color_Logo_3_.jpg", website: "luckydoganimalrescue.org", state: "VA")

city_dog = Rescue.create(name: "City Dogs Rescue", img_url: "http://www.citydogsrescuedc.org/uploads/9/0/0/2/9002059/1399409602.png", website: "citydogsrescuedc.org", state: "DC")

mutts_matter = Rescue.create(name: "Mutts Matter Rescue", img_url: "https://pbs.twimg.com/profile_images/604092311476277249/LWSRWLfv.jpg", website: "muttsmatterrescue.com", state: "MD")

pack_nine = Rescue.create(name: "Pack 9 Rescue", img_url: "http://www.pack9rescue.org/wp-content/uploads/PACaringForK9s-Logo_transparent_dropshadow_stroke.png", website: "pack9rescue.org", state: "PA")


oph.dogs.create([
  {name: "Jazz", age: "Adult", gender: "Female", breed: "Coonhound", img_url: "https://s3.amazonaws.com/ophrescue-production/dog_photo/15fc96bcca9e006050b05fa03308ee7551fdd73a.jpg?1478451082", status: "Available"},
  {name: "Sam", age: "Senior", gender: "Male", breed: "Spaniel", img_url: "https://s3.amazonaws.com/ophrescue-production/dog_photo/b5b465fc056a2e009390c4ca260b51de6b9b2e44.jpg?1478033672", status: "Adoption Pending"},
  {name: "Fiona", age: "Puppy", gender: "Female", breed: "American Bulldog", img_url: "https://s3.amazonaws.com/ophrescue-production/dog_photo/dc001f59b7c5e71817331c5adafaff1df0721127.JPG?1476743725", status: "Available"}
  ])

lucky_dog.dogs.create([
  {name: "Blue", age: "Adult", gender: "Female", breed: "Schnauzer", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/3152/pictures/animals/10760/10760084/40256931_500x750.jpg", status: "Available"},
  {name: "Cocoa", age: "Adult", gender: "Female", breed: "Labrador Retriever/Hound mix", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/3152/pictures/animals/10587/10587227/39210873_500x333.jpg", status: "Available"},
  {name: "Gulliver", age: "Puppy", gender: "Male", breed: "Labrador Retriever", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/3152/pictures/animals/10734/10734875/40269677_500x750.jpg", status: "Adoption Pending"}
  ])

city_dog.dogs.create([
  {name: "Charlie", age: "Adult", gender: "Male", breed: "English Shepherd", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/5120/pictures/animals/10451/10451671/38096133_329x466.jpg", status: "Needs Foster"},
  {name: "Wishbone", age: "Puppy", gender: "Male", breed: "Collie mix", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/5120/pictures/animals/10719/10719844/39981800_500x704.jpg", status: "Adoption Pending"},
  {name: "Doris", age: "Senior", gender: "Female", breed: "Shih Tzu", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/5120/pictures/animals/10639/10639755/39408421_500x333.jpg", status: "Available"}
  ])

mutts_matter.dogs.create([
  {name: "Humphrey", age: "Senior", gender: "Male", breed: "Pekingese/Pug mix", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/4684/pictures/animals/9443/9443473/34883461_500x490.jpg", status: "Available"},
  {name: "Dex", age: "Adult", gender: "Male", breed: "Scottish Terrier", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/4684/pictures/animals/10643/10643267/39432495_500x969.jpg", status: "Adoption Pending"},
  {name: "Izzy", age: "Puppy", gender: "Female", breed: "Labrador Retriever", img_url: "https://s3.amazonaws.com/filestore.rescuegroups.org/4684/pictures/animals/10654/10654385/39521453_500x369.jpg", status: "Available"}
  ])

pack_nine.dogs.create([
  {name: "Carter", age: "Puppy", gender: "Male", breed: "Shih Tzu", img_url: "http://www.pack9rescue.org/wp-content/uploads/14915395_10207725378034855_6608150276753558990_n.jpg", status: "Available"},
  {name: "Hope", age: "Puppy", gender: "Female", breed: "Labrador Retriever", img_url: "http://www.pack9rescue.org/wp-content/uploads/hope.jpg", status: "Available"},
  {name: "Elsa", age: "Puppy", gender: "Female", breed: "Great Dane", img_url: "http://www.pack9rescue.org/wp-content/uploads/else1-825x1024.jpg", status: "Available"}
  ])
