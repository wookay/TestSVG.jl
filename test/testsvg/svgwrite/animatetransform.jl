module test_testsvg_svgwrite_animatetransform

using Test
using PyCall

svgwrite = pyimport("svgwrite")
AnimateTransform = svgwrite.animate.AnimateTransform
s = AnimateTransform("translate", debug=true)
@test s.tostring() == """<animateTransform type="translate" />"""

end # module test_testsvg_svgwrite_animatetransform
