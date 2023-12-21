from pymongo import MongoClient

#Creating a pymongo client
client = MongoClient('localhost', 27017)
uri = 'mongodb://flask_api_user:dbPass@db_mongo:27017/?authMechanism=DEFAULT&authSource=flask_api_db'
#Getting the database instance
db = client['mydb']
print("Database created........")

#Verification
print("List of databases after creating new one")
print(client.list_database_names())
