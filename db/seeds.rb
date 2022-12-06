# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

                            ###### PRODUCTS #######
Product.create!([{user_id:1 , price: 1230, url:"https://img.seadn.io/files/baf9d61b61ffe6be242ffbf671602779.png?fit=max&w=1000" , description: "20,000 next-gen Avatars, by RTFKT and Takashi Murakami ", likes: 41,name: "CloneX #12308"},
{user_id: 1 , price: 250 ,url: "https://img.seadn.io/files/a0e47cffe4d7320bfdf2038ea3b7a3d9.png?fit=max&w=1000", description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami" , likes: 8, name:"CloneX #4972" },
{user_id:1 , price: 169,url: "https://img.seadn.io/files/a3ca5ad389e5accd86c97373caf09b61.png?fit=max&w=1000" , description:"20,000 next-gen Avatars, by RTFKT and Takashi Murakami", likes:13 ,name:"CloneX #6316"},
])

                            # t.integer :user_id
                            # t.float :price
                            # t.string :url
                            # t.text :description
                            # t.integer :like_count
                            # add_column :products, :name, :string
                            
                            ###### USERS ####### ##user 1 = creator of 3d jpegs, 
                            ###### PROFILE #######
                            ###### CATEGORY #######
                            ###### COMMENT #######
                            ###### LIKE #######