import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TwoGroupsCrossedModulesCrossedCanonicalLaneLean.TwoGroupCrossedModules

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedModuleEvidence (C : CrossedModuleObject) where
  preProof : C.preCrossedModuleCondition
  peifferProof : C.PeifferCondition

theorem crossed_module_closed_from_evidence (C : CrossedModuleObject) (E : CrossedModuleEvidence C) : CrossedModuleClosed C :=
  { preCrossedModuleCondition := E.preProof, PeifferCondition := E.peifferProof }

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrossedModuleClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) (h : CrossedModuleEvidence A.object) : bridgeClosed A :=
  crossed_module_closed_from_evidence A.object h

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse