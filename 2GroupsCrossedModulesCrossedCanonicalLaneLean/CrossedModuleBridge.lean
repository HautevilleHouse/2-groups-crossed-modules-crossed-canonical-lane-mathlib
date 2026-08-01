import canonicalLaneMathlib.AdmissibleClass
import .CrossedModule

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossed

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | CrossedModuleAdmittedObject M => M.boundary_action_compatibility ∧ M.action_boundary_identity
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  cases A.object
  · exact And.intro (by trivial) (by trivial)
  · exact False.elim (by trivial)

end TwoGroupsCrossedModulesCrossed
end HautevilleHouse