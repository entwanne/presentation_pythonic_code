# La bibliothèque standard

## La bibliothèque standard

* Bien connaître et exploiter au mieux la bibliothèque standard est la base du code iditiomatique.

## *Built-in*

* Connaître les [fonctions *built-in*](https://docs.python.org/3/library/functions.html) et leurs paramètres.
    * Notamment le paramètre `key` des fonctions `min`, `max` et `sorted`.
* [Types *built-in*](https://docs.python.org/3/library/stdtypes.html) et principales méthodes.
    * Méthode `format` des chaînes de caractères.

```python
print('{} + {} = {}'.format(2, 3, 2 + 3))
```

## *Built-in*

* Méthodes `get` et `setdefault` des dictionnaires.

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

* Constructeurs des conteneurs standards.

```python
>>> names = ['Guido', 'Tim', 'Barry', 'Nick']
>>> ages = [38, 15, 52, 33]
>>> list(enumerate(names))
[(0, 'Guido'), (1, 'Tim'), (2, 'Barry'), (3, 'Nick')]
>>> dict(zip(names, ages))
{'Tim': 15, 'Barry': 52, 'Guido': 38, 'Nick': 33}
```

* Hiérarchie des [exceptions *built-in*](https://docs.python.org/3/library/exceptions.html).
    * `TypeError`, `ValueError`, `IndexError`, `KeyError`, etc.

## Autres modules

* Structures de données supplémentaires dans le module [`collections`](https://docs.python.org/3/library/collections.html).
    * `OrderedDict`, `namedtuple`, `Counter`, ou encore `defaultdict`.

```python
>>> from collections import Counter
>>> names = ['Guido', 'Tim', 'Barry', 'Tim', 'Nick',
...   'Nick', 'Tim']
>>> count = Counter(names)
>>> count
Counter({'Tim': 3, 'Nick': 2, 'Guido': 1, 'Barry': 1})
>>> count['Nick']
2
>>> count['Robert']
0
```

## Autres modules

* [`itertools`](https://docs.python.org/3/library/itertools.html), mine d'or d'utilitaires pour les itérables.

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

## Autres modules

* [`functools`](https://docs.python.org/3/library/functools.html), utilitaires relatifs aux fonctions.
* [`operator`](https://docs.python.org/3/library/operator.html), opérateurs usuels sous forme de fonctions.

```python
>>> import functools, operator
>>> add_3 = functools.partial(operator.add, 3)
>>> add_3(5)
8
```

## Autres modules

* Bien utiliser ces modules permet de se conformer aux standards du langage.
* Suivant le domaine d'application, d'autres modules dédiés entreront en compte :
    * `re`, `math`, `random`, `urllib`, `datetime`, `struct`, etc.
* Référence complète de la bibliothèque standard : <https://docs.python.org/3/library/index.html>.
