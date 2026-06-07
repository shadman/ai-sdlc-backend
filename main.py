from fastapi import FastAPI
app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Backend API running"}

@app.get("/docs")
def docs():
    return {"docs": "See /redoc or Swagger"}
