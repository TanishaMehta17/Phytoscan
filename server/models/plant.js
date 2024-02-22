const mongoose = require("mongoose");

const plantSchema = mongoose.Schema({
  'ORIGINAL_NAME': {
    type: String,
    required: true,
    trim: true,
  },
  'BIOLOGICAL_NAME': {
    type: String,
    required: true,
    trim: true,
  },
  'MEDICAL_USE': {
    
      type: String,
      required: true,
    },
  'NORMAL_USE': {
    type: String,
    required: true,
  },
  'HARMFUL_EFFECT': {
    type: String,
    required: true,
  }
});

const Plant = mongoose.model("Plant", plantSchema);
module.exports = { Plant, plantSchema };
