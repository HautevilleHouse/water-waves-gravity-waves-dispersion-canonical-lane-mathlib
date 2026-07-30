import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure WaveBreakingPackage where
  waveHeight : ℝ
  waterDepth : ℝ
  waveSteepness : ℝ
  breakingThreshold : ℝ
  breakingOccurs : Prop

def WaveBreakingClosed (W : WaveBreakingPackage) : Prop :=
  W.breakingOccurs

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse