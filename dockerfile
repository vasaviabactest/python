FROM python:3.8
COPY requirements.txt .
Run pip install -r requirements.txt
Run python -c "import nltk; nltk.download('omw-1.4'); nltk.download('wordnet')"
 
COPY . .
 
EXPOSE 5000
 
CMD ["flask", "run", "--host=0.0.0.", "--port=5000"]
