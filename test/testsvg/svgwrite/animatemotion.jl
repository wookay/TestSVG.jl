module test_testsvg_svgwrite_animatemotion

using Test
using PyCall

svgwrite = pyimport("svgwrite")
AnimateMotion = svgwrite.animate.AnimateMotion
s = AnimateMotion(debug=true)
@test s.tostring() == """<animateMotion />"""

end # module test_testsvg_svgwrite_animatemotion
