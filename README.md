# Real Estate Price Prediction

A machine learning web application that predicts home prices in Bangalore based on location, square footage, BHK, and bathroom count.

## Deployment on Render

### Prerequisites
1. GitHub account
2. Render account (free tier available)
3. Your project pushed to a GitHub repository

### Deployment Steps

1. **Push your code to GitHub:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/your-repo-name.git
   git push -u origin main
   ```

2. **Deploy on Render:**
   - Go to [render.com](https://render.com) and sign up/login
   - Click "New +" → "Web Service"
   - Connect your GitHub repository
   - Use these settings:
     - **Name**: real-estate-price-prediction
     - **Environment**: Python 3
     - **Build Command**: `pip install -r requirements.txt`
     - **Start Command**: `gunicorn --chdir Server server:app`
     - **Plan**: Free
   - Add environment variable:
     - **Key**: `PYTHONPATH`
     - **Value**: `./Server`

3. **Deploy:**
   - Click "Create Web Service"
   - Render will automatically build and deploy your application
   - Your app will be available at: `https://your-app-name.onrender.com`

### Project Structure
```
Real_Estate_Project/
├── Client/                 # Frontend files
│   ├── app.html           # Main HTML page
│   ├── app.css            # Styles
│   ├── app.js             # JavaScript logic
│   └── venice-3118803_1280.jpg
├── Server/                # Backend files
│   ├── server.py          # Flask application
│   ├── util.py            # ML utility functions
│   └── Artifacts/         # Model files
│       ├── columns.json
│       └── banglore_home_prices_model.pickle
├── requirements.txt       # Python dependencies
├── render.yaml           # Render configuration
└── README.md             # This file
```

### API Endpoints
- `GET /get_location_names` - Returns list of available locations
- `POST /predict_home_price` - Predicts home price based on input parameters

### Local Development
```bash
cd Server
python server.py
```
Visit `http://localhost:5000` to access the application.

### Notes
- The application uses a pre-trained machine learning model for price prediction
- CORS is enabled for cross-origin requests
- Static files are served from the Client directory
- The app runs on the PORT environment variable (Render sets this automatically)
