import ../isl

# Using the ISL string functions
# This is a port of the tutorial by Tobias Grosser for islpy
# http://www.grosser.es/tutorials/polyhedral-ast-generation.html

# Polyhedral program description
let ctx = isl_ctx_alloc()
let context = ctx.isl_set_read_from_str("{ : }")
let domain = ctx.isl_set_read_from_str("[T,N] -> { S[t,i] : 1<=t<=T and 1<=i<=N }")
let schedule = ctx.isl_map_read_from_str("[T,N] -> { S[t,i] -> [t,i+t] }")

let schedule_domain = schedule.isl_map_intersect_domain(domain)

# Translate to AST
let build = isl_ast_build_from_context(context)
let ast = build.isl_ast_build_node_from_schedule_map(
    schedule_domain.isl_union_map_from_map()
  )
ast.isl_ast_node_dump()

# iterator:
#   id: c0
# init:
#   val: 1
# cond:
#   op: le
#   args:
#   - id: c0
#   - id: T
# inc:
#   val: 1
# body:
#   iterator:
#     id: c1
#   init:
#     op: add
#     args:
#     - id: c0
#     - val: 1
#   cond:
#     op: le
#     args:
#     - id: c1
#     - op: add
#       args:
#       - id: N
#       - id: c0
#   inc:
#     val: 1
#   body:
#     user:
#       op: call
#       args:
#       - id: S
#       - id: c0
#       - op: add
#         args:
#         - op: minus
#           args:
#           - id: c0
#         - id: c1
