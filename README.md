# Autonne-Takagi factorization for complex symmetric matrices

This code was originally written for the [RepLAB](https://github.com/replab/replab) toolbox but was not
needed in the end. I am thus releasing it under the LGPL license.

I have not seen any implementation of the hybrid method, but it seems to outperform the alternatives greatly.

The ``takagi_jacobi`` script could probably be optimized further by taking advantage of vectorization;
however, note that the particular implementation of the Jacobi rotations is done to minimize rounding
errors. Thus we have not tried to change it.

(C) Denis Rosset, 2021
