# Rotating Drum Granular Flow Modelling

This MATLAB project models a classic granular flow in a rotating drum using depth-integrated ODEs. It is based Process Modelling & Optimisation (One of the chemical engineering module I took during undergrad at UKZN) The system models mass efflux, flowing layer depth, and the free surface using numerical integration.

---

##  Problem Description

The goal is to simulate granular flow within a horizontally rotating drum using:
- Shallow flow approximation
- Mass conservation laws
- Depth-averaged momentum and energy equations

The numerical solution gives us:
- Mass efflux `q(x)`
- Flowing layer depth `h(x)`
- Free surface height `z(x)`
**see the files for more details*
---

##  How to Run (in MATLAB)

1. Open MATLAB
2. Navigate to the `/code/` folder:
   ```matlab
   cd('path/to/code/')
3. run('solver.m')
5. View the generated plots:
-Mass Efflux vs Length
-Flowing Layer Depth vs Length
-Free Surface vs Length

5. MATLAB Files
   
File	Description
ODEsfun.m	MATLAB function with system of ODEs
solver.m	Main script that solves the ODEs and plots
.gitignore	Ignores MATLAB temp and output files
This repository includes the original assignment PDF and my own submitted solution


## Author

Khethukuthula Ngcobo

## License

This repository is for academic and portfolio use only. Original brief © UKZN.
