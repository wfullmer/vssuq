.. _sec:particleprops:

Particle Properties
===================

In this section we provide images of the empirical cumulative distribution 
function (eCDF) for the measured particle properties. Links to the raw data 
and octave scripts used to generate each image are provided with simple 
statistics for each eCDF. Properties include diameter (:math:`d_p`), 
restitution coefficient (:math:`e_{pp}`), friction coefficient 
(:math:`\mu_{pp}`), and sphericity (:math:`\Psi`), for the common glass beads 
and HDPE intruders.

Particle Diameter
-----------------  

common 
^^^^^^

.. image:: ../figs/particle_properties/dp_glass.png
   :scale:  32
   :alt: particle diameter E C D F of the common glass beads 

*  median  =  3122.9060
*  mean    =  3101.3435
*  stdev   =   187.1664
*  95 CI   =    51.5894
*  :download:`raw data <../data/particle_properties/dp_glass.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_dp_glass.m>` (octave)


large intruder
^^^^^^^^^^^^^^

.. image:: ../figs/particle_properties/dp_hdpe_l.png
   :scale:  32
   :alt: particle diameter E C D F of the large H D P E intruders 

*  median  =  9467.0242
*  mean    =  9430.4494
*  stdev   =   118.4190
*  95 CI   =    40.6783
*  :download:`raw data <../data/particle_properties/dp_hdpe_l.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_dp_hdpe_l.m>` (octave)

small intruder
^^^^^^^^^^^^^^

.. image:: ../figs/particle_properties/dp_hdpe_s.png
   :scale:  32
   :alt: particle diameter E C D F of the small H D P E intruders 

*  median  =  3150.9098
*  mean    =  3154.8691
*  stdev   =    31.9635
*  95 CI   =     9.8369
*  :download:`raw data <../data/particle_properties/dp_hdpe_s.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_dp_hdpe_s.m>` (octave)


Density
-------


glass 
^^^^^

.. image:: ../figs/particle_properties/rhop_glass.png
   :scale:  32
   :alt: particle density E C D F of the common glass beads 

*  median  =  2508.0000
*  mean    =  2522.3478
*  stdev   =   125.5905
*  95 CI   =    54.3094
*  :download:`raw data <../data/particle_properties/rhop_glass.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_rhop_glass.m>` (octave)

HDPE
^^^^

:math:`\rho_p = 941` |density|

Note: The HDPE particles were purchased from 
`McMaster-Carr <https://www.mcmaster.com/plastics/material~plastic/moisture-resistant-polyethylene-hdpe-balls/>`_
in 2017 which, at the time, listed the density for these HDPE beads as 941 
|density|. This falls at the lower end of the HDPE density range suggested 
suggested by `Khanam and AlMaadeed (2015) <https://doi.org/10.1179/2055035915Y.0000000002>`_ 
of 941 - 965 |density|, see Table 1. 



Restitution Coefficients
------------------------

glass-glass
^^^^^^^^^^^

.. image:: ../figs/particle_properties/epp_glass-glass.png
   :scale:  32
   :alt: particle-particle restitution coefficient E C D F for glass and glass particles

*  median  =     0.9714
*  mean    =     0.9696
*  stdev   =     0.0150
*  95 CI   =     0.0063
*  :download:`raw data <../data/particle_properties/epp_glass-glass.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_epp_glass_glass.m>` (octave)


glass-HDPE
^^^^^^^^^^

.. image:: ../figs/particle_properties/epp_glass-hdpe.png
   :scale:  32
   :alt: particle-particle restitution coefficient E C D F for glass and H D P E particles

*  median  =     0.8283
*  mean    =     0.8230
*  stdev   =     0.0172
*  95 CI   =     0.0047
*  :download:`raw data <../data/particle_properties/epp_glass-hdpe.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_epp_glass_hdpe.m>` (octave)

HDPE-HDPE
^^^^^^^^^

.. image:: ../figs/particle_properties/epp_hdpe-hdpe.png
   :scale:  32
   :alt: particle-particle restitution coefficient E C D F for H D P E and H D P E particles

*  median  =     0.8215
*  mean    =     0.8217
*  stdev   =     0.0155
*  95 CI   =     0.0044
*  :download:`raw data <../data/particle_properties/epp_hdpe-hdpe.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_epp_hdpe_hdpe.m>` (octave)

glass-wall
^^^^^^^^^^

.. image:: ../figs/particle_properties/epw_glass-acrylic.png
   :scale:  32
   :alt: particle-wall restitution coefficient E C D F for glass particles 

*  median  =     0.9642
*  mean    =     0.9549
*  stdev   =     0.0374
*  95 CI   =     0.0055
*  :download:`raw data <../data/particle_properties/epw_glass-acrylic.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_epw_glass.m>` (octave)


Friction Coefficients
---------------------

glass-glass
^^^^^^^^^^^

.. image:: ../figs/particle_properties/mupp_glass-glass.png
   :scale:  32
   :alt: particle-particle friction coefficient E C D F for glass and glass particles

*  median  =     0.2623
*  mean    =     0.2736 
*  stdev   =     0.0674
*  95 CI   =     0.0152
*  :download:`raw data <../data/particle_properties/mupp_glass-glass.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_mupp_glass_glass.m>` (octave)

glass-HDPE
^^^^^^^^^^

.. image:: ../figs/particle_properties/mupp_glass-hdpe.png
   :scale:  32
   :alt: particle-particle friction coefficient E C D F for glass and HDPE particles

*  median  =     0.2991
*  mean    =     0.3041
*  stdev   =     0.0742
*  95 CI   =     0.0192
*  :download:`raw data <../data/particle_properties/mupp_glass-hdpe.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_mupp_glass_hdpe.m>` (octave)

HDPE-HDPE
^^^^^^^^^

.. image:: ../figs/particle_properties/mupp_hdpe-hdpe.png
   :scale:  32
   :alt: particle-particle friction coefficient E C D F for glass and H D P E particles

*  median  =     0.3792
*  mean    =     0.3768
*  stdev   =     0.0279
*  95 CI   =     0.0076
*  :download:`raw data <../data/particle_properties/mupp_hdpe-hdpe.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_mupp_hdpe_hdpe.m>` (octave)


glass-wall
^^^^^^^^^^

.. image:: ../figs/particle_properties/mupw_glass-acrylic.png
   :scale:  32
   :alt: particle-wall friction coefficient E C D F for glass

*  median  =     0.2490
*  mean    =     0.2514
*  stdev   =     0.0756
*  95 CI   =     0.0204
*  :download:`raw data <../data/particle_properties/mupw_glass-acrylic.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_mupw_glass.m>` (octave)


Sphericity
----------  

common 
^^^^^^

.. image:: ../figs/particle_properties/psi_glass.png
   :scale:  32
   :alt: particle diameter E C D F of the common glass beads 

*  median  =     0.9435
*  mean    =     0.9393
*  stdev   =     0.0167
*  95 CI   =     0.0046
*  :download:`raw data <../data/particle_properties/psi_glass.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_psi_glass.m>` (octave)


large intruder
^^^^^^^^^^^^^^

.. image:: ../figs/particle_properties/psi_hdpe_l.png
   :scale:  32
   :alt: particle diameter E C D F of the large H D P E intruders 

*  median  =     0.9372
*  mean    =     0.9314
*  stdev   =     0.0147
*  95 CI   =     0.0050
*  :download:`raw data <../data/particle_properties/psi_hdpe_l.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_psi_hdpe_l.m>` (octave)

small intruder
^^^^^^^^^^^^^^

.. image:: ../figs/particle_properties/psi_hdpe_s.png
   :scale:  32
   :alt: particle diameter E C D F of the small H D P E intruders 

*  median  =     0.9211
*  mean    =     0.9147
*  stdev   =     0.0245
*  95 CI   =     0.0076
*  :download:`raw data <../data/particle_properties/psi_hdpe_s.txt>`
*  :download:`plot script <../nbs/particle_properties/plot_psi_hdpe_s.m>` (octave)


.. |density| replace:: (kg/m\ :sup:`3`\ )

