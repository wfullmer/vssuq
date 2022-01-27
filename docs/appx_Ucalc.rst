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

*  Inflow superficial velocity

   *  :math:`U = 1.83` (m/s)
   *  :math:`U = 1.99` (m/s)
   *  :math:`U = 2.14` (m/s)

*  Outflow conditions

   *  :math:`P_{atm} = 83.77` (kPa)
   *  :math:`T_{atm} = 293.15` (K)

   
   :download:`octave script <../nbs/problem_description/calc_dU.m>`

*  Notes

   *  To clarify, there is only one bed mass and gas flow rate
      for a given run. The set of experimental conditions used are defined
      in :ref:`sec:measurements`.
   *  TODO uncertainty on U
   *  The distributor is a one-eighth inch thick disk, perforated 0.9 mm holes
      in a square grid with an edge size of 3.2 mm.
   *  The uncertainty in the atmospheric temperature is estimated to be
      approximately 5 (K). The uncertainty in the atmospheric pressure unknown. 
