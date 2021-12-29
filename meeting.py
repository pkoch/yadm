#!/usr/bin/env python3

from functools import partial, reduce
from pprint import pprint
from random import shuffle

def shuffled(l):
  """Calls `shuffle` on a fresh copy of `l`."""

  l = l[:]
  shuffle(l)
  return l

def pipe_value(value, *fns):
  return reduce(lambda v, f: f(v), fns, value)

def groups_of(n, l):
  """
  Splits `l` in groups of `n` elements or less.

  >>> groups_of(2, [1,2,3,4])
  [[1, 2], [3, 4]]

  >>> groups_of(3, [1,2,3,4])
  [[1, 2, 3], [4]]

  >>> groups_of(3, [])
  []

  >>> groups_of(0, [])
  Traceback (most recent call last):
    ...
  AssertionError
  """

  assert n > 0

  if len(l) == 0: return []

  return [l[:n]] + groups_of(n, l[n:])

people = [
  'Andrew',
  'Bidu',
  'Dominic',
  'Lucia',
  'Modasser',
  'Oleg',
  'Thomas',
  'pkoch',
  'PotHix',
]

pipe_value(
  people,
  shuffled,
  partial(groups_of, 3),
  pprint,
)
