import WaterWavesGravityWavesDispersionCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure WaterWavesGravityWavesDispersionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaterWavesGravityWavesDispersionAdmittedObject where
  space : WaterWavesGravityWavesDispersionSpace
  freeSurface : Prop
  gravityEffect : Prop
  dispersionRelationModel : Type
  dispersionRelationTopology : TopologicalSpace dispersionRelationModel
  homeomorphicToDispersion : Prop
  conclusion : homeomorphicToDispersion

structure WaterWavesEndgameState where
  object : WaterWavesGravityWavesDispersionAdmittedObject

def WaterWavesGravityWavesDispersionWitnessClosed (O : WaterWavesGravityWavesDispersionAdmittedObject) : Prop :=
  O.homeomorphicToDispersion

end HautevilleHouse
end WaterWavesGravityWavesDispersionCanonicalLaneLean