import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TwoGroupsCrossedModulesCrossedCanonicalLaneLean.TwoGroupCrossedModules

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure QuadraticModulePackage where
  abelianGroup : Type u
  quadraticForm : abelianGroup → ℤ
  bilinearForm : abelianGroup → abelianGroup → ℤ
  compatibility : Prop
  nondegeneracy : Prop

structure QuadraticModuleEvidence (Q : QuadraticModulePackage) where
  compatibilityProof : Q.compatibility
  nondegeneracyProof : Q.nondegeneracy

def QuadraticModuleClosed (Q : QuadraticModulePackage) : Prop :=
  Q.compatibility ∧ Q.nondegeneracy

theorem quadratic_module_closed_from_evidence (Q : QuadraticModulePackage) (E : QuadraticModuleEvidence Q) : QuadraticModuleClosed Q :=
  ⟨E.compatibilityProof, E.nondegeneracyProof⟩

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse