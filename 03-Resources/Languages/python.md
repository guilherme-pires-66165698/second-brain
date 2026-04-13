# Python

## Style
- PEP 8 compliance
- Black formatter (line length 88)
- Ruff linter

## Type Hints
Always use type hints:

```python
def process_data(items: list[str], limit: int = 10) -> dict[str, int]:
    ...
```

## Data Classes
Prefer Pydantic or dataclasses:

```python
from pydantic import BaseModel

class User(BaseModel):
    id: int
    name: str
    email: str | None = None
```

## Async
Use async for I/O operations:

```python
async def fetch_data(url: str) -> dict:
    async with httpx.AsyncClient() as client:
        response = await client.get(url)
        return response.json()
```

## Error Handling

```python
try:
    result = do_something()
except SpecificError as e:
    logger.error(f"Operation failed: {e}")
    raise
```
