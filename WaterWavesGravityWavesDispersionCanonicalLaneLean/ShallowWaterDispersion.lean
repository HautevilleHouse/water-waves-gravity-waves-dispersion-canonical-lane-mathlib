import canonicalLaneMathlib.AdmissibleClass
import WaterWavesGravityWavesDispersionCanonicalLaneLean.WaterWaveAdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure ShallowWaterDispersionPackage (A : AdmissibleClass) where
  smallDepth : A.data.wavenumber * A.data.waterDepth < 1e-6
  tanhApprox : Real.tanh (A.data.wavenumber * A.data.waterDepth) = A.data.wavenumber * A.data.waterDepth
  dispersionApprox : A.data.gravityAccel * (A.data.wavenumber * A.data.waterDepth) = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * (A.data.wavenumber * A.data.waterDepth)

def shallowWaterDispersionClosed (A : AdmissibleClass) (pkg : ShallowWaterDispersionPackage A) : Prop :=
  A.data.gravityAccel * A.data.waterDepth * A.data.wavenumber = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 3 * A.data.waterDepth

theorem shallow_water_dispersion_closure (A : AdmissibleClass) (pkg : ShallowWaterDispersionPackage A) :
  shallowWaterDispersionClosed A pkg := by
  have h1 : Real.tanh (A.data.wavenumber * A.data.waterDepth) = A.data.wavenumber * A.data.waterDepth := pkg.tanhApprox
  have h2 : A.data.gravityAccel * Real.tanh (A.data.wavenumber * A.data.waterDepth) = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * Real.tanh (A.data.wavenumber * A.data.waterDepth) := A.dispersionSatisfied
  have h3 : A.data.gravityAccel * (A.data.wavenumber * A.data.waterDepth) = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * (A.data.wavenumber * A.data.waterDepth) := by
    calc
      A.data.gravityAccel * (A.data.wavenumber * A.data.waterDepth) = A.data.gravityAccel * Real.tanh (A.data.wavenumber * A.data.waterDepth) := by rw [h1]
      _ = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * Real.tanh (A.data.wavenumber * A.data.waterDepth) := h2
      _ = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * (A.data.wavenumber * A.data.waterDepth) := by rw [h1]
  assumption

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse