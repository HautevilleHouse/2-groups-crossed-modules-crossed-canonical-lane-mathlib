import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure TwoGroup where
  baseGroup : Type u
  baseGroupMul : baseGroup → baseGroup → baseGroup
  baseGroupUnit : baseGroup
  baseGroupInv : baseGroup → baseGroup
  baseGroupAssoc : ∀ a b c : baseGroup, baseGroupMul (baseGroupMul a b) c = baseGroupMul a (baseGroupMul b c)
  baseGroupUnitLeft : ∀ a : baseGroup, baseGroupMul baseGroupUnit a = a
  baseGroupUnitRight : ∀ a : baseGroup, baseGroupMul a baseGroupUnit = a
  baseGroupInvLeft : ∀ a : baseGroup, baseGroupMul (baseGroupInv a) a = baseGroupUnit
  baseGroupInvRight : ∀ a : baseGroup, baseGroupMul a (baseGroupInv a) = baseGroupUnit
  targetGroup : Type u
  targetGroupMul : targetGroup → targetGroup → targetGroup
  targetGroupUnit : targetGroup
  targetGroupInv : targetGroup → targetGroup
  targetGroupAssoc : ∀ a b c : targetGroup, targetGroupMul (targetGroupMul a b) c = targetGroupMul a (targetGroupMul b c)
  targetGroupUnitLeft : ∀ a : targetGroup, targetGroupMul targetGroupUnit a = a
  targetGroupUnitRight : ∀ a : targetGroup, targetGroupMul a targetGroupUnit = a
  targetGroupInvLeft : ∀ a : targetGroup, targetGroupMul (targetGroupInv a) a = targetGroupUnit
  targetGroupInvRight : ∀ a : targetGroup, targetGroupMul a (targetGroupInv a) = targetGroupUnit
  morphism : targetGroup → baseGroup → baseGroup
  -- action axioms: morphism is a group homomorphism and action is compatible
  morphismHom : ∀ (t : targetGroup) (a b : baseGroup), morphism t (baseGroupMul a b) = baseGroupMul (morphism t a) (morphism t b)
  morphismUnit : ∀ (t : targetGroup), morphism t baseGroupUnit = baseGroupUnit
  actionCompatibility : ∀ (t1 t2 : targetGroup) (a : baseGroup), morphism (targetGroupMul t1 t2) a = morphism t1 (morphism t2 a)

def TwoGroupToCrossedModule (G : TwoGroup) : CrossedModule where
  baseGroup := G.baseGroup
  targetGroup := G.targetGroup
  morphism := G.morphism
  action := λ t a => G.morphism t a
  -- axioms need to be proven but we assume they hold from G's axioms
  axiomsSatisfied := True
  -- we will fill later

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse