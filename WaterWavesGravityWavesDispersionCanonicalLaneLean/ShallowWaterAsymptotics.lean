import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure ShallowWaterAsymptoticsPackage where
  depthSmallParameter : ℝ
  asymptoticExpansion : Prop
  kdvEquation : Prop
  solitaryWaveSolution : Prop
  cnoidalWaves : Prop

structure ShallowWaterAsymptoticsEvidence (S : ShallowWaterAsymptoticsPackage) where
  depthSmallParameterClosed : S.depthSmallParameter = 0.1
  asymptoticExpansionClosed : S.asymptoticExpansion
  kdvEquationClosed : S.kdvEquation
  solitaryWaveSolutionClosed : S.solitaryWaveSolution
  cnoidalWavesClosed : S.cnoidalWaves

def ShallowWaterAsymptoticsClosed (S : ShallowWaterAsymptoticsPackage) : Prop :=
  S.asymptoticExpansion ∧ S.kdvEquation ∧ S.solitaryWaveSolution ∧ S.cnoidalWaves

theorem shallow_water_asymptotics_closed_from_evidence (S : ShallowWaterAsymptoticsPackage) (E : ShallowWaterAsymptoticsEvidence S) : ShallowWaterAsymptoticsClosed S :=
  And.intro E.asymptoticExpansionClosed (And.intro E.kdvEquationClosed (And.intro E.solitaryWaveSolutionClosed E.cnoidalWavesClosed))

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse