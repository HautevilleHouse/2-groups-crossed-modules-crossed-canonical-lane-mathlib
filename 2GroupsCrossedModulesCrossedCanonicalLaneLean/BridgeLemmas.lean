import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TwoGroupsCrossedModulesCrossedCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.crossedModuleAxioms

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.crossedModuleAxiomsTerm

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse