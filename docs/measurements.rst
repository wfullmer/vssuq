.. _sec:measurements:

Measurements
============

Summary
-------

The table below gives the average rise time of the intruder particles for all experimental conditions.

+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
| :math:`U` (m/s) | :math:`M` (g) | intruders  | :math:`t_r^{(1)}` (s)      | :math:`t_r^{(2)}` (s)      | :math:`t_r^{(3)}` (s)      | :math:`t_r^{(4)}` (s)      | raw data                                               |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  1.83           |  177.46       | one  large |  7.503  :math:`\pm`  0.882 |  na                        |  na                        |  na                        | :download:`dl <../data/measurements/U183_M177_1L.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  1.83           |  177.46       | four large |  7.186  :math:`\pm`  1.039 |  7.924  :math:`\pm`  1.245 |  8.600  :math:`\pm`  2.134 |  9.378  :math:`\pm`  1.884 | :download:`dl <../data/measurements/U183_M177_4L.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  1.83           |  227.47       | one  large | 11.919  :math:`\pm`  0.939 |  na                        |  na                        |  na                        | :download:`dl <../data/measurements/U183_M227_1L.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  1.83           |  227.47       | four large |  9.211  :math:`\pm`  3.010 | 10.751  :math:`\pm`  1.446 | 12.756  :math:`\pm`  1.240 | 15.406  :math:`\pm`  1.799 | :download:`dl <../data/measurements/U183_M227_4L.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  1.99           |  177.46       | two  large |  5.866  :math:`\pm`  0.502 |  6.762  :math:`\pm`  0.485 |  na                        |  na                        | :download:`dl <../data/measurements/U199_M177_2L.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  2.14           |  177.46       | two  large |  5.491  :math:`\pm`  0.752 |  6.666  :math:`\pm`  0.838 |  na                        |  na                        | :download:`dl <../data/measurements/U214_M177_2L.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  2.14           |  177.46       | two  small |  9.640  :math:`\pm`  1.469 | 11.178  :math:`\pm`  1.177 |  na                        |  na                        | :download:`dl <../data/measurements/U214_M177_2S.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+
|  2.14           |  177.46       | four large |  5.152  :math:`\pm`  0.312 |  5.540  :math:`\pm`  0.487 |  6.123  :math:`\pm`  0.610 |  7.042  :math:`\pm`  0.812 | :download:`dl <../data/measurements/U214_M177_4L.txt>` |
+-----------------+---------------+------------+----------------------------+----------------------------+----------------------------+----------------------------+--------------------------------------------------------+


Comments
--------

*  Collapsed data: The original experiments played around with the position of
   intruder particle, specifically for one large intruder. It was found that
   there was no statistically significant difference between center and randomized
   placement. Therefore these two configurations have been collapsed here.
   Technically, the one large intruder, :math:`U = 1.82` (m/s), and
   :math:`M = 177.46` (g) and the first seven measurements of the
   :math:`M = 227.47` (g) conditions have a center placement. All other conditions
   have a random placement.
*  Excluded data: To further study the influence of the initial configuration,
   experiments were also conducted with the intruders placed in the corner of
   the bed and on top of a single layer of common glass beads. Unlike random
   *vs* center placement, these configurations affect the rise time. This data
   can be found in the Supplementary Material of
   `LaMarche, et al. (2022) <https://doi.org/10.1002/aic.17643>`_
*  Error bars on the :math:`t_r` mean values are 95% CIs determined from a *t*-test.
*  Raw ascii data processed with this simple :download:`octave script <../nbs/measurements/stat_rise_times.m>`
