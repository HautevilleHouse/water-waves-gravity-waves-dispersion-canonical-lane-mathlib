import WaterWavesGravityWavesDispersionCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace WaterWavesGravityWavesDispersionCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WaterWavesGravityWavesDispersionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HautevilleHouse
end WaterWavesGravityWavesDispersionCanonicalLaneLean