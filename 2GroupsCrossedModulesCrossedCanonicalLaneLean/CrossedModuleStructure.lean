import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedModulePackage where
  sourceGroup : Type u
  targetGroup : Type v
  action : sourceGroup → targetGroup → targetGroup
  boundary : targetGroup → sourceGroup
  crossedCondition : Prop
  boundaryMorphism : Prop
  actionCompatible : Prop

structure CrossedModuleEvidence (C : CrossedModulePackage) where
  crossedConditionClosed : C.crossedCondition
  boundaryMorphismClosed : C.boundaryMorphism
  actionCompatibleClosed : C.actionCompatible

def CrossedModuleClosed (C : CrossedModulePackage) : Prop :=
  C.crossedCondition ∧ C.boundaryMorphism ∧ C.actionCompatible

theorem crossed_module_closed_from_evidence (C : CrossedModulePackage)
    (E : CrossedModuleEvidence C) : CrossedModuleClosed C := by
  exact And.intro E.crossedConditionClosed
    (And.intro E.boundaryMorphismClosed E.actionCompatibleClosed)

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse
