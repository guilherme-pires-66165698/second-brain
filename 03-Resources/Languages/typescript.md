# TypeScript

## Style
- ESLint + Prettier
- Strict mode enabled
- Use interfaces for object shapes

## Types

```typescript
interface User {
  id: number;
  name: string;
  email?: string;
}

type Status = 'pending' | 'active' | 'completed';
```

## Functions

```typescript
const processItems = (items: string[], limit = 10): Record<string, number> => {
  // implementation
};
```

## Async/Await

```typescript
const fetchData = async (url: string): Promise<Data> => {
  const response = await fetch(url);
  if (!response.ok) {
    throw new Error(`HTTP error: ${response.status}`);
  }
  return response.json();
};
```

## Null Safety
Use optional chaining and nullish coalescing:

```typescript
const name = user?.profile?.name ?? 'Anonymous';
```

## Prefer const
Always use const unless reassignment is needed.
