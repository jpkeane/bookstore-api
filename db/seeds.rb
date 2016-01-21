pub1 = PublishingHouse.find_or_create_by!(name: "ABC Publisher", discount: 0.4)
pub2 = PublishingHouse.find_or_create_by!(name: "Acme Publishing House", discount: 0.5)
pub3 = PublishingHouse.find_or_create_by!(name: "Foobar Corporation", discount: 0.0)

author1 = Author.find_or_create_by!(name: "James Jackson")
author2 = Author.find_or_create_by!(name: "Roberta Rock")
author3 = Author.find_or_create_by!(name: "Daniel Duck")
author4 = Author.find_or_create_by!(name: "Amanda Djidjinski")
author5 = Author.find_or_create_by!(name: "Zoe Zack")
author6 = Author.find_or_create_by!(name: "Bill Burray")
author7 = Author.find_or_create_by!(name: "Charlie Chuck")

book2 = Book.find_or_create_by!(title: "Saving Myself", price: 14.13, author: author6, publisher: pub1)

booka = Book.find_or_create_by!(title: "Something for Later", price: 13.32, author: author1, publisher: author1)