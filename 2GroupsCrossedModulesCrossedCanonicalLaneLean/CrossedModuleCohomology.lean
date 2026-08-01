import canonicalLaneMathlib.AdmissibleClass
import .CrossedModule

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossed

structure CrossedModuleCocycle (G : Type u) [Group G] (H : Type v) [Group H]
    (M : CrossedModule G H) (n : ℕ) where
  function : G^n → H
  cocycle_condition : ∀ (g1 ... gn : G), ...

structure CrossedModuleCohomologyGroup (G : Type u) [Group G] (H : Type v) [Group H]
    (M : CrossedModule G H) (n : ℕ) where
  cocycles : Set (CrossedModuleCocycle G H M n)
  coboundaries : Set (CrossedModuleCocycle G H M n)
  quotient_group : Group (cocycles / coboundaries)

end TwoGroupsCrossedModulesCrossed
end HautevilleHouse