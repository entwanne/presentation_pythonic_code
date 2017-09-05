# Zen of Python

## Zen of Python

* [PEP20](https://www.python.org/dev/peps/pep-0020/), *The Zen of Python*, écrite par Tim Peters, qui exprime les valeurs du langage.
* Elle énonce les règles suivant un poème.
* Accessible *via* l'instruction `import this`.

## Beautiful is better than ugly.

* Un bon code Python se doit d'être beau, agréable à regarder.
    * Les règles de style définissent plus précisément en quoi consiste un beau code.
* Expressions Python proches du langage naturel.

```python
if number > 0 and number not in invalid_numbers:
    ...
```

## Explicit is better than implicit.

* Chaque ligne de code doit être claire, non confuse.
* Les noms et constructions explicites améliorent la clarté.
* Exemple : appel explicite aux méthodes des classes parentes.

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

* Certaines structures du langage sont plus complexes que d'autres.
* L'application d'un décorateur, bien que syntaxiquement simple, fait intervenir des mécanismes complexes.

```python
@staticmethod
def method():
    ...
```

## Complex is better than complicated.

* Les deux termes sont différents :
    * « compliqué » se rapporte à l'utilisation, un code compliqué est difficile à relire/maintenir.
    * Un code complexe utilise des mécanismes avancés.
* L'application d'un décorateur n'est pas compliquée, mais complexe.

## Flat is better than nested.

* Éviter les niveaux d'imbrication trop importants.
* Exemple : placement des `return` dans les fonctions.

```python
def print_items(obj):
    if not hasattr(obj, 'items'):
        return
    for item in obj.items:
        print(item)
```

## Sparse is better than dense.

* Un code compréhensible est un code aéré.
* La syntaxe du langage se base sur l'indentation pour délimiter les blocs
* Les règles de style interdisent les multiples instructions sur une ligne.

## Readability counts.

* Plus de temps est passé à lire un code qu'à l'écrire.
* Le code doit être lisible facilement et rapidement.
* Exemple : choix judicieux des noms de fonctions et variables.

```python
def say_hello(*names):
    for name in names:
        print('Hello', name)
```

## Special cases aren't special enough to break the rules.

* Principe de cohérence : les mêmes règles s'appliquent pour tous.
* Un bout de code semblant sortir du lot ne déroge pas de ces règles.
* Exemple : un code avec un fort niveau d'imbrication doit rester lisible.

## Although practicality beats purity.

* Cette règle nuance la précédente et représente le bon sens.
* Il peut être nécessaire d'outrepasser les règles pour des raisons pratiques (performances).
* Cela doit rester anecdotique.

## Errors should never pass silently.

* Une erreur implique un problème.
* Ce problème ne doit jamais être masqué au développeur.

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

* Le développeur choisit d'ignorer certaines erreurs.
* Cela est fait de manière explicite.

```python
def division(a, b):
    try:
        return a / b
    except ZeroDivisionError:
        return float('nan')
```

## In the face of ambiguity, refuse the temptation to guess.

* Deviner implique un choix, qui ne sera pas le même pour tous.
* Si ce choix n'est pas clair, il n'est pas explicite.
* Exemple : dans le cas d'une addition entre un `int` et une `str`, quel résultat serait attendu ?

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

* Python suppose qu'il y a toujours une manière optimale de procéder.
* Celle-ci est préférable car évidente.
* Exemple : itérer sur un intervalle de nombres.

```python
for i in range(100):
    print(apply_func(i))
```

## Although that way may not be obvious at first unless you're Dutch.

* L'évidence n'est pas innée.
* Elle vient avec la pratique.
* Elle est dictée par cette *PEP*.
* La manière évidente est la plus idiomatique/pythonique.

## Now is better than never.

* La procrastination est l'ennemie du développeur Python.
* Une fonctionnalité manquante doit être implémentée maintenant.

## Although never is often better than *right* now.

* Mais assurez-vous que chaque fonctionnalité est nécessaire.
* Il est préférable de ne pas s'attarder sur une fonctionnalité peu utile.

## If the implementation is hard to explain, it's a bad idea.

* Une implémentation difficile à expliquer est compliquée.
* Le code produit sera compliqué.
* On préférera alors une implémentation plus simple.

## If the implementation is easy to explain, it may be a good idea.

* Être facile à expliquer ne suffit pas à en faire une bonne implémentation.
* Mais c'est déjà une bonne chose.
* Exemple : il est facile d'expliquer comment concaténer de multiples chaînes avec `+`, mais on lui préférera `str.join`.

```python
>>> tags = ['<html>', '<body>', '<p>', 'text',
...   '</p>', '</body>', '</html>']
>>> ''.join(tags)
'<html><body><p>text</p></body></html>'
```

## Namespaces are one honking great idea -- let's do more of those!

* Les paquets, modules et objets créent des espaces de noms.
* Ces espaces de noms divisent les classes et fonctions en ensembles logiques.
* Ils évitent les conflits de noms et permettent une meilleure organisation.

```python
>>> import math, cmath
>>> math.exp(0)
1.0
>>> cmath.exp(0)
(1+0j)
```

## Fin ?

* Le *Zen of Python* devait initialement contenir 20 directives.
* Où est passée la 20^ème^ ?
* S'agirait-il d'une ligne vide, évoquant l'aération ?
