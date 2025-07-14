# Rotating Drum Granular Flow Modelling

This MATLAB project simulates granular flow in a horizontally rotating drum using a system of depth-integrated ordinary differential equations (ODEs). It was developed as part of the *Process Modelling & Optimisation* module during my undergraduate Chemical Engineering studies at the University of KwaZulu-Natal (UKZN).

The model captures key physical phenomena such as mass efflux, flowing layer depth, and the shape of the free surface using numerical methods.

---

##  Problem Description

The aim of the simulation is to predict granular flow behavior in a rotating drum by applying:

- **Shallow flow approximations**
- **Mass conservation principles**
- **Depth-averaged momentum and energy balances**

The numerical solution yields spatial profiles of:

- **Mass efflux** `q(x)`
- **Flowing layer depth** `h(x)`
- **Free surface elevation** `z(x)`

*Refer to the included files for mathematical formulation and detailed implementation.*

---

##  How to Run the Code (MATLAB)

1. Open MATLAB.
2. Navigate to the `code/` directory:
   ```matlab
   cd('path/to/code/')
