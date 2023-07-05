import os
from dotenv import load_dotenv

load_dotenv()

GCP_PROJECT_ID = os.getenv('GCP_PROJECT_ID')
SERVICE_ACCOUNT_FILE = os.getenv('SERVICE_ACCOUNT_FILE')
STORAGE_BUCKET_NAME = os.getenv('STORAGE_BUCKET_NAME')

POSTGRES_PASSWORD= os.getenv('POSTGRES_PASSWORD')
POSTGRES_USER= os.getenv('POSTGRES_USER')
POSTGRES_HOST= os.getenv("POSTGRES_HOST")
POSTGRES_PORT= os.getenv('POSTGRES_PORT')

if __name__ == '__main__':
    print(
        POSTGRES_PASSWORD, 
        POSTGRES_USER, 
        POSTGRES_HOST, 
        POSTGRES_PORT
        )
