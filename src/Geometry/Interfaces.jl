
# @fverdugo the name of the following types are likely to change

"""
Minimal interface needed to describe a conforming linear discretization
of a domain.

D is the dimension of the coordinates and Z is the dimension of the cells
"""
abstract type Grid{D,Z} end

function points(::Grid{D})::IndexCellValue{Point{D}} where D
  @abstractmethod
end

cells(::Grid)::IndexCellVector{Int} = @abstractmethod

# @fverdugo better to return the polytope instead?
"""
Returns the tuple uniquely identifying the Polytope of each cell
"""
function celltypes(::Grid{D,Z})::IndexCellValue{NTuple{Z}} where {D,Z}
  @abstractmethod
end

