import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:5000/")

mydb = myclient["jobdb"]

mycol = mydb["admin"]

#print(myclient.list_database_names())
mydict = { "username": "admin", "password": "admin" }

x = mycol.insert_one(mydict)
