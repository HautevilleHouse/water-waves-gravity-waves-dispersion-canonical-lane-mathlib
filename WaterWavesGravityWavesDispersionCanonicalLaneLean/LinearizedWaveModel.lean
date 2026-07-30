import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure LinearizedWaveModelPackage where
  baseState : Prop
  perturbationAmplitude : ℝ
  linearDispersionRelation : Prop
  airyTheory : Prop
  stokesCorrection : Prop

structure LinearizedWaveModelEvidence (L : LinearizedWaveModelPackage) where
  baseStateClosed : L.baseState
  linearDispersionRelationClosed : L.linearDispersionRelation
  airyTheoryClosed : L.airyTheory
  stokesCorrectionClosed : L.stokesCorrection

def LinearizedWaveModelClosed (L : LinearizedWaveModelPackage) : Prop :=
  L.baseState ∧ L.linearDispersionRelation ∧ L.airyTheory ∧ L.stokesCorrection

theorem linearized_wave_model_closed_from_evidence (L : LinearizedWaveModelPackage) (E : LinearizedWaveModelEvidence L) : LinearizedWaveModelClosed L :=
  And.intro E.baseStateClosed (And.intro E.linearDispersionRelationClosed (And.intro E.airyTheoryClosed E.stokesCorrectionClosed))

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse