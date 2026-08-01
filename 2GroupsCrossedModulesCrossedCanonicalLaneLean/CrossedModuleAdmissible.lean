import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedModuleObject where
  G : Type u
  H : Type v
  action : G → H → H
  boundary : H → G
  peifferCondition : ∀ g h, boundary (action g h) = g * boundary h * g⁻¹
  closureWitness : Prop

def CrossedModuleWitnessClosed (O : CrossedModuleObject) : Prop :=
  O.closureWitness

structure AdmissibleClass where
  object : CrossedModuleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrossedModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse