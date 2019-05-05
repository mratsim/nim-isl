import nimterop/cimport

import strutils
from os import DirSep, walkFiles

const # TODO better path with DirSep
  cSourcesPath = currentSourcePath.rsplit(DirSep, 1)[0]
  cHeaderPath = cSourcesPath & DirSep & "isl/include/isl/" 

when false: # Configure the project, only needed once
  static:
    echo staticExec(cSourcesPath & "/isl_configure.sh")

static:
  cDebug()
  cAddStdDir()

cIncludeDir(cSourcesPath & DirSep & "isl")
cIncludeDir(cSourcesPath & DirSep & "isl/include")
cIncludeDir(cSourcesPath & DirSep & "isl/imath_wrap")

cOverride:
  type
    isl_options {.importc, header: cHeaderPath & "options.h".} = object
    isl_args {.importc, header: cHeaderPath & "arg.h".} = object
    isl_map {.importc, header: cHeaderPath & "map_type.h".} = object
    isl_basic_map {.importc, header: cHeaderPath & "map_type.h".} = object
    isl_set_type {.importc, header: cHeaderPath & "set_type.h".} = object
    isl_set {.importc, header: cHeaderPath & "set.h".} = object
    isl_basic_set {.importc, header: cHeaderPath & "map_type.h".} = object
    isl_map_list {.importc, header: cHeaderPath & "list.h".} = object
    isl_basic_map_list {.importc, header: cHeaderPath & "list.h".} = object
    isl_set_list {.importc, header: cHeaderPath & "list.h".} = object
    isl_basic_set_list {.importc, header: cHeaderPath & "list.h".} = object
    isl_aff_list {.importc, header: cHeaderPath & "list.h".} = object
    isl_dim_type {.importc, header: cHeaderPath & "space_type.h".} = object
    isl_space {.importc, header: cHeaderPath & "space_type.h".} = object
    isl_printer {.importc, header: cHeaderPath & "printer.h".} = object
    isl_pw_aff {.importc, header: cHeaderPath & "aff_type.h".} = object
    isl_pw_multi_aff {.importc, header: cHeaderPath & "aff_type.h".} = object
    isl_multi_pw_aff {.importc, header: cHeaderPath & "aff_type.h".} = object
    isl_multi_aff {.importc, header: cHeaderPath & "aff_type.h".} = object
    isl_aff {.importc, header: cHeaderPath & "aff_type.h".} = object
    isl_point {.importc, header: cHeaderPath & "point.h".} = object
    isl_fixed_box {.importc, header: cHeaderPath & "fixed_box.h".} = object
    isl_local_space {.importc, header: cHeaderPath & "local_space.h".} = object
    isl_stride_info {.importc, header: cHeaderPath & "stride_info.h".} = object
    isl_id {.importc, header: cHeaderPath & "id_type.h".} = object
    isl_val {.importc, header: cHeaderPath & "val_type.h".} = object
    isl_mat {.importc, header: cHeaderPath & "mat.h".} = object

# Nim interface
cImport(cHeaderPath & "ctx.h", false)
cImport(cHeaderPath & "map.h", false)
cImport(cHeaderPath & "set.h", false)

# See Makefile.am
# Multiprecision
cCompile(cSourcesPath & DIrSep & "isl/isl_imath.c")
cCompile(cSourcesPath & DIrSep & "isl/imath_wrap/gmp_compat.c")
cCompile(cSourcesPath & DIrSep & "isl/imath_wrap/imath.c")
cCompile(cSourcesPath & DIrSep & "isl/imath_wrap/imrat.c")

# Small int optimization
cCompile(cSourcesPath & DIrSep & "isl/isl_int_sioimath.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_val_sioimath.c")

# Lib sources
cCompile(cSourcesPath & DIrSep & "isl/isl_aff.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_aff_map.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_affine_hull.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_arg.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ast.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ast_build.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ast_build_expr.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ast_codegen.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ast_graft.c")
cCompile(cSourcesPath & DIrSep & "isl/basis_reduction_tab.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_bernstein.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_blk.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_bound.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_box.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_coalesce.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_constraint.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_convex_hull.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ctx.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_deprecated.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_dim_map.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_equalities.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_factorization.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_farkas.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ffs.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_flow.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_fold.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_hash.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_id_to_ast_expr.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_id_to_id.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_id_to_pw_aff.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_ilp.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_input.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_local.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_local_space.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_lp.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_map.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_map_list.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_map_simplify.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_map_subtract.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_map_to_basic_set.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_mat.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_morph.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_id.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_obj.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_options.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_output.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_point.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_polynomial.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_printer.c")
cCompile(cSourcesPath & DIrSep & "isl/print.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_range.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_reordering.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_sample.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_scan.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_schedule.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_schedule_band.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_schedule_node.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_schedule_read.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_schedule_tree.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_schedule_constraints.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_scheduler.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_set_list.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_sort.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_space.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_stream.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_seq.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_stride.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_tab.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_tab_pip.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_tarjan.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_transitive_closure.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_union_map.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_val.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_vec.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_version.c")
cCompile(cSourcesPath & DIrSep & "isl/isl_vertices.c")