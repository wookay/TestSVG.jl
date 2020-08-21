module test_testsvg_svgwrite_set

using Test
using PyCall

svgwrite = pyimport("svgwrite")
animate = svgwrite.animate
s = animate.Set(debug=true)
@test s.tostring() == """<set />"""

end # module test_testsvg_svgwrite_set
