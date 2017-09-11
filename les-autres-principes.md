# Les autres principes

## Les autres principes

* Keep it simple, stupid (KISS).
* Don't repeat yourself (DRY).
* You ain't gonna need it (YAGNI).
* We're all consenting adults here.
* Easier to ask forgiveness than permission (EAFP).

## Don't repeat yourself (DRY)

```python
import sys
import random

def errlog(template, *args):
    print(template.format(*args), file=sys.stderr)

secret = random.randint(0, 100)
guess = int(input('Entrez un nombre de 0 à 100: '))

if guess < secret:
    errlog('Nombre {} trop petit', guess)
elif guess > secret:
    errlog('Nombre {} trop grand', guess)
...
```

## We're all consenting adults here

```python
class MyObject:
    def __init__(self):
        self._internal = 'internal state'

obj = MyObject()
print(obj._internal)
```

## Easier to ask forgiveness than permission (EAFP)

```python
try:
    with open('filename', 'r') as f:
        handle_file(f)
except FileNotFoundError as e:
    errlog('Fichier {!r} non trouvé', e.filename)
except PermissionError as e:
    errlog('Fichier {!r} non lisible', e.filename)
```
