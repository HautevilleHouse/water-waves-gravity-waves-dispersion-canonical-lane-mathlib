import canonicalLaneMathlib.AdmissibleClass
import WaterWavesGravityWavesDispersionCanonicalLaneLean.WaterWaveAdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure CapillaryGravityDispersionPackage (A : AdmissibleClass) where
  surfaceTensionNonneg : A.data.surfaceTension ≥ 0
  gravityDominant : A.data.gravityAccel > 0
  capillaryDominant : A.data.surfaceTension > 0
  dispersionRelationFull : A.dispersionSatisfied

def capillaryLength (A : AdmissibleClass) : ℝ :=
  Real.sqrt (A.data.surfaceTension / A.data.gravityAccel)

theorem capillary_gravity_dispersion_closure (A : AdmissibleClass) (pkg : CapillaryGravityDispersionPackage A) :
  A.data.gravityAccel * Real.tanh (A.data.wavenumber * A.data.waterDepth) = A.data.frequency ^ 2 + A.data.surfaceTension * A.data.wavenumber ^ 2 * Real.tanh (A.data.wavenumber * A.data.waterDepth) := by
  exact pkg.dispersionRelationFull

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse