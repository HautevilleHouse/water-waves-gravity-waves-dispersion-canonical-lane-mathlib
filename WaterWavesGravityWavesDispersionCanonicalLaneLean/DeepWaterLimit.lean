import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure DeepWaterLimitPackage where
  waveSpeed : ℝ
  waveNumber : ℝ
  gravityAcceleration : ℝ
  dispersionApproximation : ℝ
  limitValid : Prop

def DeepWaterLimitClosed (D : DeepWaterLimitPackage) : Prop :=
  D.limitValid

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse