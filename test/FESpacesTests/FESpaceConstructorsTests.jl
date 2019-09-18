module FESpaceConstructorsTests

using Test
using Gridap

model = CartesianDiscreteModel(partition=(2,2))

V = FESpace(
  reffe=:Lagrangian,
  conformity=:H1,
  valuetype = Float64,
  order = 2,
  model = model)

@test isa(V,CLagrangianFESpace)

V = FESpace(
  reffe=:Lagrangian,
  conformity=:H1,
  valuetype = Float64,
  order = 2,
  model = model,
  diritags = [1,2])

@test isa(V,CLagrangianFESpace)

V = FESpace(
  reffe=:QLagrangian,
  conformity=:H1,
  valuetype = Float64,
  order = 2,
  model = model)

@test isa(V,CLagrangianFESpace)

V = FESpace(
  reffe=:Lagrangian,
  conformity=:L2,
  valuetype = Float64,
  order = 2,
  model = model)

@test isa(V,DLagrangianFESpace)

V = FESpace(
  reffe=:QLagrangian,
  conformity=:L2,
  valuetype = Float64,
  order = 2,
  model = model)

@test isa(V,DLagrangianFESpace)

V = FESpace(
  reffe=:PLagrangian,
  conformity=:L2,
  valuetype = Float64,
  order = 2,
  model = model)

@test isa(V,DiscFESpace)

V = FESpace(
  reffe=:RaviartThomas,
  conformity=:HDiv,
  order = 2,
  model = model)

@test isa(V,ConformingFESpace)

V = FESpace(
  reffe=:RaviartThomas,
  conformity=:L2,
  order = 2,
  model = model)

@test isa(V,DiscFESpace)

end # module
