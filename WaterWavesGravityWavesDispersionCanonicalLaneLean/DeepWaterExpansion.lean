import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure DeepWaterExpansionPackage where
  infiniteDepth : Prop
  dispersionExpansion : Prop
  stokesWave : Prop
  modulationalInstability : Prop
  nonlinearSchrodingerEquation : Prop

structure DeepWaterExpansionEvidence (D : DeepWaterExpansionPackage) where
  infiniteDepthClosed : D.infiniteDepth
  dispersionExpansionClosed : D.dispersionExpansion
  stokesWaveClosed : D.stokesWave
  modulationalInstabilityClosed : D.modulationalInstability
  nonlinearSchrodingerEquationClosed : D.nonlinearSchrodingerEquation

def DeepWaterExpansionClosed (D : DeepWaterExpansionPackage) : Prop :=
  D.infiniteDepth ∧ D.dispersionExpansion ∧ D.stokesWave ∧ D.modulationalInstability ∧ D.nonlinearSchrodingerEquation

theorem deep_water_expansion_closed_from_evidence (D : DeepWaterExpansionPackage) (E : DeepWaterExpansionEvidence D) : DeepWaterExpansionClosed D :=
  And.intro E.infiniteDepthClosed (And.intro E.dispersionExpansionClosed (And.intro E.stokesWaveClosed (And.intro E.modulationalInstabilityClosed E.nonlinearSchrodingerEquationClosed)))

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse