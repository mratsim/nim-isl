import nimterop/cimport


when false: # Configure the project, only needed once
  import strutils
  from os import DirSep, walkFiles
  static:
    const cSourcesPath = currentSourcePath.rsplit(DirSep, 1)[0]
    echo staticExec(cSourcesPath & "/isl_configure.sh")

static:
  cDebug()
  cAddStdDir()

cIncludeDir("isl")
cIncludeDir("isl/include")
cIncludeDir("isl/imath_wrap")

cOverride:
  type
    isl_options {.importc, header: "isl/include/isl/options.h".} = object
    isl_args {.importc, header: "isl/include/isl/arg.h".} = object
    isl_map {.importc, header: "isl/include/isl/map_type.h".} = object
    isl_basic_map {.importc, header: "isl/include/isl/map_type.h".} = object
    isl_set_type {.importc, header: "isl/include/isl/set_type.h".} = object
    isl_set {.importc, header: "isl/include/isl/set.h".} = object
    isl_basic_set {.importc, header: "isl/include/isl/map_type.h".} = object
    isl_map_list {.importc, header: "isl/include/isl/list.h".} = object
    isl_basic_map_list {.importc, header: "isl/include/isl/list.h".} = object
    isl_set_list {.importc, header: "isl/include/isl/list.h".} = object
    isl_basic_set_list {.importc, header: "isl/include/isl/list.h".} = object
    isl_aff_list {.importc, header: "isl/include/isl/list.h".} = object
    isl_dim_type {.importc, header: "isl/include/isl/space_type.h".} = object
    isl_space {.importc, header: "isl/include/isl/space_type.h".} = object
    isl_printer {.importc, header: "isl/include/isl/printer.h".} = object
    isl_pw_aff {.importc, header: "isl/include/isl/aff_type.h".} = object
    isl_pw_multi_aff {.importc, header: "isl/include/isl/aff_type.h".} = object
    isl_multi_pw_aff {.importc, header: "isl/include/isl/aff_type.h".} = object
    isl_multi_aff {.importc, header: "isl/include/isl/aff_type.h".} = object
    isl_aff {.importc, header: "isl/include/isl/aff_type.h".} = object
    isl_point {.importc, header: "isl/include/isl/point.h".} = object
    isl_fixed_box {.importc, header: "isl/include/isl/fixed_box.h".} = object
    isl_local_space {.importc, header: "isl/include/isl/local_space.h".} = object
    isl_stride_info {.importc, header: "isl/include/isl/stride_info.h".} = object
    isl_id {.importc, header: "isl/include/isl/id_type.h".} = object
    isl_val {.importc, header: "isl/include/isl/val_type.h".} = object
    isl_mat {.importc, header: "isl/include/isl/mat.h".} = object

# Nim interface
cImport("isl/include/isl/ctx.h", false)
cImport("isl/include/isl/map.h", false)
cImport("isl/include/isl/set.h", false)

# See Makefile.am
# Multiprecision
cCompile("isl/isl_imath.c")
cCompile("isl/imath_wrap/gmp_compat.c")
cCompile("isl/imath_wrap/imath.c")
cCompile("isl/imath_wrap/imrat.c")

# Small int optimization
cCompile("isl/isl_int_sioimath.c")
cCompile("isl/isl_val_sioimath.c")

# Lib sources
cCompile("isl/isl_aff.c")
cCompile("isl/isl_aff_map.c")
cCompile("isl/isl_affine_hull.c")
cCompile("isl/isl_arg.c")
cCompile("isl/isl_ast.c")
cCompile("isl/isl_ast_build.c")
cCompile("isl/isl_ast_build_expr.c")
cCompile("isl/isl_ast_codegen.c")
cCompile("isl/isl_ast_graft.c")
cCompile("isl/basis_reduction_tab.c")
cCompile("isl/isl_bernstein.c")
cCompile("isl/isl_blk.c")
cCompile("isl/isl_bound.c")
cCompile("isl/isl_box.c")
cCompile("isl/isl_coalesce.c")
cCompile("isl/isl_constraint.c")
cCompile("isl/isl_convex_hull.c")
cCompile("isl/isl_ctx.c")
cCompile("isl/isl_deprecated.c")
cCompile("isl/isl_dim_map.c")
cCompile("isl/isl_equalities.c")
cCompile("isl/isl_factorization.c")
cCompile("isl/isl_farkas.c")
cCompile("isl/isl_ffs.c")
cCompile("isl/isl_flow.c")
cCompile("isl/isl_fold.c")
cCompile("isl/isl_hash.c")
cCompile("isl/isl_id_to_ast_expr.c")
cCompile("isl/isl_id_to_id.c")
cCompile("isl/isl_id_to_pw_aff.c")
cCompile("isl/isl_ilp.c")
cCompile("isl/isl_input.c")
cCompile("isl/isl_local.c")
cCompile("isl/isl_local_space.c")
cCompile("isl/isl_lp.c")
cCompile("isl/isl_map.c")
cCompile("isl/isl_map_list.c")
cCompile("isl/isl_map_simplify.c")
cCompile("isl/isl_map_subtract.c")
cCompile("isl/isl_map_to_basic_set.c")
cCompile("isl/isl_mat.c")
cCompile("isl/isl_morph.c")
cCompile("isl/isl_id.c")
cCompile("isl/isl_obj.c")
cCompile("isl/isl_options.c")
cCompile("isl/isl_output.c")
cCompile("isl/isl_point.c")
cCompile("isl/isl_polynomial.c")
cCompile("isl/isl_printer.c")
cCompile("isl/print.c")
cCompile("isl/isl_range.c")
cCompile("isl/isl_reordering.c")
cCompile("isl/isl_sample.c")
cCompile("isl/isl_scan.c")
cCompile("isl/isl_schedule.c")
cCompile("isl/isl_schedule_band.c")
cCompile("isl/isl_schedule_node.c")
cCompile("isl/isl_schedule_read.c")
cCompile("isl/isl_schedule_tree.c")
cCompile("isl/isl_schedule_constraints.c")
cCompile("isl/isl_scheduler.c")
cCompile("isl/isl_set_list.c")
cCompile("isl/isl_sort.c")
cCompile("isl/isl_space.c")
cCompile("isl/isl_stream.c")
cCompile("isl/isl_seq.c")
cCompile("isl/isl_stride.c")
cCompile("isl/isl_tab.c")
cCompile("isl/isl_tab_pip.c")
cCompile("isl/isl_tarjan.c")
cCompile("isl/isl_transitive_closure.c")
cCompile("isl/isl_union_map.c")
cCompile("isl/isl_val.c")
cCompile("isl/isl_vec.c")
cCompile("isl/isl_version.c")
cCompile("isl/isl_vertices.c")