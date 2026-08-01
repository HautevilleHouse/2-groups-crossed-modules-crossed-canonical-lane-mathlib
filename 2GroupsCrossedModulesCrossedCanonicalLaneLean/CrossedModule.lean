import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossed

structure CrossedModule (G : Type u) [Group G] (H : Type v) [Group H] where
  action : G → H → H
  boundary : H → G
  boundary_action_compatibility : ∀ (h : H) (g : G), boundary (action g h) = g * boundary h * g⁻¹
  action_boundary_identity : ∀ (h : H), action (boundary h) h = h

structure CrossedModuleMorphism {G : Type u} [Group G] {H : Type v} [Group H]
    (M : CrossedModule G H) {G' : Type u'} [Group G'] {H' : Type v'} [Group H']
    (M' : CrossedModule G' H') where
  groupMap : G → G'
  moduleMap : H → H'
  groupMap_hom : groupMap * (groupMap : G → G') = ?_ -- placeholder, need to state homomorphism
  moduleMap_hom : moduleMap * (moduleMap : H → H') = ?_
  compatibility_boundary : ∀ (h : H), groupMap (M.boundary h) = M'.boundary (moduleMap h)
  compatibility_action : ∀ (g : G) (h : H), moduleMap (M.action g h) = M'.action (groupMap g) (moduleMap h)

end TwoGroupsCrossedModulesCrossed
end HautevilleHouse