const fs = require('fs');
const csv = require('csv-parser');
const mongoose = require('mongoose');
const {Plant} = require('./models/plant');
console.log("ll");

const csvFilePath = 'C:/Users/ASUS/Downloads/s.csv';
const databaseURL = 'mongodb+srv://mohitbansal:mohit123@cluster0.ydqhs8k.mongodb.net/test?retryWrites=true&w=majority';
const databaseName = 'amazon_clone';

async function fun() {
    try {
        const conn = await mongoose.connect(databaseURL);
        console.log("Connection Successful");

        const tempObj = [];

        fs.createReadStream(csvFilePath)
            .pipe(csv())
            .on('data', (row) => {
                tempObj.push(row);
            })
            .on('end', async () => {
                console.log('CSV file successfully processed');
                console.log(tempObj);

                for (let i = 0; i < tempObj.length; i++) {
                    console.log(tempObj[i]);
                    const plant = new Plant(tempObj[i]);
                    await plant.save();
                }

                // Close the MongoDB connection after saving all documents
                mongoose.disconnect();
            });
    } catch (error) {
        console.error('Error connecting to MongoDB:', error);
    }
}

fun();
