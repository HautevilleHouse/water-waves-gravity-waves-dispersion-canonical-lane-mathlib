import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure ShallowWaterLimitPackage where
  waveSpeed : ℝ
  waterDepth : ℝ
  gravityAcceleration : ℝ
  dispersionApproximation : ℝ
  limitValid : Prop

def ShallowWaterLimitClosed (S : ShallowWaterLimitPackage) : Prop :=
  S.limitValid

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse