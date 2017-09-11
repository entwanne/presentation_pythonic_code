# Zen of Python

## Zen of Python

* [PEP20](https://www.python.org/dev/peps/pep-0020/), *The Zen of Python*.
* Énonce les règles suivant un poème.
* Accessible *via* l'instruction `import this`.

## Beautiful is better than ugly.

```python
if number > 0 and number not in invalid_numbers:
    ...
```

## Explicit is better than implicit.

```python
class User:
    def __init__(self, name):
        self.name = name

class SecureUser(User):
    def __init__(self, name, password):
        super().__init__(name)
        self.password = password
```

## Simple is better than complex.

```python
@staticmethod
def method():
    ...
```

## Flat is better than nested.

```python
def print_items(obj):
    if not hasattr(obj, 'items'):
        return
    for item in obj.items:
        print(item)
```

## Readability counts.

```python
def reset_password(*users, password=''):
    for user in users:
        user.password = password
```

## Errors should never pass silently.

```python
>>> def division(a, b):
...     return a / b
...
>>> division(1, 0)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "<stdin>", line 2, in division
ZeroDivisionError: division by zero
```

## Unless explicitly silenced.

```python
def division(a, b):
    try:
        return a / b
    except ZeroDivisionError:
        return float('nan')
```

## In the face of ambiguity, refuse the temptation to guess.

```python
>>> a = '5'
>>> a + 1
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: Can´t convert 'int' object to str implicitly
>>> int(a) + 1
6
>>> a + str(1)
'51'
```

## There should be one -- and preferably only one -- obvious way to do it.

```python
for i in range(100):
    print(apply_func(i))
```

## If the implementation is easy to explain, it may be a good idea.

```python
>>> tags = ['<html>', '<body>', '<p>', 'text',
...   '</p>', '</body>', '</html>']
>>> ''.join(tags)
'<html><body><p>text</p></body></html>'
```

## Namespaces are one honking great idea -- let's do more of those!

```python
>>> import math, cmath
>>> math.exp(0)
1.0
>>> cmath.exp(0)
(1+0j)
```
