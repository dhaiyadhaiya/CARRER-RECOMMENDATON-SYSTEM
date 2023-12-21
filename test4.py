from pymongo import MongoClient

client = MongoClient("mongodb://userName:password@localhost/sampledb")
db = client.sampledb
