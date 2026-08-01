import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TwoGroupsCrossedModulesCrossedCanonicalLaneLean.TwoGroupCrossedModules

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedComplexPackage (n : ℕ) where
  groups : Fin n → Type
  boundary : (k : Fin (n-1)) → groups (Fin.succ k) → groups k
  actions : (k : Fin n) → groups k → groups (Fin.succ k) → groups (Fin.succ k)
  crossedModuleStructure : (k : Fin (n-1)) → CrossedModuleObject (source := groups (Fin.succ k)) (target := groups k)
  -- additional axioms for complex
  compositionAxiom : Prop
  exactnessAxiom : Prop

structure CrossedComplexEvidence {n : ℕ} (P : CrossedComplexPackage n) where
  compositionProof : P.compositionAxiom
  exactnessProof : P.exactnessAxiom
  crossedModuleProofs : (k : Fin (n-1)) → CrossedModuleEvidence (P.crossedModuleStructure k)

def CrossedComplexClosed {n : ℕ} (P : CrossedComplexPackage n) : Prop :=
  P.compositionAxiom ∧ P.exactnessAxiom ∧ (∀ k : Fin (n-1), CrossedModuleClosed (P.crossedModuleStructure k))

theorem crossed_complex_closed_from_evidence {n : ℕ} (P : CrossedComplexPackage n) (E : CrossedComplexEvidence P) : CrossedComplexClosed P :=
  ⟨E.compositionProof, E.exactnessProof, λ k => crossed_module_closed_from_evidence _ (E.crossedModuleProofs k)⟩

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse