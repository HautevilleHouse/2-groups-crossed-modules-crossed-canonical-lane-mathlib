import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedModuleAdmittedObject where
  G : Type u
  H : Type v
  groupG : Group G
  groupH : Group H
  action : G → H → H
  boundary : H → G
  crossedModuleAxioms : Prop
  boundaryCompatibility : ∀ h : H, action (boundary h) h = h
  crossedModuleAxiomsTerm : crossedModuleAxioms
  boundaryCompatibilityTerm : boundaryCompatibility

structure AdmissibleClass where
  object : CrossedModuleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse