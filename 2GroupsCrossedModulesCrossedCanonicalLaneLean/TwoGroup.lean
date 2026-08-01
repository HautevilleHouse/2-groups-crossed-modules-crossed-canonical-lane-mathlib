import canonicalLaneMathlib.AdmissibleClass
import .CrossedModule

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossed

structure TwoGroup where
  obGroup : Type u
  morGroup : Type v
  [obGroup_group : Group obGroup]
  [morGroup_group : Group morGroup]
  source : morGroup → obGroup
  target : morGroup → obGroup
  composition : morGroup → morGroup → morGroup
  identity : obGroup → morGroup
  source_target_comp : ∀ (f g : morGroup), target f = source g → source (composition f g) = source f ∧ target (composition f g) = target g
  identity_source : ∀ (x : obGroup), source (identity x) = x
  identity_target : ∀ (x : obGroup), target (identity x) = x
  composition_assoc : ∀ (f g h : morGroup), target f = source g → target g = source h → composition (composition f g) h = composition f (composition g h)
  identity_comp_left : ∀ (f : morGroup), composition (identity (source f)) f = f
  identity_comp_right : ∀ (f : morGroup), composition f (identity (target f)) = f

-- A crossed module induces a 2-group

def crossedModuleToTwoGroup (G : Type u) [Group G] (H : Type v) [Group H] (M : CrossedModule G H) : TwoGroup :=
  let obGroup := G
  let morGroup := H
  let source (h : H) : G := M.boundary h
  let target (h : H) : G := M.boundary h
  -- etc.
  { obGroup := G
    morGroup := H
    obGroup_group := inferInstance
    morGroup_group := inferInstance
    source := M.boundary
    target := M.boundary
    composition := M.action
    identity := λ g => ?_ -- need to define identity morphism for each g
    source_target_comp := ?_
    identity_source := ?_
    identity_target := ?_
    composition_assoc := ?_
    identity_comp_left := ?_
    identity_comp_right := ?_
  }

end TwoGroupsCrossedModulesCrossed
end HautevilleHouse