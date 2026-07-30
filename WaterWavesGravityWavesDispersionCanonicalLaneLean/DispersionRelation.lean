import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure DispersionRelationPackage where
  wavenumber : Type u
  angularFrequency : Type v
  relation : wavenumber → angularFrequency → Prop
  deepWaterLimit : Prop
  shallowWaterLimit : Prop
  gravityDominant : Prop
  surfaceTensionIncluded : Bool

structure DispersionRelationEvidence (D : DispersionRelationPackage) where
  relationClosed : ∀ k ω, D.relation k ω → True
  deepWaterLimitClosed : D.deepWaterLimit
  shallowWaterLimitClosed : D.shallowWaterLimit
  gravityDominantClosed : D.gravityDominant

def DispersionRelationClosed (D : DispersionRelationPackage) : Prop :=
  D.deepWaterLimit ∧ D.shallowWaterLimit ∧ D.gravityDominant

theorem dispersion_relation_closed_from_evidence (D : DispersionRelationPackage) (E : DispersionRelationEvidence D) : DispersionRelationClosed D :=
  And.intro E.deepWaterLimitClosed (And.intro E.shallowWaterLimitClosed E.gravityDominantClosed)

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse