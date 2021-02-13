# Oxygen sensor and overpressure relief valve manifold

## Design rationale

The need for this manifold was outlined in [#780](https://github.com/RespiraWorks/Ventilator/issues/780).

Since at this point in our pneumatic circuit air and oxygen have been mixed, the expected diameter of tubing is 3/4".

Overpressure release valve has been selected based on latest conclusions in
[#656](https://github.com/RespiraWorks/Ventilator/issues/656).
This valve has 1/4 NPT threads.

Oxygen sensor was selected in [#637](https://github.com/RespiraWorks/Ventilator/issues/637).
The oxygen sensor has M16-1.0 threads for interfacing with a pneumatic system.

The manifold also requires an elbow to route the pneumatic circuit to the underside of the equipment tray, where
it will follow towards the patient tubing interface.

## Design implementation

The part was designed in Autodesk Inventor, along with assembly to geometrically test interface fit
before manufacture. The design has been tested by 3d printing the manifold in resin.

There are some nuances to modeling threads correctly for 3d printing so that no tapping would be required.
Notes on modeling threads have been published in our
[mechanical engineering wiki page](https://github.com/RespiraWorks/Ventilator/wiki/Mechanical-engineering-notes).

| CAD rendering | Drawings |  3d Printed   |
|:---------------------:|:--------------------:|:-------:|
|![](oxygen_relief_manifold_rendering.jpg) |![](oxygen_relief_manifold.png) |![](oxygen_relief_manifold_printed.jpg)|
|[Source: Inventor IPT](oxygen_relief_manifold.ipt)|[Drawing PDF](oxygen_relief_manifold.pdf)|[STL File for 3d printing](oxygen_relief_manifold.stl)|

|  Sub-assembly CAD     |  Assembled   |
|:---------------------:|:--------------------:|
|![](oxygen_relief_assembly_rendering.jpg) | ![](oxygen_relief_assembly_printed.jpg) |
|[Source: Inventor IAM](oxygen_relief_assembly.iam)| |

## Manufacturing

Please see the [3d printing guidelines](../../3d_printing) for general advice on printing components.

3d printing has been successful using Siraya Fast.

When slicing the STL file, it is advisable to lay the manifold on its side. If printing with threaded adapters
downwards, a membrane-like artifact may form on the M16 oxygen interface. This prints ready to use, and no
hand-tapping or chasing of threads is necessary.

The NPT interface should accept the valve without any tapping and allows for about 4 threads to engage
when using a wrench. This should be acceptable, but if in the future it is determined to not be so, the manifold
sketch has a parametrized tapered hole that may be expanded. Alternatively, a tap may be used.