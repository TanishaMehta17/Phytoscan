const fs = require('fs');
const csv = require('csv-parser');
const mongoose = require('mongoose');
const {Plant} = require('./models/plant');
require("dotenv").config();

async function fun() {
    try {
        const conn = await mongoose.connect(process.env.DB_URI);
        console.log("Connection Successful");

        const tempObj = [];

        fs.createReadStream(process.env.PLANT_DATA_FILE)
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
