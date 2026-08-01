import canonicalLaneMathlib.AdmissibleClass
import .CrossedModuleBridge

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end TwoGroupsCrossedModulesCrossed
end HautevilleHouse