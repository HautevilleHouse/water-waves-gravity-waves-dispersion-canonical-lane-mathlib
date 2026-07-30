import WaterWavesGravityWavesDispersionCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

structure AdmissibleClass where
  object : WaterWavesGravityWavesDispersionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WaterWavesGravityWavesDispersionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end WaterWavesGravityWavesDispersionCanonicalLaneLean