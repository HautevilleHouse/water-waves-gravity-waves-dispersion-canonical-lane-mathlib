import canonicalLaneMathlib.AdmissibleClass
import WaterWavesGravityWavesDispersionCanonicalLaneLean.WaterWavePDE
import WaterWavesGravityWavesDispersionCanonicalLaneLean.GravityWaveDispersion

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WaterWavePDEClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def GravityWaveDispersionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem gravity_wave_dispersion_endgame (A : AdmissibleClass) :
    GravityWaveDispersionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse
