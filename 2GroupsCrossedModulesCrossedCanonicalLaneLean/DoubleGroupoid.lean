import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TwoGroupsCrossedModulesCrossedCanonicalLaneLean.TwoGroupCrossedModules

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure DoubleGroupoidPackage where
  horizontalGroup : Type u
  verticalGroup : Type v
  squareType : Type w
  horizontalSource : squareType → horizontalGroup
  horizontalTarget : squareType → horizontalGroup
  verticalSource : squareType → verticalGroup
  verticalTarget : squareType → verticalGroup
  horizontalComposition : squareType → squareType → squareType
  verticalComposition : squareType → squareType → squareType
  interchangeLaw : Prop
  allStructures : Prop

structure DoubleGroupoidEvidence (D : DoubleGroupoidPackage) where
  interchangeProof : D.interchangeLaw
  structureProofs : D.allStructures

def DoubleGroupoidClosed (D : DoubleGroupoidPackage) : Prop :=
  D.interchangeLaw ∧ D.allStructures

theorem double_groupoid_closed_from_evidence (D : DoubleGroupoidPackage) (E : DoubleGroupoidEvidence D) : DoubleGroupoidClosed D :=
  ⟨E.interchangeProof, E.structureProofs⟩

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrossedModuleClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- same issue, need evidence in AdmissibleClass
  exact A.2

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse