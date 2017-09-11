# La bibliothèque standard

## La bibliothèque standard

* Fonctions et types *built-in*.
* Module [`collections`](https://docs.python.org/3/library/collections.html).
* Module [`itertools`](https://docs.python.org/3/library/itertools.html).
* Module [`functools`](https://docs.python.org/3/library/functools.html).
* Module [`operator`](https://docs.python.org/3/library/operator.html).

## *Built-in*

```python
print('{} + {} = {}'.format(2, 3, 2 + 3))
```

```python
>>> database = {'foo': 123}
>>> database.get('bar')
>>> database.get('bar', 0)
0
>>> database.setdefault('letters', []).append('a')
>>> database.setdefault('letters', []).append('b')
>>> database
{'foo': 123, 'letters': ['a', 'b']}
```

## *Built-in*

```python
>>> names = ['Alex', 'Alice', 'Bob']
>>> ages = [45, 27, 74]
>>> list(enumerate(names))
[(0, 'Alex'), (1, 'Alice'), (2, 'Bob')]
>>> dict(zip(names, ages))
{'Alex': 45, 'Alice': 27, 'Bob': 74}
```

## `collections`

```python
>>> from collections import Counter
>>> names = ['Alice', 'Bob', 'Bob', 'Alice', 'Alex',
...   'Bob']
>>> count = Counter(names)
>>> count
Counter({'Bob': 3, 'Alice': 2, 'Alex': 1})
>>> count['Alice']
2
>>> count['Camille']
0
```

## `itertools`

```python
>>> from itertools import product
>>> for x, y in product(range(10), range(5)):
...     print('{} + {} = {}'.format(x, y, x + y))
...
0 + 0 = 0
0 + 1 = 1
...
9 + 3 = 12
9 + 4 = 13
```

## `functools`, `operator`


```python
>>> import functools, operator
>>> add_3 = functools.partial(operator.add, 3)
>>> add_3(5)
8
```
