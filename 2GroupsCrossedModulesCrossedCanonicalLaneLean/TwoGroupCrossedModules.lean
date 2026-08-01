import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedModuleObject where
  source : Type u
  target : Type v
  action : source → target → target
  bracket : source → source → target
  preCrossedModuleCondition : Prop
  PeifferCondition : Prop

structure AdmissibleClass where
  object : CrossedModuleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrossedModuleClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

structure CrossedModuleClosed (C : CrossedModuleObject) : Prop where
  preCrossedModuleCondition : C.preCrossedModuleCondition
  PeifferCondition : C.PeifferCondition

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse