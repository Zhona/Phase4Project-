# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

 ###### USERS ####### ##user 1 = creator of 3d jpegs, 
 User.create!(username:"RTFKT" ,email: "rtfkt@gmail.com", password: "bronco" , avatar: "https://ichef.bbci.co.uk/news/976/cpsprodpb/0C47/production/_121134130_ye_getty.jpg") #user 1 is the creator of all 3d jpeg 
 User.create!(username:"KPR", email: "kpr@yahoo.com", password: "jimmyjohn", avatar: "http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcRoDpC6H1YXF3kJCkTW34vx24mzgeqko1nLVPPTylrOH-_3xzQsgaImHcHNPPrulWrlWEVNNZqOxISGnAA") #user 2 aka creator of all 2d nft 
 User.create!(username:"Elmo", email: "elmo@gmail.com", password: "helloWorld", avatar: "https://media.npr.org/assets/img/2022/01/04/ap_862432864149-4d5ff9168210d99b12e590df1e831eafe0ab626f-s1100-c50.jpg")
                            ###### PRODUCTS #######
Product.create!(user_id:1 , price: 1230, url:"https://img.seadn.io/files/baf9d61b61ffe6be242ffbf671602779.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count: 41, name: "CloneX #12308")
Product.create!(user_id:1 , price: 250 ,url: "https://img.seadn.io/files/a0e47cffe4d7320bfdf2038ea3b7a3d9.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami" , like_count: 8 , name:"CloneX #4972")
Product.create!(user_id:1 , price: 169 ,url: "https://img.seadn.io/files/a3ca5ad389e5accd86c97373caf09b61.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count: 13 ,name:"CloneX #6316")
Product.create!(user_id:1 , price: 150 ,url: "https://img.seadn.io/files/8faa874b9aa48e86a0b737753541030e.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count: 18,name:"CloneX #16509") #4
Product.create!(user_id:1 , price: 123 ,url: "https://img.seadn.io/files/e49011005196c6ffba2fb522607892d4.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count:43,name:"CloneX #7927")
Product.create!(user_id:1 , price: 69 ,url: "https://img.seadn.io/files/fdd5936618f783f568e44e2850ddaf89.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count:20,name:"CloneX #16363")
Product.create!(user_id:1 , price: 30 ,url: "https://img.seadn.io/files/5c3c9b87d32fc45d86124c9eb1017b78.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count:10,name:"CloneX #11154")
Product.create!(user_id:1 , price: 29.9,url: "https://img.seadn.io/files/81a969ef1080fccf5567a3c65f957643.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count:5,name:"CloneX #17799") #8
Product.create!(user_id:1 , price:29,url: "https://img.seadn.io/files/e9a19e930aa02f07c7ade648875bfd8e.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count:19,name:"CloneX #11274")
Product.create!(user_id:1 , price:30,url: "https://img.seadn.io/files/5c3c9b87d32fc45d86124c9eb1017b78.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", like_count:10,name:"CloneX #11154")#10 
# 2d images 
Product.create!(user_id:2 , price: 0.1992,url: "https://img.seadn.io/files/1bd9f0863a4626c3811061db9b8a982a.png?fit=max&w=1000" , description:"Tech avatars, by KPR and Martha Stewart", like_count: 49,name:"Keeper #3443")#11
Product.create!(user_id:2 , price:0.2, url: "https://img.seadn.io/files/e2bad7b594f6250ab0c9a52a680fe02f.png?fit=max&w=1000" , description:"Tech avatars, by KPR and Elon Musk", like_count: 5,name:"Keeper #3527") 
Product.create!(user_id:2 , price: 0.2008, url: "https://img.seadn.io/files/b2e7b704770298e4ffbc8a3b5e520cc5.png?fit=max&w=1000" , description:"Tech avatars, by KPR ans Shawn Mendes", like_count:3 ,name:"Keeper #2829") #13
Product.create!(user_id:2 , price:0.149, url: "https://i.seadn.io/gae/c8MoUNGryCKjOAQvIMj39qIgP7jXnvBvOAvSYn18B9RCRHxSMSwVaVJOh_OfmG9E4_S1_niAu9fyjqFq9OMBVH7-Yuyi71dUDqSDmw?auto=format&w=1000" , description:"Tech avatars, by KPR and Fire", like_count: 3 ,name:"KEEPER #4804") 
Product.create!(user_id:2 , price:0.4324, url: "https://i.seadn.io/gae/sWZVnT_1wB59MRWYQDBhTEg2pcirdZ_pG2V-_giDwXsbMkDUJx5uVTHBShjl8Bo3aIkBdqy982-NrEvFMdR7_IyyLAqxwJiLIaHz?auto=format&w=1000" , description:"Tech avatars, by KPR  and Doja Cat", like_count: 4,name:"KEEPER #9002")#15 
Product.create!(user_id:2 , price:0.229, url: "https://i.seadn.io/gae/KJ3NblMZIL3_euMtVi5UdW5fGAxA6hbKAzYoZaZBqUMzIGlhCtocnn8ll2LqqqLWUCTMoNgMdPajqAh1unFd8kuKU1wjlR0Cdnothg?auto=format&w=1000" , description:"Tech avatars, by KPR and StarWars", like_count: 2,name:"Keeper #1486") 
Product.create!(user_id:2 , price:0.15, url: "https://i.seadn.io/gae/U-A5iSO-4JVPTstouOIflvSiojrVj_rD7Kwel2YhDqPheznEkxEmYY_0VlfOQqub1L5KVdaX3W_7x662iflFK46g7gyBxzCEOcLb?auto=format&w=1000" , description:"Tech avatars, by KPR and fire boy from demon slayer", like_count: 2,name:"Keeper #6202") 
Product.create!(user_id:2 , price:0.149, url: "https://i.seadn.io/gae/4OApFMYQIxenf7-FgrDpmgknOCRvah4OV5TFhr6BhsI99Ub-O4pAcbN835UC8a8ZKKEeQktWTHNxzUE4SpP03Mm9BaMAShsSR4r9ElA?auto=format&w=1000" , description:"Tech avatars, by KPR and Lisa", like_count: 2,name:"Keeper #153") 
Product.create!(user_id:2 , price:0.2452, url: "https://i.seadn.io/gae/WtwJEiaIH9vetIFQUBtgdQLD6MZ_0jyHIC0w7pnChZo1jHAZnE_rVAAlFv276w35F99wQlHyLFJfT0Y-_6PqQRj7KFYTFwcvnmPL4g?auto=format&w=1000" , description:"Tech avatars, by KPR and League of Legends", like_count: 3,name:"Keeper #9172") 
Product.create!(user_id:2 , price:0.249, url: "https://i.seadn.io/gae/zSeq05JL9pdf4gErPZPC4NvqerU6bG7N_qcsGKfXeHpov14hqan_gz1n3ITW2TrsgaJGA6YXclGxEK0RQGf-sIaYQnN2kzRyP8kCtJ0?auto=format&w=1000" , description:"Tech avatars, by KPR and the hood", like_count:5,name:"Keeper #7329") #20
                            ###### PROFILE #######
# Profile.create!(user_id: 1,first_name: "Takashi", Last_name: "Murakami", email:"TK@gmail.com", password_digest:"DonaldDuck")
# Profile.create!(user_id: 2,first_name: "Keeper", Last_name:"number", email: "KN@gmail.com", password_digest: "NIssan")
                            ###### CATEGORY #######
Category.create!(is3d: true, product_id:1 )#1
Category.create!(is3d: true, product_id:2 )
Category.create!(is3d: true, product_id:3 )
Category.create!(is3d: true, product_id:4 )
Category.create!(is3d: true, product_id:5 )#5
Category.create!(is3d: true, product_id:6 )
Category.create!(is3d: true, product_id:7 )
Category.create!(is3d: true, product_id:8 )
Category.create!(is3d: true, product_id:9 )
Category.create!(is3d: true, product_id:10 )#10
#2d jpegs 
Category.create!(is3d: false, product_id: 11)#11
Category.create!(is3d: false, product_id: 12)#12
Category.create!(is3d: false, product_id: 13)#13
Category.create!(is3d: false, product_id: 14)#14
Category.create!(is3d: false, product_id: 15)#15
Category.create!(is3d: false, product_id: 16)
Category.create!(is3d: false, product_id: 17)
Category.create!(is3d: false, product_id: 18)
Category.create!(is3d: false, product_id: 19)
Category.create!(is3d: false, product_id: 20)
                            ###### COMMENT #######
Comment.create!(comments:"I love this piece, I know because I made it" , user_id: 1, product_id:1)
Comment.create!(comments:"OMG!! ELmo is on thw way to fight big yellow bird too!" , user_id: 3, product_id:13)
                            
                          