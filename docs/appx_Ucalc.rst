.. _sec:appxUcalc:

Appendix: flowrate calculation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

+------------------------+------------------------+------------------+------------------------+
| :math:`Q_{obs}` (SCFM) | :math:`P_{bck}` (psig) | :math:`U` (m/s)  | :math:`\delta U` (m/s) |
+------------------------+------------------------+------------------+------------------------+
| 3.6                    | 12.5                   | 1.830272         | 0.096431               |
+------------------------+------------------------+------------------+------------------------+
| 3.8                    | 14.0                   | 1.989867         | 0.104839               |
+------------------------+------------------------+------------------+------------------------+
| 4.0                    | 15.0                   | 2.134271         | 0.112448               |
+------------------------+------------------------+------------------+------------------------+


The gas flow rate is set to one of the three conditions listed in the table 
above. The flow rate is measured, in standard cubid feet per minute (SCFM), 
and the back pressure is set with a pressure gage. Both the rotameter and the 
pressure gage are reported to have an accuracy of 2%. In the rotameter, the 
flow rate is measured by a float which balances the force of gravity, 
:math:`F_G = \rho_F g V_F`, with buoyancy, :math:`F_B = \rho_g g V_F`, 
and drag, :math:`F_D = \frac{1}{2}C_D \rho_g v_g^2 A_F`, where :math:`V_F`, 
:math:`A_F` and :math:`\rho_F` are the volume, (projected) cross-sectional 
area, and density of the float, :math:`\rho_g` and :math:`v_g` are the 
density and velocity of the gas, :math:`C_D` is the drag coefficient, and 
:math:`g` is the gravity magnitude. Equating and solving for :math:`v_g` 
gives 

.. math::  v_g = \sqrt{\frac{2 (\rho_F - \rho_g) g V_F}{C_D \rho_g A_F}}

The flat properties are constant and we assume that drag coefficient is 
relatively constant and, because the working fluid is a gas, 
:math:`\rho_F - \rho_g \approx \rho_F`. Therefore, 

.. math::  v_g ~ \rho_g^{-1/2}

Using the ideal gas law,

.. math::  P_g = \rho_g R_{air} T_g 

the proportionality becomes 

.. math:: v_g ~ \sqrt{T_g / P_g}

Then, we can write an approximate expression relating two flow states, 

.. math::  \frac{v_{std}}{v_{obs}} = \frac{\sqrt{T_{std} / P_{std}}}{\sqrt{T_{obs} / P_{obs}}} 

or 

.. math::  Q_{std} = Q_{obs} \sqrt{\frac{P_{obs}}{P_{std}}\frac{T_{std}}{T_{obs}}}

where :math:`Q_g = v_g A = v_g L_x L_y`. 
Here, we want to convert the *observed* flow rate, i.e., as seen on the 
flow meter, and to the *standard* flow rate, i.e., the conditions at which 
the flow meter was calibrated. For this King Instruments Company model 
`7530 5C-05 <https://kinginstrumentco.com/7520-7530-series-acrylic-tube-flowmeter>`_
rotameter, the standard conditions are :math:`P_{std} = 14.7` (psi) and 
:math:`T_{std} = 70` (F). The observed pressure is the back pressure, 
:math:`P_{obs} = P_{bck}`, set with the regulator at 2% accuracy and 
provided in the table above. The observed temperature is largely unknown. 
Here, we approximate the back temperature as the lab temperature, 
:math:`T_{obs} = T_{bck} = 20` (C) and given a large uncertainty of 
:math:`\delta T_{bck} = 10` (C). 


To convert from the standard conditions of the flow meter to the actual 
*laboratory* conditions, we again apply the ideal gas assumption with the 
conservation of mass, 

.. math:: {\dot m}_{std} = {\dot m}_{lab}

where 

.. math:: {\dot m} = \rho_g Q_g = \frac{P_g}{R_{air}T_g} Q_g 

We can rearrange the above expressions to get, 

.. math:: Q_{lab} = Q_{std} \frac{P_{std}}{P_{lab}} \frac{T_{lab}}{T_{std}} 

The laboratory conditions are taken as :math:`P_{lab} = 12.15` (psia) and 
:math:`T_{lab} = 20` (C) with uncertainties of 
:math:`\delta P_{lab} = 0.5` (psia) and :math:`\delta T_{lab} = 5` (C). 


Finally, combining the expression for :math:`Q_{lab}` and :math:`Q_{std}`, 
we can write 

.. math:: Q_{lab} = Q_{obs} \sqrt{\frac{P_{bck}}{P_{std}}\frac{T_{std}}{T_{bck}}} \frac{P_{std}}{P_{lab}} \frac{T_{lab}}{T_{std}} 

To simplify the uncertainty propagation, we write the above expression for 
the superficial velocity, :math:`U = Q / A`, and combine like terms giving 

.. math:: U = Q_{obs} L_x^{-1} L_y^{-1} P_{bck}^{1/2} P_{std}^{1/2} P_{lab}^{-1} T_{lab} T_{bck}^{-1/2} T_{std}^{-1/2}

By neglecting any correlation between the variables, we can approximate the 
uncertainty in :math:`U` using the variance formula

.. math:: \delta U = \sqrt{\sum_i{ \left(\frac{\partial U}{\partial x_i}\right)^2 \left(\frac{\delta x_i}{x_i}\right)^2 } }

where :math:`x_i = Q_{obs}`, :math:`L_x`, :math:`L_z`, 
:math:`P_{bck}`, :math:`P_{std}`, :math:`P_{lab}`,  
:math:`T_{bck}`, :math:`T_{std}`, and :math:`T_{lab}`. We note that the 
the standard conditions are defined by the calibration, i.e., there is no
uncertainty in these variables. By differentiating the expression for 
:math:`U` for the remaining variables and simplifying we get, 

.. math:: \delta U = U \sqrt{ \epsilon Q_{obs}^2 
   + \left(\frac{\delta L_x}{L_x}\right)^2 
   + \left(\frac{\delta L_z}{L_z}\right)^2
   + \frac{1}{4} \epsilon P_{bck}^2 
   + \left(\frac{\delta P_{lab}}{P_{lab}}\right)^2
   + \frac{1}{4} \left(\frac{\delta T_{bck}}{T_{bck}}\right)^2
   + \left(\frac{\delta T_{lab}}{T_{lab}}\right)^2
   }

where :math:`\epsilon x_i = \delta x_i / x_i` for the uncertainties given as 
relative errors. The superficial velocity and uncertainty is calculated for 
each condition with this simple 
:download:`octave script <../nbs/problem_description/calc_dU.m>`. 
We note that, when rounded to three sig. figs., the third condition differes 
slightly from the value of :math:`U = 2.14` reported in 
`LaMarche, et al. (2022) <https://doi.org/10.1002/aic.17643>`_. 
This difference is due to the very minor difference between the lab 
temperature and the standard temperature, which was neglected in the published 
values. 
