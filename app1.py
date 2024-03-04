'''
Author: Rodenellie
Purpose: Troubleshoot 
Date: 03/03/2024
'''


from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}