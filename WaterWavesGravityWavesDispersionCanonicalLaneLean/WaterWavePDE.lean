import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure WaterWavePDEPackage where
  timeParameter : Type u
  freeSurface : Type v
  fluidDomain : Type w
  velocityPotential : Type x
  bernoulliEquation : Prop
  kinematicBoundaryCondition : Prop
  dynamicBoundaryCondition : Prop
  initialDataCompatible : Prop

structure WaterWavePDEEvidence (P : WaterWavePDEPackage) where
  bernoulliEquationClosed : P.bernoulliEquation
  kinematicBoundaryConditionClosed : P.kinematicBoundaryCondition
  dynamicBoundaryConditionClosed : P.dynamicBoundaryCondition
  initialDataCompatibleClosed : P.initialDataCompatible

def WaterWavePDEClosed (P : WaterWavePDEPackage) : Prop :=
  P.bernoulliEquation ∧ P.kinematicBoundaryCondition ∧
  P.dynamicBoundaryCondition ∧ P.initialDataCompatible

theorem water_wave_pde_closed_from_evidence (P : WaterWavePDEPackage) (E : WaterWavePDEEvidence P) :
    WaterWavePDEClosed P := by
  exact And.intro E.bernoulliEquationClosed
    (And.intro E.kinematicBoundaryConditionClosed
      (And.intro E.dynamicBoundaryConditionClosed E.initialDataCompatibleClosed))

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse
