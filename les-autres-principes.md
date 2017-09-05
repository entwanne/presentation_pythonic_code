# Les autres principes

## Les autres principes

* Autres principes à appliquer lors de l'écriture d'un code Python.
* Ils complètent les règles énoncées par la PEP20.

## Keep it simple, stupid (KISS)

* Semblable au *Simple is better than complexe*.
* Écrire le code le plus simple possible.
* La syntaxe même du langage est simple : peu de constructions différentes.
* Dédier les fonctions, classes et méthodes à une unique responsabilité.
* Ne pas écrire de classes inutiles, de hiérarchie trop complexe (penser au *duck-typing*).

## Don't repeat yourself (DRY)

* Un code dupliqué est plus difficile à maintenir.
* Chaque modification doit être répercutée sur les autres occurrence du code.
* Une même ligne répétée à deux endroits du code est acceptable.
* Au-delà (plus de lignes, plus d'occurrences), il est nécessaire de factoriser.

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

## You ain't gonna need it (YAGNI)

* Ligne de conduite pour le processus de développement.
* Ne pas développer maintenant une fonctonnalité qui ne servira peut-être jamais.
* Une fonctionnalité définie trop tôt restera inconnue (car inutilisée) et devra être maintenue.
* Elle ne correspondra plus forcément au besoin quand ce dernier se présentera.

## We're all consenting adults here

* Les développeurs sont conscients et responsables de leurs actes.
* Exemple : protection des attributs en Python par un `_`.
* Il s'agit d'une indication et non d'une contrainte technique.

```python
class MyObject:
    def __init__(self):
        self._internal = 'internal state'

obj = MyObject()
print(obj._internal)
```

## Easier to ask forgiveness than permission (EAFP)

* Lorsqu'une ligne peut échouer, on préfère l'essayer puis traiter les éventuelles erreurs.
* Cela évite les trop nombreuses préconditions.
* C'est plus sûr en Python car empêche certains problèmes de concurrence.
* Exemple : ouverture d'un fichier.

```python
try:
    with open('filename', 'r') as f:
        handle_file(f)
except FileNotFoundError as e:
    errlog('Fichier {!r} non trouvé', e.filename)
except PermissionError as e:
    errlog('Fichier {!r} non lisible', e.filename)
```
