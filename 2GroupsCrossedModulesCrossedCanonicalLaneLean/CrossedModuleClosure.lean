import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TwoGroupsCrossedModulesCrossedCanonicalLaneLean.CrossedModuleAdmissible

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrossedModuleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.closureWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedCrossedModuleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_crossed_module_endgame (A : AdmissibleClass) : ConstrainedCrossedModuleClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse