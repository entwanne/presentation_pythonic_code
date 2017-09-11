# Les mécanismes du langage

## Les mécanismes du langage

* *Unpacking*.
* Conditions et ternaires.
* Boucle `for`.
* Listes en intension.
* Générateurs.
* Exceptions.
* Décorateurs.
* Gestionnaires de contexte.

## *Unpacking*

```python
>>> l = [0, (1, 2, {3: 'foo', 4: 'bar'}), 5]
>>> a, (b, c, (d, e)), f = l
>>> print(a, b, c, d, e, f)
0 1 2 3 4 5
>>> x, y, z = 'bar'
>>> print(x, y, z)
b a r
```

## Conditions

```python
if s:
    print("s n'est pas vide")
```

```python
name = user.name if user is not None else 'anonymous'
```

## Boucle `for`

```python
names = ['Alex', 'Alice', 'Bob']
ages = [45, 27, 74]

for name, age in zip(names, ages):
    print(name, age)

for i, (name, age) in enumerate(zip(names, ages)):
    print(i, name, age)
```

## Listes en intension

```python
squares = [i**2 for i in range(10)]
```

```python
squares_set = {i**2 for i in range(10)}
squares_dict = {i: i**2 for i in range(10)}
```

## Générateurs

```python
sum_squares = sum(x**2 for x in range(10))
```

## Décorateurs

```python
class Circle:
    def __init__(self, cx, cy, radius):
        self.cx, self.cy = cx, cy
        self.radius = radius

    @classmethod
    def from_diameter(cls, ax, ay, bx, by):
        cx, cy = (ax + bx) / 2, (ay + by) / 2
        diam = ((ax - bx)**2 + (ay - by)**2)**0.5
        return cls(cx, cy, diam / 2)

    @property
    def area(self):
        return math.pi * self.radius**2
```

## Gestionnaires de contextes

```python
with open('hello.txt', 'w') as hello_file:
    print('Hello World!', file=hello_file)
```
