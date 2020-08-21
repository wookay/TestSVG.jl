module test_testsvg_svgwrite_animatecolor

using Test
using PyCall

svgwrite = pyimport("svgwrite")
AnimateColor = svgwrite.animate.AnimateColor
s = AnimateColor(debug=true)
@test s.tostring() == """<animateColor />"""

end # module test_testsvg_svgwrite_animatecolor
