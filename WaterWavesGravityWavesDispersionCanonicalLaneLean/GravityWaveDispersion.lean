import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure GravityWaveDispersionPackage where
  waveNumber : Type u
  angularFrequency : Type v
  dispersionRelation : Prop
  groupVelocityComputed : Prop
  phaseVelocityComputed : Prop
  linearDispersionDerived : Prop
  nonlinearCorrectionIncluded : Prop

structure GravityWaveDispersionEvidence (D : GravityWaveDispersionPackage) where
  dispersionRelationClosed : D.dispersionRelation
  groupVelocityComputedClosed : D.groupVelocityComputed
  phaseVelocityComputedClosed : D.phaseVelocityComputed
  linearDispersionDerivedClosed : D.linearDispersionDerived
  nonlinearCorrectionIncludedClosed : D.nonlinearCorrectionIncluded

def GravityWaveDispersionClosed (D : GravityWaveDispersionPackage) : Prop :=
  D.dispersionRelation ∧ D.groupVelocityComputed ∧
  D.phaseVelocityComputed ∧ D.linearDispersionDerived ∧
  D.nonlinearCorrectionIncluded

theorem gravity_wave_dispersion_closed_from_evidence
    (D : GravityWaveDispersionPackage) (E : GravityWaveDispersionEvidence D) :
    GravityWaveDispersionClosed D := by
  exact And.intro E.dispersionRelationClosed
    (And.intro E.groupVelocityComputedClosed
      (And.intro E.phaseVelocityComputedClosed
        (And.intro E.linearDispersionDerivedClosed
          E.nonlinearCorrectionIncludedClosed)))

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse
