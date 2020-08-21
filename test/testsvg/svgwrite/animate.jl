module test_testsvg_svgwrite_animate

using Test
using PyCall

svgwrite = pyimport("svgwrite")
Animate = svgwrite.animate.Animate
a = Animate("x", debug=true)
@test a.tostring() == """<animate attributeName="x" />"""

end # module test_testsvg_svgwrite_animate
