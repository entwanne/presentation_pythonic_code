# Les mécanismes du langage

## Les mécanismes du langage

* De nombreux mécanismes existent en Python pour mettre en forme le code
* Un bon code se reconnaît par l'utilisation de ces mécanismes aux endroits opportuns.

## *Unpacking*

* Sert à assigner plusieurs variables en une instruction.
* Souvent présenté comme moyen d'échanger les valeurs de deux variables.

```python
>>> a = 5
>>> b = 2
>>> a, b = b, a
>>> print(a, b)
2 5
```

## *Unpacking*

* L'*unpacking* est plus puissant qu'une simple opération de *swap*.
* Gère tous types d'itérables ainsi que les structures imbriquées.

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

* Toute valeur Python peut s'évaluer comme un booléen.
* Il n'est alors pas nécessaire de convertir les valeurs en booléens dans mes conditions.
* `None`, `0` et les conteneurs vides (`''`, `()`, `[]`, `set()`, etc.) s'évaluent à `False`.
* Les autres nombres, les conteneurs non vides et toute valeur non explicitement fausse s'évaluent à `True`.

```python
if s:
    print("s n'est pas vide")
```

## Conditions

* L'usage des ternaires est à privilégier pour évaluer des expressions courtes.

```python
name = user.name if user is not None else 'anonymous'
```

## Boucle `for`

* Protocole d'itération de Python, mis en œuvre par la boucle `for`.
* Toujours préférer une boucle `for` pour itérer sur un ensemble d'éléments.
* Un `while` pour itérer est bien souvent synonyme d'une mauvaise conception.
* `for` ne se limite pas aux listes : dictionnaires, fichiers, intervalles de nombres (`range`), etc.

## Boucle `for`

* Structures plus complexes à base de `zip` et `enumerate`.

```python
names = ['Guido', 'Tim', 'Barry', 'Nick']
ages = [38, 15, 52, 33]

for i, (name, age) in enumerate(zip(names, ages)):
    print(i, name, age)
```

## Listes en intension

* Construction de listes par itération
* À privilégier, tant qu'elles ne nuisent pas à la lisibilité.

```python
squares = [i**2 for i in range(10)]
```

* Syntaxes similaires pour les ensembles ou les dictionnaires en intension.

```python
squares_set = {i**2 for i in range(10)}
squares_dict = {i: i**2 for i in range(10)}
```

## Générateurs

* Itérables qui se consomment à l'utilisation.
* À privilégier quand la représentation mémoire complète n'est pas utile.
* Exemple : si la liste `squares` sert simplement à calculer la somme des carrés, le stockage est inutile.

```python
sum_squares = sum(x**2 for x in range(10))
```

## Exceptions

* La gestion d'erreurs est réalisée par les exceptions, mais ces dernières ne se limitent pas aux erreurs.
    * Le protocole d'itération se base sur une exception `StopIteration` levée en fin de boucle
* Tout traitement défectueux doit remonter une exception adaptée au problème et en décrivant la raison.
* Les types d'exception sont hiérarchisés pour représenter différents niveaux d'abstraction.
* Dans une bibliothèque, il peut être intéressant de recréer une hiérarchie propre.
    * Exemple : `mylib.FieldMissingError` héritant de `mylib.ParseError` elle-même fille de `mylib.Error`.

## Exceptions

* De l'autre côté, les exceptions doivent être attrapées judicieusement.
* Ne pas être trop large (ni trop spécifique) dans le type renseigné.
* Exemple : pour gérer un champ manquant, on attrapera `mylib.FieldMissingError` plutôt que `mylib.Error`

## Décorateurs

* Un code idiomatique se reconnaît à l'utilisation des décorateurs de la bibliothèque standard : `staticmethod`, `classmethod`, `property`.
* La définition de nouveaux décorateurs ne doit avoir lieu que si elle permet un gain net de lisibilité.

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

* Manière élégante de gérer les ressources et leurs potentielles erreurs.
* À privilégier, dans tous les cas, notamment pour les fichiers.

```python
with open('hello.txt', 'w') as hello_file:
    print('Hello World!', file=hello_file)
```
