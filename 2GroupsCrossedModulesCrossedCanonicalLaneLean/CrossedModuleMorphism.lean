import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.TwoGroupsCrossedModulesCrossedCanonicalLaneLean.CrossedModule

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedCanonicalLaneLean

structure CrossedModuleMorphismPackage (P Q : CrossedModulePackage) where
  mapG : P.object.G → Q.object.G
  mapH : P.object.H → Q.object.H
  compatibility : Prop
  compatibilityTerm : compatibility

def CrossedModuleMorphismClosed {P Q : CrossedModulePackage} (M : CrossedModuleMorphismPackage P Q) : Prop :=
  M.compatibility

end TwoGroupsCrossedModulesCrossedCanonicalLaneLean
end HautevilleHouse