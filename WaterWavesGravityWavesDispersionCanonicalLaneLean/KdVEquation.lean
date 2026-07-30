import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure KdVEquationPackage where
  surfaceElevation : ℝ → ℝ
  spaceVariable : ℝ
  timeVariable : ℝ
  gravityAcceleration : ℝ
  waterDepth : ℝ
  nonlinearCoefficient : ℝ
  dispersionCoefficient : ℝ
  pdeSatisfied : Prop

def KdVEquationClosed (K : KdVEquationPackage) : Prop :=
  K.pdeSatisfied

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse