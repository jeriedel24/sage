# -*- coding: utf-8 -*-
r"""
Kasami code

This module implements a construction for the extended Kasami codes.
The "regular" Kasami codes are obtained from truncating the extended version.

REFERENCES:

- [BCN1989]_ pp. 358 for a definition.

AUTHORS:

- Ivo Maffei (2020-07-06): initial version
"""

#*****************************************************************************
#       Copyright (C) 2020 Ivo Maffei <ivomaffei@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#                  http://www.gnu.org/licenses/
#*****************************************************************************

from sage.rings.finite_rings.finite_field_constructor import GF
from sage.modules.free_module import VectorSpace
from sage.modules.free_module_element import vector
from sage.coding.linear_code import LinearCode


def extended_Kasami_code(const int s, const int t):
    r"""
    Return the extended Kasami code with parameters `s,t`.

    The extended Kasami code with parameters `(s,t)` is defined as

    .. MATH::

        \{ v \in GF(2)^s \mid
        \sum_{a \in GF(s)} v_a =
        \sum_{a \in GF(s)} a v_a =
        \sum_{a \in GF(s)} a^{t+1} v_a = 0 \}

    The only valid parameters `s,t` are given by the below, where `q` is a power of 2:
        * `s = q^{2j+1}`, `t = q^m` with `m \leq j` and `\gcd(m,2j+1) = 1`
        * `s = q^2`, `t=q`

    INPUT:

    - ``s,t`` -- (integers); powers of 2; parameters of the code

    OUTPUT:

    A ``LinearCode`` object as in :class:`sage.coding.linear_code.LinearCode`.

    EXAMPLES::

        sage: codes.extended_Kasami_code(8,2)
        [8, 1] linear code over GF(2)

        sage: codes.extended_Kasami_code(16,4)
        [16, 9] linear code over GF(2)
        sage: _.minimum_distance()
        4

        sage: codes.extended_Kasami_code(8,4)
        Traceback (most recent call last):
        ...
        ValueError: The parameters(=8,4) are invalid. Check the documentation

    The extended Kasami code is not the extension of the Kasami code::

        sage: C = codes.Kasami_code(16,4)
        sage: Cext = C.extended_code()
        sage: D = codes.extended_Kasami_code(16,4)
        sage: D.generator_matrix() == Cext.generator_matrix()
        False

    .. SEEALSO::

        :mod:`sage.coding.linear_code`.

    ALGORITHM:

    We generate spanning sets for the subspaces:
        * `\{v \in GF(2)^s \mid \sum_{a \in GF(s)} v_a = 0\}`
        * `\{v \in GF(2)^s \mid \sum_{a \in GF(s)} a v_a = 0\}`
        * `\{v \in GF(2)^s \mid \sum_{a \in GF(s)} a^{t+1} v_a = 0\}`

    Then we compute our codebook by taking the intersection of the above subspaces.

    REFERENCES:

    For more information on Kasami codes and their use see [BCN1989]_.

    TESTS::

        sage: C = codes.extended_Kasami_code(4,2)
        sage: C.generator_matrix()
        []

        sage: C = codes.extended_Kasami_code(8,2)
        sage: C.generator_matrix()
        [1 1 1 1 1 1 1 1]

        sage: C = codes.extended_Kasami_code(16,4)
        sage: C.generator_matrix()
        [1 0 0 0 0 0 0 0 0 1 0 0 1 1 1 1]
        [0 1 0 0 0 0 0 0 0 1 1 0 1 0 0 0]
        [0 0 1 0 0 0 0 0 0 0 1 1 0 1 0 0]
        [0 0 0 1 0 0 0 0 0 0 0 1 1 0 1 0]
        [0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 1]
        [0 0 0 0 0 1 0 0 0 1 1 0 1 1 1 0]
        [0 0 0 0 0 0 1 0 0 0 1 1 0 1 1 1]
        [0 0 0 0 0 0 0 1 0 1 1 1 0 0 1 1]
        [0 0 0 0 0 0 0 0 1 1 0 1 0 0 0 1]
    """
    from sage.arith.misc import is_prime_power, gcd


    # Check s,t are valid parameters
    (p,i) = is_prime_power(t,get_data=True)
    if p != 2:
        raise ValueError("The parameter t(={}) must be a power of 2".format(t))

    if s != t*t:
        # then we must have s=q^{2j+1} and t = q^m
        (p,k) = is_prime_power(s,get_data=True)
        if p != 2:
            raise ValueError("The parameter s(={}) must be a power of 2".format(s))

        # q= 2^l here l = gcd(k,i)
        l = gcd(i,k)
        q = 2**l
        m = i // l

        if (k//l) % 2 == 0:
            raise ValueError("The parameter s(={}) is invalid. Check the documentation".format(s))

        j = ((k//l) - 1) // 2

        # gcd(m,2*j+1) = gcd( i/l, k/l) = 1
        if m > j:
            raise ValueError("The parameters(={},{}) are invalid. Check the documentation".format(s,t))

    F2 = GF(2)
    V = VectorSpace(F2, s)
    elemsFs = [x for x in GF(s)]

    #we ensure that 0 is the first element of elemsFs
    if not elemsFs[0].is_zero():
        for i in range(s):
            if elemsFs[i].is_zero:
                a = elemsFs[0]
                elemsFs[0] = elemsFs[i]
                elemsFs[i] = a
                break

    FsToInt = { x : i for i,x in enumerate(elemsFs)}
    elemsFsT = [x**(t+1) for x in elemsFs]
    FsTToInt = { x: i for i,x in enumerate(elemsFsT)}

    e1 = [0]*s
    e1[0] = 1
    e1 = vector(F2,e1,immutable=True)

    W1_basis = []
    for i in range(s-1):
        v = [0]*s
        v[i] = 1
        v[s-1] = 1
        W1_basis.append(v)
    W1 = V.span(W1_basis) #W1 satisfies \sum v[i] = 0

    W2_basis = set([e1])#not really a basis...
    for i in range(1,s):#avoid x = 0
        x = elemsFs[i]
        for j in range(i+1,s):
            y = elemsFs[j]
            v = [0]*s
            v[i] = 1
            v[j] = 1
            v[ FsToInt[(x+y)] ] = 1
            v = vector(F2,v,immutable=True)
            W2_basis.add(v)
    W2 = V.span(W2_basis) #W2 satisfies \sum v[i]elemsFs[i] = 0


    W3_basis = set([e1]) #again not really a basis
    for i in range(1,s): #avoid x = 0^(t+1) = 0
        x = elemsFsT[i]
        for j in range(i+1,s):
            y = elemsFsT[j]
            v = [0]*s
            v[i] = 1
            v[j] = 1
            v[ FsTToInt[(x+y)] ] = 1
            v=vector(F2,v,immutable=True)
            W3_basis.add(v)
    W3 = V.span(W3_basis)

    W = W2.intersection(W3)
    codebook = W.intersection(W1)

    return LinearCode(codebook.basis_matrix())

def Kasami_code(const int s, const int t):
    r"""
    Return the Kasami code with parameters `s,t`.

    The Kasami code `(s,t)` is obtained from the extended
    Kasami code `(s,t)`, via truncation of all words.

    INPUT:

    - ``s,t`` -- (integers); powers of 2; parameters of the code

    OUTPUT:

    A ``LinearCode`` object as in :class:`sage.coding.linear_code.LinearCode`.

    EXAMPLES::

        sage: codes.Kasami_code(8,2)
        [7, 1] linear code over GF(2)

        sage: codes.Kasami_code(8,4)
        Traceback (most recent call last):
        ...
        ValueError: The parameters(=8,4) are invalid. Check the documentation

        sage: codes.Kasami_code(4,2)
        [3, 0] linear code over GF(2)

    The extended Kasami code is not the extension of the Kasami code::

        sage: C = codes.Kasami_code(16,4)
        sage: Cext = C.extended_code()
        sage: D = codes.extended_Kasami_code(16,4)
        sage: D.generator_matrix() == Cext.generator_matrix()
        False

    .. SEEALSO::

        :mod:`sage.coding.linear_code`,
        :meth:`sage.coding.kasami_codes.extended_Kasami_code`.

    REFERENCES:

    For more information on Kasami codes and their use see [BCN1989]_.

    TESTS::

        sage: C = codes.Kasami_code(8,2)
        sage: C.generator_matrix()
        [1 1 1 1 1 1 1]

        sage: C = codes.Kasami_code(4,2)
        sage: C.generator_matrix()
        []

        sage: C = codes.Kasami_code(16,4)
        sage: C.generator_matrix()
        [1 0 0 0 0 0 0 0 0 1 0 0 1 1 1]
        [0 1 0 0 0 0 0 0 0 1 1 0 1 0 0]
        [0 0 1 0 0 0 0 0 0 0 1 1 0 1 0]
        [0 0 0 1 0 0 0 0 0 0 0 1 1 0 1]
        [0 0 0 0 1 0 0 0 0 1 0 0 0 0 1]
        [0 0 0 0 0 1 0 0 0 1 1 0 1 1 1]
        [0 0 0 0 0 0 1 0 0 1 1 1 1 0 0]
        [0 0 0 0 0 0 0 1 0 0 1 1 1 1 0]
        [0 0 0 0 0 0 0 0 1 0 0 1 1 1 1]
    """
    C = extended_Kasami_code(s,t)
    codebook = [v[1:] for v in C.basis()]
    V = VectorSpace(GF(2),s-1)
    codebook = V.span(codebook)

    return LinearCode(codebook.basis_matrix())
