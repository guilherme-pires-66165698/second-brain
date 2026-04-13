# FastAPI

## Project Structure

```
src/
    main.py
    api/
        routes/
        dependencies.py
    models/
    services/
    core/
        config.py
```

## Basic App

```python
from fastapi import FastAPI
from contextlib import asynccontextmanager

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    yield
    # Shutdown

app = FastAPI(lifespan=lifespan)
```

## Routes

```python
from fastapi import APIRouter, Depends, HTTPException

router = APIRouter(prefix="/users", tags=["users"])

@router.get("/{user_id}", response_model=UserResponse)
async def get_user(user_id: int, db: Session = Depends(get_db)):
    user = await db.get(User, user_id)
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return user
```

## Pydantic Models

```python
from pydantic import BaseModel, Field

class UserCreate(BaseModel):
    name: str = Field(..., min_length=1, max_length=100)
    email: str

class UserResponse(UserCreate):
    id: int
    
    class Config:
        from_attributes = True
```

## Dependencies

```python
async def get_current_user(token: str = Depends(oauth2_scheme)) -> User:
    # validate token
    return user
```
