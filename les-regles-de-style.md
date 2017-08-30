# Les règles de style

## Les règles de style

* Elles permettent d'assurer la lisibilité du code, par un socle commun à tout projet Python.
* Elles sont énoncées par la [PEP8](https://www.python.org/dev/peps/pep-0008/) et ne seront pas détaillées ici.
* Elles concernent la structuration, l'aération, le nommage.

## Les règles de style

* La cohérence comme premier principe.
    * S'adapter au style des bibliothèques utilisées.
* La lisibilité, toujours.
    * Ne pas appliquer une règle qui nuit à la lisibilité.
* Les commentaires sont importants pour la compréhension.
* Les *docstrings* le sont d'autant plus.
    * Accessibles de plus depuis l'aide d'une fonction (`help`)

```python
>>> def addition(a : int, b : int) -> int:
...     "Return the sum of numbers `a` and `b`."
...     return a + b
...
>>> help(addition)
```

## Les règles de style

* Outils pour analyser le code et son respect des conventions.
    * Les deux plus connus sont `pylint` et `flake8`.
