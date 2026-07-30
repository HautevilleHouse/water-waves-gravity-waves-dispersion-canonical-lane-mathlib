import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WaterWaveSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaterWaveAdmittedObject where
  space : WaterWaveSpace
  fluidDomain : Prop
  gravityField : Prop
  dispersionRelation : Prop
  conclusion : dispersionRelation

structure WaterWaveEndgameState where
  object : WaterWaveAdmittedObject

def WaterWaveWitnessClosed (O : WaterWaveAdmittedObject) : Prop :=
  O.dispersionRelation

end WaterWavesGravityWavesDispersionCanonicalLaneLean
end HautevilleHouse