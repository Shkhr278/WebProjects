const { MongoClient } = require("mongodb");

const uri = "mongodb://localhost:27017"; 
const dbName = "testDB";
const collectionName = "users"; 

async function aggregateUserData() {
    const client = new MongoClient(uri);

    try {
        await client.connect();
        console.log("Connected to MongoDB!");

        const db = client.db(dbName);
        const collection = db.collection(collectionName);

        const pipeline = [
            {
                $group: {
                    _id: "$city",
                    averageAge: { $avg: "$age" }
                }
            },
            {
                $sort: { averageAge: -1 }
            }
        ];

        const result = await collection.aggregate(pipeline).toArray();

        console.log("Average age by city (sorted):");
        result.forEach((entry) => {
            console.log(`City: ${entry._id}, Average Age: ${entry.averageAge.toFixed(2)}`);
        });
    } catch (error) {
        console.error("Error during aggregation:", error);
    } finally {
        await client.close();
    }
}

aggregateUserData();