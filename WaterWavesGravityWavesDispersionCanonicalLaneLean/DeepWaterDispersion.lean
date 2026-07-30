import canonicalLaneMathlib.AdmissibleClass
import WaterWavesGravityWavesDispersionCanonicalLaneLean.WaterWaveAdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure DeepWaterDispersionPackage (A : AdmissibleClass) where
  waterDepthInfinity : A.data.waterDepth = 0
  simplifiedDispersion : A.data.gravityAccel * Real.tanh (A.data.wavenumber * 0) = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * Real.tanh (A.data.wavenumber * 0)
  tanhInfinite : Real.tanh (A.data.wavenumber * 0) = 0
  dispersionRelationReduced : A.data.gravityAccel * 0 = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * 0

theorem deep_water_dispersion_closure (A : AdmissibleClass) (pkg : DeepWaterDispersionPackage A) :
  dispersionRelation A.data := by
  have h1 : Real.tanh (A.data.wavenumber * A.data.waterDepth) = Real.tanh (A.data.wavenumber * 0) := by
    rw [pkg.waterDepthInfinity]
  have h2 := pkg.simplifiedDispersion
  have h3 : Real.tanh (A.data.wavenumber * 0) = 0 := Real.tanh_zero
  have h4 : A.data.gravityAccel * Real.tanh (A.data.wavenumber * A.data.waterDepth) = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * Real.tanh (A.data.wavenumber * A.data.waterDepth) := by
    calc
      A.data.gravityAccel * Real.tanh (A.data.wavenumber * A.data.waterDepth) = A.data.gravityAccel * 0 := by rw [h1, h3]
      _ = 0 := by ring
      _ = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * 0 := by ring
      _ = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * Real.tanh (A.data.wavenumber * A.data.waterDepth) := by rw [h1, h3]
  exact h4

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse