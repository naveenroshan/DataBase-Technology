- Create Collection = 
    db.createCollection("mycollection")

- Insert Document = 
    db.COLLECTION_NAME.insert(document)

- Find Document = 
    db.COLLECTION_NAME.find({
    "name":"Peter"
    })

- Delete Document = 
    db.collection.deleteOne{
    "name":"Peter"
    })

- And Query in Document =  
    db.collection.find( {  
         $and: [
             {
                "name":"peter"
             },
             {
                 "mail":"peter@gmail.com"
             }
        ]
    })

- OR Query in Document =
    db.collection.find( {  
         $or: [
             {
                "name":"peter"
             },
             {
                 "mail":"peter@gmail.com"
             }
        ]
    })

- In Query in Document = 
    db.collection.find( 
             {
                "name":{
                    $in:["peter","Jhon"]
                }
             }
    )

- Update Document = db.collection.update(
    {
    "name":"jhon"
    },
    {
        $set :{
            "mail": "jhon@gmail.com"
        }
    }
)
