import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedModule where
  baseGroup : Type u
  targetGroup : Type u
  morphism : baseGroup → targetGroup
  action : targetGroup → (baseGroup → baseGroup)
  groupStructureBase : Group baseGroup
  groupStructureTarget : Group targetGroup
  morphismHom : ∀ a b : baseGroup, morphism (a * b) = morphism a * morphism b
  morphismUnit : morphism (1 : baseGroup) = (1 : targetGroup)
  actionHom : ∀ (t : targetGroup) (a b : baseGroup), action t (a * b) = (action t a) * (action t b)
  actionUnit : ∀ (t : targetGroup), action t (1 : baseGroup) = (1 : baseGroup)
  actionCompatibility : ∀ (t1 t2 : targetGroup) (a : baseGroup), action (t1 * t2) a = action t1 (action t2 a)
  peifferCondition : ∀ (a b : baseGroup), action (morphism a) b = a * b * a⁻¹

def CrossedModuleWitness (C : CrossedModule) : Prop :=
  C.peifferCondition

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse