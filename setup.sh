#!/bin/bash
echo "Installing PDF Summarizer..."

# Install system dependencies
sudo apt-get update
sudo apt-get install -y poppler-utils tesseract-ocr

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install Python packages
pip install --upgrade pip
pip install -r requirements.txt

# Download NLTK data
python -c "import nltk; nltk.download('punkt')"

echo "Installation complete!"
