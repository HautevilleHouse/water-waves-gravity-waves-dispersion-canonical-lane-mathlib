import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure AdmissibleWaveData where
  wavenumber : ℝ
  frequency : ℝ
  amplitude : ℝ
  waterDepth : ℝ
  gravityAccel : ℝ
  surfaceTension : ℝ

def dispersionRelation (w : AdmissibleWaveData) : Prop :=
  w.gravityAccel * Real.tanh (w.wavenumber * w.waterDepth) * Real.tanh (w.wavenumber * w.waterDepth) = w.frequency * w.frequency + w.surfaceTension * w.wavenumber * w.wavenumber * Real.tanh (w.wavenumber * w.waterDepth)

def groupVelocity (w : AdmissibleWaveData) : ℝ :=
  (w.gravityAccel * Real.tanh (w.wavenumber * w.waterDepth) + 2 * w.surfaceTension * w.wavenumber * Real.tanh (w.wavenumber * w.waterDepth)) / (2 * w.frequency) * (Real.tanh (w.wavenumber * w.waterDepth) + w.wavenumber * w.waterDepth / (Real.cosh (w.wavenumber * w.waterDepth)) ^ 2)

structure AdmissibleClass where
  data : AdmissibleWaveData
  dispersionSatisfied : dispersionRelation data
  remainderRecorded : Prop
  gateWitness : dispersionSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  dispersionRelation A.data ∧ (A.dispersionSatisfied ∨ A.remainderRecorded)

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse