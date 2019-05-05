
{.passC: "-I/path/to/nim-isl/isl".}

{.passC: "-I/path/to/nim-isl/isl/include".}

{.passC: "-I/path/to/nim-isl/isl/imath_wrap".}
Overriding isl_options isl_args isl_map isl_basic_map isl_set_type isl_set isl_basic_set isl_map_list isl_basic_map_list isl_set_list isl_basic_set_list isl_aff_list isl_dim_type isl_space isl_printer isl_pw_aff isl_pw_multi_aff isl_multi_pw_aff isl_multi_aff isl_aff isl_point isl_fixed_box isl_local_space isl_stride_info isl_id isl_val isl_mat isl_id_list isl_ast_expr isl_ast_node isl_schedule isl_union_map isl_ast_expr_list isl_ast_expr_type isl_ast_node_list isl_ast_node_type isl_id_to_ast_expr isl_ast_expr_op_type isl_ast_print_options isl_union_map_list isl_union_set_list isl_union_set isl_union_pw_multi_aff isl_multi_union_pw_aff
# Importing /path/to/nim-isl/isl/include/isl/ctx.h
# /<$USER>/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --includeDirs+=/path/to/nim-isl/isl --includeDirs+=/path/to/nim-isl/isl/include --includeDirs+=/path/to/nim-isl/isl/imath_wrap --symOverride=isl_options,isl_args,isl_map,isl_basic_map,isl_set_type,isl_set,isl_basic_set,isl_map_list,isl_basic_map_list,isl_set_list,isl_basic_set_list,isl_aff_list,isl_dim_type,isl_space,isl_printer,isl_pw_aff,isl_pw_multi_aff,isl_multi_pw_aff,isl_multi_aff,isl_aff,isl_point,isl_fixed_box,isl_local_space,isl_stride_info,isl_id,isl_val,isl_mat,isl_id_list,isl_ast_expr,isl_ast_node,isl_schedule,isl_union_map,isl_ast_expr_list,isl_ast_expr_type,isl_ast_node_list,isl_ast_node_type,isl_id_to_ast_expr,isl_ast_expr_op_type,isl_ast_print_options,isl_union_map_list,isl_union_set_list,isl_union_set,isl_union_pw_multi_aff,isl_multi_union_pw_aff /path/to/nim-isl/isl/include/isl/ctx.h

{.experimental: "codeReordering".}
{.hint[ConvFromXtoItselfNotNeeded]: off.}
import
  nimterop / types

defineEnum(isl_error)
defineEnum(isl_stat)
defineEnum(isl_bool)
const
  headerctx {.used.} = "/path/to/nim-isl/isl/include/isl/ctx.h"
  isl_error_none* = (0).isl_error
  isl_error_abort* = 1.isl_error
  isl_error_alloc* = 2.isl_error
  isl_error_unknown* = 3.isl_error
  isl_error_internal* = 4.isl_error
  isl_error_invalid* = 5.isl_error
  isl_error_quota* = 6.isl_error
  isl_error_unsupported* = 7.isl_error
  isl_stat_error* = (-1).isl_stat
  isl_stat_ok* = (0).isl_stat
  isl_bool_error* = (-1).isl_bool
  isl_bool_false* = (0).isl_bool
  isl_bool_true* = (1).isl_bool
type
  isl_stats* {.importc: "struct isl_stats", header: headerctx, bycopy.} = object
    gbr_solved_lps*: clong

  isl_size* = cint
  isl_ctx* {.bycopy.} = object
proc isl_bool_not*(b: isl_bool): isl_bool {.importc, header: headerctx.}
proc isl_bool_ok*(b: cint): isl_bool {.importc, header: headerctx.}
proc isl_malloc_or_die*(ctx: ptr isl_ctx; size: cuint): pointer {.importc,
    header: headerctx.}
proc isl_calloc_or_die*(ctx: ptr isl_ctx; nmemb: cuint; size: cuint): pointer {.importc,
    header: headerctx.}
proc isl_realloc_or_die*(ctx: ptr isl_ctx; `ptr`: pointer; size: cuint): pointer {.
    importc, header: headerctx.}
proc isl_handle_error*(ctx: ptr isl_ctx; error: isl_error; msg: cstring; file: cstring;
                      line: cint) {.importc, header: headerctx.}
proc isl_ctx_options*(ctx: ptr isl_ctx): ptr isl_options {.importc, header: headerctx.}
proc isl_ctx_alloc_with_options*(args: ptr isl_args; opt: pointer): ptr isl_ctx {.
    importc, header: headerctx.}
proc isl_ctx_alloc*(): ptr isl_ctx {.importc, header: headerctx.}
proc isl_ctx_peek_options*(ctx: ptr isl_ctx; args: ptr isl_args): pointer {.importc,
    header: headerctx.}
proc isl_ctx_parse_options*(ctx: ptr isl_ctx; argc: cint; argv: ptr cstring; flags: cuint): cint {.
    importc, header: headerctx.}
proc isl_ctx_ref*(ctx: ptr isl_ctx) {.importc, header: headerctx.}
proc isl_ctx_deref*(ctx: ptr isl_ctx) {.importc, header: headerctx.}
proc isl_ctx_free*(ctx: ptr isl_ctx) {.importc, header: headerctx.}
proc isl_ctx_abort*(ctx: ptr isl_ctx) {.importc, header: headerctx.}
proc isl_ctx_resume*(ctx: ptr isl_ctx) {.importc, header: headerctx.}
proc isl_ctx_aborted*(ctx: ptr isl_ctx): cint {.importc, header: headerctx.}
proc isl_ctx_set_max_operations*(ctx: ptr isl_ctx; max_operations: culong) {.importc,
    header: headerctx.}
proc isl_ctx_get_max_operations*(ctx: ptr isl_ctx): culong {.importc,
    header: headerctx.}
proc isl_ctx_reset_operations*(ctx: ptr isl_ctx) {.importc, header: headerctx.}
proc isl_ctx_last_error*(ctx: ptr isl_ctx): isl_error {.importc, header: headerctx.}
proc isl_ctx_last_error_msg*(ctx: ptr isl_ctx): cstring {.importc, header: headerctx.}
proc isl_ctx_last_error_file*(ctx: ptr isl_ctx): cstring {.importc, header: headerctx.}
proc isl_ctx_last_error_line*(ctx: ptr isl_ctx): cint {.importc, header: headerctx.}
proc isl_ctx_reset_error*(ctx: ptr isl_ctx) {.importc, header: headerctx.}
proc isl_ctx_set_error*(ctx: ptr isl_ctx; error: isl_error) {.importc,
    header: headerctx.}
# Importing /path/to/nim-isl/isl/include/isl/set.h
# /<$USER>/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --includeDirs+=/path/to/nim-isl/isl --includeDirs+=/path/to/nim-isl/isl/include --includeDirs+=/path/to/nim-isl/isl/imath_wrap --symOverride=isl_options,isl_args,isl_map,isl_basic_map,isl_set_type,isl_set,isl_basic_set,isl_map_list,isl_basic_map_list,isl_set_list,isl_basic_set_list,isl_aff_list,isl_dim_type,isl_space,isl_printer,isl_pw_aff,isl_pw_multi_aff,isl_multi_pw_aff,isl_multi_aff,isl_aff,isl_point,isl_fixed_box,isl_local_space,isl_stride_info,isl_id,isl_val,isl_mat,isl_id_list,isl_ast_expr,isl_ast_node,isl_schedule,isl_union_map,isl_ast_expr_list,isl_ast_expr_type,isl_ast_node_list,isl_ast_node_type,isl_id_to_ast_expr,isl_ast_expr_op_type,isl_ast_print_options,isl_union_map_list,isl_union_set_list,isl_union_set,isl_union_pw_multi_aff,isl_multi_union_pw_aff /path/to/nim-isl/isl/include/isl/set.h

{.experimental: "codeReordering".}
{.hint[ConvFromXtoItselfNotNeeded]: off.}
import
  nimterop / types

const
  headerset {.used.} = "/path/to/nim-isl/isl/include/isl/set.h"
proc isl_basic_set_n_dim*(bset: ptr isl_basic_set): isl_size {.importc,
    header: headerset.}
proc isl_basic_set_n_param*(bset: ptr isl_basic_set): isl_size {.importc,
    header: headerset.}
proc isl_basic_set_total_dim*(bset: ptr isl_basic_set): isl_size {.importc,
    header: headerset.}
proc isl_basic_set_dim*(bset: ptr isl_basic_set; `type`: isl_dim_type): isl_size {.
    importc, header: headerset.}
proc isl_set_n_dim*(set: ptr isl_set): isl_size {.importc, header: headerset.}
proc isl_set_n_param*(set: ptr isl_set): isl_size {.importc, header: headerset.}
proc isl_set_dim*(set: ptr isl_set; `type`: isl_dim_type): isl_size {.importc,
    header: headerset.}
proc isl_basic_set_get_ctx*(bset: ptr isl_basic_set): ptr isl_ctx {.importc,
    header: headerset.}
proc isl_set_get_ctx*(set: ptr isl_set): ptr isl_ctx {.importc, header: headerset.}
proc isl_basic_set_get_space*(bset: ptr isl_basic_set): ptr isl_space {.importc,
    header: headerset.}
proc isl_set_get_space*(set: ptr isl_set): ptr isl_space {.importc, header: headerset.}
proc isl_set_reset_space*(set: ptr isl_set; dim: ptr isl_space): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_get_div*(bset: ptr isl_basic_set; pos: cint): ptr isl_aff {.importc,
    header: headerset.}
proc isl_basic_set_get_local_space*(bset: ptr isl_basic_set): ptr isl_local_space {.
    importc, header: headerset.}
proc isl_basic_set_get_tuple_name*(bset: ptr isl_basic_set): cstring {.importc,
    header: headerset.}
proc isl_set_has_tuple_name*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_get_tuple_name*(set: ptr isl_set): cstring {.importc, header: headerset.}
proc isl_basic_set_set_tuple_name*(set: ptr isl_basic_set; s: cstring): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_set_tuple_name*(set: ptr isl_set; s: cstring): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_get_dim_name*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                                pos: cuint): cstring {.importc, header: headerset.}
proc isl_basic_set_set_dim_name*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                                pos: cuint; s: cstring): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_has_dim_name*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint): isl_bool {.
    importc, header: headerset.}
proc isl_set_get_dim_name*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint): cstring {.
    importc, header: headerset.}
proc isl_set_set_dim_name*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint;
                          s: cstring): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_get_dim_id*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                              pos: cuint): ptr isl_id {.importc, header: headerset.}
proc isl_basic_set_set_tuple_id*(bset: ptr isl_basic_set; id: ptr isl_id): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_set_dim_id*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint;
                        id: ptr isl_id): ptr isl_set {.importc, header: headerset.}
proc isl_set_has_dim_id*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint): isl_bool {.
    importc, header: headerset.}
proc isl_set_get_dim_id*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint): ptr isl_id {.
    importc, header: headerset.}
proc isl_set_set_tuple_id*(set: ptr isl_set; id: ptr isl_id): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_reset_tuple_id*(set: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_has_tuple_id*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_get_tuple_id*(set: ptr isl_set): ptr isl_id {.importc, header: headerset.}
proc isl_set_reset_user*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_find_dim_by_id*(set: ptr isl_set; `type`: isl_dim_type; id: ptr isl_id): cint {.
    importc, header: headerset.}
proc isl_set_find_dim_by_name*(set: ptr isl_set; `type`: isl_dim_type; name: cstring): cint {.
    importc, header: headerset.}
proc isl_basic_set_is_rational*(bset: ptr isl_basic_set): cint {.importc,
    header: headerset.}
proc isl_basic_set_free*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_copy*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_empty*(space: ptr isl_space): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_universe*(space: ptr isl_space): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_nat_universe*(space: ptr isl_space): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_positive_orthant*(space: ptr isl_space): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_print_internal*(bset: ptr isl_basic_set; `out`: ptr FILE;
                                  indent: cint) {.importc, header: headerset.}
proc isl_basic_set_intersect*(bset1: ptr isl_basic_set; bset2: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_intersect_params*(bset1: ptr isl_basic_set;
                                    bset2: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_apply*(bset: ptr isl_basic_set; bmap: ptr isl_basic_map): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_preimage_multi_aff*(bset: ptr isl_basic_set;
                                      ma: ptr isl_multi_aff): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_affine_hull*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_remove_dims*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                               first: cuint; n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_sample*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_detect_equalities*(bset: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_remove_redundancies*(bset: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_remove_redundancies*(set: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_list_intersect*(list: ptr isl_basic_set_list): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_list_union*(list: ptr isl_set_list): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_read_from_file*(ctx: ptr isl_ctx; input: ptr FILE): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_read_from_str*(ctx: ptr isl_ctx; str: cstring): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_read_from_file*(ctx: ptr isl_ctx; input: ptr FILE): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_read_from_str*(ctx: ptr isl_ctx; str: cstring): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_dump*(bset: ptr isl_basic_set) {.importc, header: headerset.}
proc isl_set_dump*(set: ptr isl_set) {.importc, header: headerset.}
proc isl_printer_print_basic_set*(printer: ptr isl_printer; bset: ptr isl_basic_set): ptr isl_printer {.
    importc, header: headerset.}
proc isl_printer_print_set*(printer: ptr isl_printer; map: ptr isl_set): ptr isl_printer {.
    importc, header: headerset.}
proc isl_basic_set_fix_si*(bset: ptr isl_basic_set; `type`: isl_dim_type; pos: cuint;
                          value: cint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_fix_val*(bset: ptr isl_basic_set; `type`: isl_dim_type; pos: cuint;
                           v: ptr isl_val): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_fix_si*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint; value: cint): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_lower_bound_si*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint;
                            value: cint): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_lower_bound_val*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                                   pos: cuint; value: ptr isl_val): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_lower_bound_val*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint;
                             value: ptr isl_val): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_upper_bound_si*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint;
                            value: cint): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_upper_bound_val*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                                   pos: cuint; value: ptr isl_val): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_upper_bound_val*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint;
                             value: ptr isl_val): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_equate*(set: ptr isl_set; type1: isl_dim_type; pos1: cint;
                    type2: isl_dim_type; pos2: cint): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_is_equal*(bset1: ptr isl_basic_set; bset2: ptr isl_basic_set): isl_bool {.
    importc, header: headerset.}
proc isl_basic_set_is_disjoint*(bset1: ptr isl_basic_set; bset2: ptr isl_basic_set): isl_bool {.
    importc, header: headerset.}
proc isl_basic_set_partial_lexmin*(bset: ptr isl_basic_set; dom: ptr isl_basic_set;
                                  empty: ptr ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_partial_lexmax*(bset: ptr isl_basic_set; dom: ptr isl_basic_set;
                                  empty: ptr ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_partial_lexmin*(set: ptr isl_set; dom: ptr isl_set; empty: ptr ptr isl_set): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_partial_lexmax*(set: ptr isl_set; dom: ptr isl_set; empty: ptr ptr isl_set): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_lexmin*(bset: ptr isl_basic_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_lexmax*(bset: ptr isl_basic_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_lexmin*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_lexmax*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_partial_lexmin_pw_multi_aff*(bset: ptr isl_basic_set;
    dom: ptr isl_basic_set; empty: ptr ptr isl_set): ptr isl_pw_multi_aff {.importc,
    header: headerset.}
proc isl_basic_set_partial_lexmax_pw_multi_aff*(bset: ptr isl_basic_set;
    dom: ptr isl_basic_set; empty: ptr ptr isl_set): ptr isl_pw_multi_aff {.importc,
    header: headerset.}
proc isl_set_lexmin_pw_multi_aff*(set: ptr isl_set): ptr isl_pw_multi_aff {.importc,
    header: headerset.}
proc isl_set_lexmax_pw_multi_aff*(set: ptr isl_set): ptr isl_pw_multi_aff {.importc,
    header: headerset.}
proc isl_basic_set_union*(bset1: ptr isl_basic_set; bset2: ptr isl_basic_set): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_compare_at*(bset1: ptr isl_basic_set; bset2: ptr isl_basic_set;
                              pos: cint): cint {.importc, header: headerset.}
proc isl_set_follows_at*(set1: ptr isl_set; set2: ptr isl_set; pos: cint): cint {.importc,
    header: headerset.}
proc isl_basic_set_params*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_from_params*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_params*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_from_params*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_dims_get_sign*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                                 pos: cuint; n: cuint; signs: ptr cint): isl_stat {.
    importc, header: headerset.}
proc isl_basic_set_plain_is_universe*(bset: ptr isl_basic_set): isl_bool {.importc,
    header: headerset.}
proc isl_basic_set_is_universe*(bset: ptr isl_basic_set): isl_bool {.importc,
    header: headerset.}
proc isl_basic_set_plain_is_empty*(bset: ptr isl_basic_set): isl_bool {.importc,
    header: headerset.}
proc isl_basic_set_is_empty*(bset: ptr isl_basic_set): isl_bool {.importc,
    header: headerset.}
proc isl_basic_set_is_bounded*(bset: ptr isl_basic_set): isl_bool {.importc,
    header: headerset.}
proc isl_basic_set_is_subset*(bset1: ptr isl_basic_set; bset2: ptr isl_basic_set): isl_bool {.
    importc, header: headerset.}
proc isl_basic_set_plain_is_equal*(bset1: ptr isl_basic_set;
                                  bset2: ptr isl_basic_set): isl_bool {.importc,
    header: headerset.}
proc isl_set_empty*(space: ptr isl_space): ptr isl_set {.importc, header: headerset.}
proc isl_set_universe*(space: ptr isl_space): ptr isl_set {.importc, header: headerset.}
proc isl_set_nat_universe*(dim: ptr isl_space): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_copy*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_free*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_from_basic_set*(bset: ptr isl_basic_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_sample*(set: ptr isl_set): ptr isl_basic_set {.importc, header: headerset.}
proc isl_basic_set_sample_point*(bset: ptr isl_basic_set): ptr isl_point {.importc,
    header: headerset.}
proc isl_set_sample_point*(set: ptr isl_set): ptr isl_point {.importc,
    header: headerset.}
proc isl_set_detect_equalities*(set: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_affine_hull*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_convex_hull*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_polyhedral_hull*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_simple_hull*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_unshifted_simple_hull*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_plain_unshifted_simple_hull*(set: ptr isl_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_unshifted_simple_hull_from_set_list*(set: ptr isl_set;
    list: ptr isl_set_list): ptr isl_basic_set {.importc, header: headerset.}
proc isl_set_bounded_simple_hull*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_union_disjoint*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_union*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_product*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_flat_product*(bset1: ptr isl_basic_set; bset2: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_flat_product*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_intersect*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_intersect_params*(set: ptr isl_set; params: ptr isl_set): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_subtract*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_complement*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_apply*(set: ptr isl_set; map: ptr isl_map): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_preimage_multi_aff*(set: ptr isl_set; ma: ptr isl_multi_aff): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_preimage_pw_multi_aff*(set: ptr isl_set; pma: ptr isl_pw_multi_aff): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_preimage_multi_pw_aff*(set: ptr isl_set; mpa: ptr isl_multi_pw_aff): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_fix_val*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint; v: ptr isl_val): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_fix_dim_si*(set: ptr isl_set; dim: cuint; value: cint): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_insert_dims*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                               pos: cuint; n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_insert_dims*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_add_dims*(bset: ptr isl_basic_set; `type`: isl_dim_type; n: cuint): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_add_dims*(set: ptr isl_set; `type`: isl_dim_type; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_move_dims*(bset: ptr isl_basic_set; dst_type: isl_dim_type;
                             dst_pos: cuint; src_type: isl_dim_type; src_pos: cuint;
                             n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_move_dims*(set: ptr isl_set; dst_type: isl_dim_type; dst_pos: cuint;
                       src_type: isl_dim_type; src_pos: cuint; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_project_out*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                               first: cuint; n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_project_out*(set: ptr isl_set; `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_project_onto_map*(set: ptr isl_set; `type`: isl_dim_type; first: cuint;
                              n: cuint): ptr isl_map {.importc, header: headerset.}
proc isl_basic_set_remove_divs*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_eliminate*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                             first: cuint; n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_eliminate*(set: ptr isl_set; `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_eliminate_dims*(set: ptr isl_set; first: cuint; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_remove_dims*(bset: ptr isl_set; `type`: isl_dim_type; first: cuint;
                         n: cuint): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_remove_divs_involving_dims*(bset: ptr isl_basic_set;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_remove_divs_involving_dims*(set: ptr isl_set; `type`: isl_dim_type;
                                        first: cuint; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_remove_unknown_divs*(bset: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_remove_unknown_divs*(set: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_remove_divs*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_split_dims*(set: ptr isl_set; `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_drop_constraints_involving_dims*(bset: ptr isl_basic_set;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_drop_constraints_not_involving_dims*(bset: ptr isl_basic_set;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_drop_constraints_involving_dims*(set: ptr isl_set;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_drop_constraints_not_involving_dims*(set: ptr isl_set;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_involves_dims*(bset: ptr isl_basic_set; `type`: isl_dim_type;
                                 first: cuint; n: cuint): isl_bool {.importc,
    header: headerset.}
proc isl_set_involves_dims*(set: ptr isl_set; `type`: isl_dim_type; first: cuint;
                           n: cuint): isl_bool {.importc, header: headerset.}
proc isl_set_print_internal*(set: ptr isl_set; `out`: ptr FILE; indent: cint) {.importc,
    header: headerset.}
proc isl_set_plain_is_empty*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_plain_is_universe*(set: ptr isl_set): isl_bool {.importc,
    header: headerset.}
proc isl_set_is_params*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_is_empty*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_is_bounded*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_is_subset*(set1: ptr isl_set; set2: ptr isl_set): isl_bool {.importc,
    header: headerset.}
proc isl_set_is_strict_subset*(set1: ptr isl_set; set2: ptr isl_set): isl_bool {.
    importc, header: headerset.}
proc isl_set_is_equal*(set1: ptr isl_set; set2: ptr isl_set): isl_bool {.importc,
    header: headerset.}
proc isl_set_is_disjoint*(set1: ptr isl_set; set2: ptr isl_set): isl_bool {.importc,
    header: headerset.}
proc isl_set_is_singleton*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_is_box*(set: ptr isl_set): isl_bool {.importc, header: headerset.}
proc isl_set_has_equal_space*(set1: ptr isl_set; set2: ptr isl_set): isl_bool {.importc,
    header: headerset.}
proc isl_set_sum*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_neg*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_neg*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_make_disjoint*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_compute_divs*(bset: ptr isl_basic_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_compute_divs*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_plain_get_val_if_fixed*(set: ptr isl_set; `type`: isl_dim_type;
                                    pos: cuint): ptr isl_val {.importc,
    header: headerset.}
proc isl_set_dim_is_bounded*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint): isl_bool {.
    importc, header: headerset.}
proc isl_set_dim_has_lower_bound*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint): isl_bool {.
    importc, header: headerset.}
proc isl_set_dim_has_upper_bound*(set: ptr isl_set; `type`: isl_dim_type; pos: cuint): isl_bool {.
    importc, header: headerset.}
proc isl_set_dim_has_any_lower_bound*(set: ptr isl_set; `type`: isl_dim_type;
                                     pos: cuint): isl_bool {.importc,
    header: headerset.}
proc isl_set_dim_has_any_upper_bound*(set: ptr isl_set; `type`: isl_dim_type;
                                     pos: cuint): isl_bool {.importc,
    header: headerset.}
proc isl_basic_set_gist*(bset: ptr isl_basic_set; context: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_gist_basic_set*(set: ptr isl_set; context: ptr isl_basic_set): ptr isl_set {.
    importc, header: headerset.}
proc isl_set_gist*(set: ptr isl_set; context: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_gist_params*(set: ptr isl_set; context: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_set_dim_residue_class_val*(set: ptr isl_set; pos: cint;
                                   modulo: ptr ptr isl_val; residue: ptr ptr isl_val): isl_stat {.
    importc, header: headerset.}
proc isl_set_get_stride_info*(set: ptr isl_set; pos: cint): ptr isl_stride_info {.
    importc, header: headerset.}
proc isl_set_get_stride*(set: ptr isl_set; pos: cint): ptr isl_val {.importc,
    header: headerset.}
proc isl_set_coalesce*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_plain_cmp*(set1: ptr isl_set; set2: ptr isl_set): cint {.importc,
    header: headerset.}
proc isl_set_plain_is_equal*(set1: ptr isl_set; set2: ptr isl_set): isl_bool {.importc,
    header: headerset.}
proc isl_set_plain_is_disjoint*(set1: ptr isl_set; set2: ptr isl_set): isl_bool {.
    importc, header: headerset.}
proc isl_set_get_hash*(set: ptr isl_set): uint32 {.importc, header: headerset.}
proc isl_set_n_basic_set*(set: ptr isl_set): isl_size {.importc, header: headerset.}
proc isl_set_get_basic_set_list*(set: ptr isl_set): ptr isl_basic_set_list {.importc,
    header: headerset.}
proc isl_set_count_val*(set: ptr isl_set): ptr isl_val {.importc, header: headerset.}
proc isl_basic_set_from_point*(pnt: ptr isl_point): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_from_point*(pnt: ptr isl_point): ptr isl_set {.importc, header: headerset.}
proc isl_basic_set_box_from_points*(pnt1: ptr isl_point; pnt2: ptr isl_point): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_box_from_points*(pnt1: ptr isl_point; pnt2: ptr isl_point): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_lift*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_lift*(set: ptr isl_set): ptr isl_set {.importc, header: headerset.}
proc isl_set_lex_le_set*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_map {.importc,
    header: headerset.}
proc isl_set_lex_lt_set*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_map {.importc,
    header: headerset.}
proc isl_set_lex_ge_set*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_map {.importc,
    header: headerset.}
proc isl_set_lex_gt_set*(set1: ptr isl_set; set2: ptr isl_set): ptr isl_map {.importc,
    header: headerset.}
proc isl_set_size*(set: ptr isl_set): cint {.importc, header: headerset.}
proc isl_basic_set_align_params*(bset: ptr isl_basic_set; model: ptr isl_space): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_align_params*(set: ptr isl_set; model: ptr isl_space): ptr isl_set {.
    importc, header: headerset.}
proc isl_basic_set_drop_unused_params*(bset: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_drop_unused_params*(set: ptr isl_set): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_equalities_matrix*(bset: ptr isl_basic_set; c1: isl_dim_type;
                                     c2: isl_dim_type; c3: isl_dim_type;
                                     c4: isl_dim_type): ptr isl_mat {.importc,
    header: headerset.}
proc isl_basic_set_inequalities_matrix*(bset: ptr isl_basic_set; c1: isl_dim_type;
                                       c2: isl_dim_type; c3: isl_dim_type;
                                       c4: isl_dim_type): ptr isl_mat {.importc,
    header: headerset.}
proc isl_basic_set_from_constraint_matrices*(dim: ptr isl_space; eq: ptr isl_mat;
    ineq: ptr isl_mat; c1: isl_dim_type; c2: isl_dim_type; c3: isl_dim_type;
    c4: isl_dim_type): ptr isl_basic_set {.importc, header: headerset.}
proc isl_basic_set_from_multi_aff*(ma: ptr isl_multi_aff): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_set_from_multi_aff*(ma: ptr isl_multi_aff): ptr isl_set {.importc,
    header: headerset.}
proc isl_basic_set_reduced_basis*(bset: ptr isl_basic_set): ptr isl_mat {.importc,
    header: headerset.}
proc isl_basic_set_coefficients*(bset: ptr isl_basic_set): ptr isl_basic_set {.
    importc, header: headerset.}
proc isl_basic_set_list_coefficients*(list: ptr isl_basic_set_list): ptr isl_basic_set_list {.
    importc, header: headerset.}
proc isl_set_coefficients*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_basic_set_solutions*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_solutions*(set: ptr isl_set): ptr isl_basic_set {.importc,
    header: headerset.}
proc isl_set_dim_max*(set: ptr isl_set; pos: cint): ptr isl_pw_aff {.importc,
    header: headerset.}
proc isl_set_dim_min*(set: ptr isl_set; pos: cint): ptr isl_pw_aff {.importc,
    header: headerset.}
proc isl_basic_set_to_str*(bset: ptr isl_basic_set): cstring {.importc,
    header: headerset.}
proc isl_set_to_str*(set: ptr isl_set): cstring {.importc, header: headerset.}
# Importing /path/to/nim-isl/isl/include/isl/union_set.h
# /<$USER>/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --includeDirs+=/path/to/nim-isl/isl --includeDirs+=/path/to/nim-isl/isl/include --includeDirs+=/path/to/nim-isl/isl/imath_wrap --symOverride=isl_options,isl_args,isl_map,isl_basic_map,isl_set_type,isl_set,isl_basic_set,isl_map_list,isl_basic_map_list,isl_set_list,isl_basic_set_list,isl_aff_list,isl_dim_type,isl_space,isl_printer,isl_pw_aff,isl_pw_multi_aff,isl_multi_pw_aff,isl_multi_aff,isl_aff,isl_point,isl_fixed_box,isl_local_space,isl_stride_info,isl_id,isl_val,isl_mat,isl_id_list,isl_ast_expr,isl_ast_node,isl_schedule,isl_union_map,isl_ast_expr_list,isl_ast_expr_type,isl_ast_node_list,isl_ast_node_type,isl_id_to_ast_expr,isl_ast_expr_op_type,isl_ast_print_options,isl_union_map_list,isl_union_set_list,isl_union_set,isl_union_pw_multi_aff,isl_multi_union_pw_aff /path/to/nim-isl/isl/include/isl/union_set.h

{.experimental: "codeReordering".}
{.hint[ConvFromXtoItselfNotNeeded]: off.}
import
  nimterop / types

const
  headerunion_set {.used.} = "/path/to/nim-isl/isl/include/isl/union_set.h"
proc isl_union_set_dim*(uset: ptr isl_union_set; `type`: isl_dim_type): isl_size {.
    importc, header: headerunion_set.}
proc isl_union_set_from_basic_set*(bset: ptr isl_basic_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_from_set*(set: ptr isl_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_empty*(space: ptr isl_space): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_copy*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_free*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_get_ctx*(uset: ptr isl_union_set): ptr isl_ctx {.importc,
    header: headerunion_set.}
proc isl_union_set_get_space*(uset: ptr isl_union_set): ptr isl_space {.importc,
    header: headerunion_set.}
proc isl_union_set_reset_user*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_universe*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_params*(uset: ptr isl_union_set): ptr isl_set {.importc,
    header: headerunion_set.}
proc isl_union_set_detect_equalities*(uset: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_affine_hull*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_polyhedral_hull*(uset: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_remove_redundancies*(uset: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_simple_hull*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_coalesce*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_compute_divs*(uset: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_lexmin*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_lexmax*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_add_set*(uset: ptr isl_union_set; set: ptr isl_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_union*(uset1: ptr isl_union_set; uset2: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_subtract*(uset1: ptr isl_union_set; uset2: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_intersect*(uset1: ptr isl_union_set; uset2: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_intersect_params*(uset: ptr isl_union_set; set: ptr isl_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_product*(uset1: ptr isl_union_set; uset2: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_gist*(uset: ptr isl_union_set; context: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_gist_params*(uset: ptr isl_union_set; set: ptr isl_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_apply*(uset: ptr isl_union_set; umap: ptr isl_union_map): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_preimage_multi_aff*(uset: ptr isl_union_set;
                                      ma: ptr isl_multi_aff): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_preimage_pw_multi_aff*(uset: ptr isl_union_set;
    pma: ptr isl_pw_multi_aff): ptr isl_union_set {.importc, header: headerunion_set.}
proc isl_union_set_preimage_union_pw_multi_aff*(uset: ptr isl_union_set;
    upma: ptr isl_union_pw_multi_aff): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_project_out*(uset: ptr isl_union_set; `type`: isl_dim_type;
                               first: cuint; n: cuint): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_project_out_all_params*(uset: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_remove_divs*(bset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_is_params*(uset: ptr isl_union_set): isl_bool {.importc,
    header: headerunion_set.}
proc isl_union_set_is_empty*(uset: ptr isl_union_set): isl_bool {.importc,
    header: headerunion_set.}
proc isl_union_set_is_subset*(uset1: ptr isl_union_set; uset2: ptr isl_union_set): isl_bool {.
    importc, header: headerunion_set.}
proc isl_union_set_is_equal*(uset1: ptr isl_union_set; uset2: ptr isl_union_set): isl_bool {.
    importc, header: headerunion_set.}
proc isl_union_set_is_disjoint*(uset1: ptr isl_union_set; uset2: ptr isl_union_set): isl_bool {.
    importc, header: headerunion_set.}
proc isl_union_set_is_strict_subset*(uset1: ptr isl_union_set;
                                    uset2: ptr isl_union_set): isl_bool {.importc,
    header: headerunion_set.}
proc isl_union_set_get_hash*(uset: ptr isl_union_set): uint32 {.importc,
    header: headerunion_set.}
proc isl_union_set_n_set*(uset: ptr isl_union_set): isl_size {.importc,
    header: headerunion_set.}
proc isl_union_set_get_basic_set_list*(uset: ptr isl_union_set): ptr isl_basic_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_get_set_list*(uset: ptr isl_union_set): ptr isl_set_list {.importc,
    header: headerunion_set.}
proc isl_union_set_contains*(uset: ptr isl_union_set; space: ptr isl_space): isl_bool {.
    importc, header: headerunion_set.}
proc isl_union_set_extract_set*(uset: ptr isl_union_set; dim: ptr isl_space): ptr isl_set {.
    importc, header: headerunion_set.}
proc isl_union_set_isa_set*(uset: ptr isl_union_set): isl_bool {.importc,
    header: headerunion_set.}
proc isl_set_from_union_set*(uset: ptr isl_union_set): ptr isl_set {.importc,
    header: headerunion_set.}
proc isl_union_set_sample*(uset: ptr isl_union_set): ptr isl_basic_set {.importc,
    header: headerunion_set.}
proc isl_union_set_sample_point*(uset: ptr isl_union_set): ptr isl_point {.importc,
    header: headerunion_set.}
proc isl_union_set_from_point*(pnt: ptr isl_point): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_lift*(uset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_lex_lt_union_set*(uset1: ptr isl_union_set;
                                    uset2: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_set.}
proc isl_union_set_lex_le_union_set*(uset1: ptr isl_union_set;
                                    uset2: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_set.}
proc isl_union_set_lex_gt_union_set*(uset1: ptr isl_union_set;
                                    uset2: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_set.}
proc isl_union_set_lex_ge_union_set*(uset1: ptr isl_union_set;
                                    uset2: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_set.}
proc isl_union_set_coefficients*(bset: ptr isl_union_set): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_solutions*(bset: ptr isl_union_set): ptr isl_union_set {.importc,
    header: headerunion_set.}
proc isl_union_set_read_from_file*(ctx: ptr isl_ctx; input: ptr FILE): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_read_from_str*(ctx: ptr isl_ctx; str: cstring): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_to_str*(uset: ptr isl_union_set): cstring {.importc,
    header: headerunion_set.}
proc isl_printer_print_union_set*(p: ptr isl_printer; uset: ptr isl_union_set): ptr isl_printer {.
    importc, header: headerunion_set.}
proc isl_union_set_dump*(uset: ptr isl_union_set) {.importc, header: headerunion_set.}
proc isl_union_set_list_get_ctx*(list: ptr isl_union_set_list): ptr isl_ctx {.importc,
    header: headerunion_set.}
proc isl_union_set_list_from_union_set*(el: ptr isl_union_set): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_alloc*(ctx: ptr isl_ctx; n: cint): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_copy*(list: ptr isl_union_set_list): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_free*(list: ptr isl_union_set_list): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_add*(list: ptr isl_union_set_list; el: ptr isl_union_set): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_insert*(list: ptr isl_union_set_list; pos: cuint;
                               el: ptr isl_union_set): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_drop*(list: ptr isl_union_set_list; first: cuint; n: cuint): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_swap*(list: ptr isl_union_set_list; pos1: cuint; pos2: cuint): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_reverse*(list: ptr isl_union_set_list): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_concat*(list1: ptr isl_union_set_list;
                               list2: ptr isl_union_set_list): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_size*(list: ptr isl_union_set_list): isl_size {.importc,
    header: headerunion_set.}
proc isl_union_set_list_n_union_set*(list: ptr isl_union_set_list): isl_size {.
    importc, header: headerunion_set.}
proc isl_union_set_list_get_at*(list: ptr isl_union_set_list; index: cint): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_list_get_union_set*(list: ptr isl_union_set_list; index: cint): ptr isl_union_set {.
    importc, header: headerunion_set.}
proc isl_union_set_list_set_union_set*(list: ptr isl_union_set_list; index: cint;
                                      el: ptr isl_union_set): ptr isl_union_set_list {.
    importc, header: headerunion_set.}
proc isl_union_set_list_to_str*(list: ptr isl_union_set_list): cstring {.importc,
    header: headerunion_set.}
proc isl_printer_print_union_set_list*(p: ptr isl_printer;
                                      list: ptr isl_union_set_list): ptr isl_printer {.
    importc, header: headerunion_set.}
proc isl_union_set_list_dump*(list: ptr isl_union_set_list) {.importc,
    header: headerunion_set.}
proc isl_union_set_list_union*(list: ptr isl_union_set_list): ptr isl_union_set {.
    importc, header: headerunion_set.}
# Importing /path/to/nim-isl/isl/include/isl/map.h
# /<$USER>/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --includeDirs+=/path/to/nim-isl/isl --includeDirs+=/path/to/nim-isl/isl/include --includeDirs+=/path/to/nim-isl/isl/imath_wrap --symOverride=isl_options,isl_args,isl_map,isl_basic_map,isl_set_type,isl_set,isl_basic_set,isl_map_list,isl_basic_map_list,isl_set_list,isl_basic_set_list,isl_aff_list,isl_dim_type,isl_space,isl_printer,isl_pw_aff,isl_pw_multi_aff,isl_multi_pw_aff,isl_multi_aff,isl_aff,isl_point,isl_fixed_box,isl_local_space,isl_stride_info,isl_id,isl_val,isl_mat,isl_id_list,isl_ast_expr,isl_ast_node,isl_schedule,isl_union_map,isl_ast_expr_list,isl_ast_expr_type,isl_ast_node_list,isl_ast_node_type,isl_id_to_ast_expr,isl_ast_expr_op_type,isl_ast_print_options,isl_union_map_list,isl_union_set_list,isl_union_set,isl_union_pw_multi_aff,isl_multi_union_pw_aff /path/to/nim-isl/isl/include/isl/map.h

{.experimental: "codeReordering".}
{.hint[ConvFromXtoItselfNotNeeded]: off.}
import
  nimterop / types

const
  headermap {.used.} = "/path/to/nim-isl/isl/include/isl/map.h"
proc isl_basic_map_total_dim*(bmap: ptr isl_basic_map): isl_size {.importc,
    header: headermap.}
proc isl_basic_map_dim*(bmap: ptr isl_basic_map; `type`: isl_dim_type): isl_size {.
    importc, header: headermap.}
proc isl_map_dim*(map: ptr isl_map; `type`: isl_dim_type): isl_size {.importc,
    header: headermap.}
proc isl_basic_map_get_ctx*(bmap: ptr isl_basic_map): ptr isl_ctx {.importc,
    header: headermap.}
proc isl_map_get_ctx*(map: ptr isl_map): ptr isl_ctx {.importc, header: headermap.}
proc isl_basic_map_get_space*(bmap: ptr isl_basic_map): ptr isl_space {.importc,
    header: headermap.}
proc isl_map_get_space*(map: ptr isl_map): ptr isl_space {.importc, header: headermap.}
proc isl_basic_map_get_div*(bmap: ptr isl_basic_map; pos: cint): ptr isl_aff {.importc,
    header: headermap.}
proc isl_basic_map_get_local_space*(bmap: ptr isl_basic_map): ptr isl_local_space {.
    importc, header: headermap.}
proc isl_basic_map_set_tuple_name*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                  s: cstring): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_get_tuple_name*(bmap: ptr isl_basic_map; `type`: isl_dim_type): cstring {.
    importc, header: headermap.}
proc isl_map_has_tuple_name*(map: ptr isl_map; `type`: isl_dim_type): isl_bool {.
    importc, header: headermap.}
proc isl_map_get_tuple_name*(map: ptr isl_map; `type`: isl_dim_type): cstring {.
    importc, header: headermap.}
proc isl_map_set_tuple_name*(map: ptr isl_map; `type`: isl_dim_type; s: cstring): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_get_dim_name*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                pos: cuint): cstring {.importc, header: headermap.}
proc isl_map_has_dim_name*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint): isl_bool {.
    importc, header: headermap.}
proc isl_map_get_dim_name*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint): cstring {.
    importc, header: headermap.}
proc isl_basic_map_set_dim_name*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                pos: cuint; s: cstring): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_set_dim_name*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint;
                          s: cstring): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_set_tuple_id*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                id: ptr isl_id): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_set_dim_id*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint;
                        id: ptr isl_id): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_has_dim_id*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                              pos: cuint): isl_bool {.importc, header: headermap.}
proc isl_map_has_dim_id*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint): isl_bool {.
    importc, header: headermap.}
proc isl_map_get_dim_id*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint): ptr isl_id {.
    importc, header: headermap.}
proc isl_map_set_tuple_id*(map: ptr isl_map; `type`: isl_dim_type; id: ptr isl_id): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_reset_tuple_id*(map: ptr isl_map; `type`: isl_dim_type): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_has_tuple_id*(map: ptr isl_map; `type`: isl_dim_type): isl_bool {.importc,
    header: headermap.}
proc isl_map_get_tuple_id*(map: ptr isl_map; `type`: isl_dim_type): ptr isl_id {.
    importc, header: headermap.}
proc isl_map_reset_user*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_find_dim_by_name*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                    name: cstring): cint {.importc,
    header: headermap.}
proc isl_map_find_dim_by_id*(map: ptr isl_map; `type`: isl_dim_type; id: ptr isl_id): cint {.
    importc, header: headermap.}
proc isl_map_find_dim_by_name*(map: ptr isl_map; `type`: isl_dim_type; name: cstring): cint {.
    importc, header: headermap.}
proc isl_basic_map_is_rational*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_identity*(space: ptr isl_space): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_free*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_copy*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_equal*(space: ptr isl_space; n_equal: cuint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_less_at*(space: ptr isl_space; pos: cuint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_more_at*(space: ptr isl_space; pos: cuint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_empty*(space: ptr isl_space): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_universe*(space: ptr isl_space): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_nat_universe*(space: ptr isl_space): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_remove_redundancies*(bmap: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_remove_redundancies*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_simple_hull*(map: ptr isl_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_unshifted_simple_hull*(map: ptr isl_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_plain_unshifted_simple_hull*(map: ptr isl_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_unshifted_simple_hull_from_map_list*(map: ptr isl_map;
    list: ptr isl_map_list): ptr isl_basic_map {.importc, header: headermap.}
proc isl_basic_map_intersect_domain*(bmap: ptr isl_basic_map;
                                    bset: ptr isl_basic_set): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_intersect_range*(bmap: ptr isl_basic_map; bset: ptr isl_basic_set): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_intersect*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_list_intersect*(list: ptr isl_basic_map_list): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_union*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_apply_domain*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_apply_range*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_affine_hull*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_preimage_domain_multi_aff*(bmap: ptr isl_basic_map;
    ma: ptr isl_multi_aff): ptr isl_basic_map {.importc, header: headermap.}
proc isl_basic_map_preimage_range_multi_aff*(bmap: ptr isl_basic_map;
    ma: ptr isl_multi_aff): ptr isl_basic_map {.importc, header: headermap.}
proc isl_basic_map_reverse*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_domain*(bmap: ptr isl_basic_map): ptr isl_basic_set {.importc,
    header: headermap.}
proc isl_basic_map_range*(bmap: ptr isl_basic_map): ptr isl_basic_set {.importc,
    header: headermap.}
proc isl_basic_map_domain_map*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_range_map*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_remove_dims*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                               first: cuint; n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_eliminate*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                             first: cuint; n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_sample*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_detect_equalities*(bmap: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_read_from_file*(ctx: ptr isl_ctx; input: ptr FILE): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_read_from_str*(ctx: ptr isl_ctx; str: cstring): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_read_from_file*(ctx: ptr isl_ctx; input: ptr FILE): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_read_from_str*(ctx: ptr isl_ctx; str: cstring): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_dump*(bmap: ptr isl_basic_map) {.importc, header: headermap.}
proc isl_map_dump*(map: ptr isl_map) {.importc, header: headermap.}
proc isl_basic_map_to_str*(bmap: ptr isl_basic_map): cstring {.importc,
    header: headermap.}
proc isl_printer_print_basic_map*(printer: ptr isl_printer; bmap: ptr isl_basic_map): ptr isl_printer {.
    importc, header: headermap.}
proc isl_map_to_str*(map: ptr isl_map): cstring {.importc, header: headermap.}
proc isl_printer_print_map*(printer: ptr isl_printer; map: ptr isl_map): ptr isl_printer {.
    importc, header: headermap.}
proc isl_basic_map_fix_si*(bmap: ptr isl_basic_map; `type`: isl_dim_type; pos: cuint;
                          value: cint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_fix_val*(bmap: ptr isl_basic_map; `type`: isl_dim_type; pos: cuint;
                           v: ptr isl_val): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_lower_bound_si*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                  pos: cuint; value: cint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_upper_bound_si*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                  pos: cuint; value: cint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_sum*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_neg*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_sum*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_neg*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_floordiv_val*(map: ptr isl_map; d: ptr isl_val): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_is_equal*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): isl_bool {.
    importc, header: headermap.}
proc isl_basic_map_is_disjoint*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): isl_bool {.
    importc, header: headermap.}
proc isl_basic_map_partial_lexmax*(bmap: ptr isl_basic_map; dom: ptr isl_basic_set;
                                  empty: ptr ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_partial_lexmin*(bmap: ptr isl_basic_map; dom: ptr isl_basic_set;
                                  empty: ptr ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_partial_lexmax*(map: ptr isl_map; dom: ptr isl_set; empty: ptr ptr isl_set): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_partial_lexmin*(map: ptr isl_map; dom: ptr isl_set; empty: ptr ptr isl_set): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_lexmin*(bmap: ptr isl_basic_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_lexmax*(bmap: ptr isl_basic_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lexmin*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_lexmax*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_partial_lexmin_pw_multi_aff*(bmap: ptr isl_basic_map;
    dom: ptr isl_basic_set; empty: ptr ptr isl_set): ptr isl_pw_multi_aff {.importc,
    header: headermap.}
proc isl_basic_map_partial_lexmax_pw_multi_aff*(bmap: ptr isl_basic_map;
    dom: ptr isl_basic_set; empty: ptr ptr isl_set): ptr isl_pw_multi_aff {.importc,
    header: headermap.}
proc isl_basic_map_lexmin_pw_multi_aff*(bmap: ptr isl_basic_map): ptr isl_pw_multi_aff {.
    importc, header: headermap.}
proc isl_map_lexmin_pw_multi_aff*(map: ptr isl_map): ptr isl_pw_multi_aff {.importc,
    header: headermap.}
proc isl_map_lexmax_pw_multi_aff*(map: ptr isl_map): ptr isl_pw_multi_aff {.importc,
    header: headermap.}
proc isl_basic_map_print_internal*(bmap: ptr isl_basic_map; `out`: ptr FILE;
                                  indent: cint) {.importc, header: headermap.}
proc isl_basic_map_plain_get_val_if_fixed*(bmap: ptr isl_basic_map;
    `type`: isl_dim_type; pos: cuint): ptr isl_val {.importc, header: headermap.}
proc isl_basic_map_image_is_bounded*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_plain_is_universe*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_is_universe*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_plain_is_empty*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_is_empty*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_is_subset*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): isl_bool {.
    importc, header: headermap.}
proc isl_basic_map_is_strict_subset*(bmap1: ptr isl_basic_map;
                                    bmap2: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_universe*(space: ptr isl_space): ptr isl_map {.importc, header: headermap.}
proc isl_map_nat_universe*(dim: ptr isl_space): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_empty*(space: ptr isl_space): ptr isl_map {.importc, header: headermap.}
proc isl_map_identity*(dim: ptr isl_space): ptr isl_map {.importc, header: headermap.}
proc isl_map_lex_lt_first*(dim: ptr isl_space; n: cuint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lex_le_first*(dim: ptr isl_space; n: cuint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lex_lt*(set_dim: ptr isl_space): ptr isl_map {.importc, header: headermap.}
proc isl_map_lex_le*(set_dim: ptr isl_space): ptr isl_map {.importc, header: headermap.}
proc isl_map_lex_gt_first*(dim: ptr isl_space; n: cuint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lex_ge_first*(dim: ptr isl_space; n: cuint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lex_gt*(set_dim: ptr isl_space): ptr isl_map {.importc, header: headermap.}
proc isl_map_lex_ge*(set_dim: ptr isl_space): ptr isl_map {.importc, header: headermap.}
proc isl_map_free*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_copy*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_reverse*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_union*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_union_disjoint*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_intersect_domain*(map: ptr isl_map; set: ptr isl_set): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_intersect_range*(map: ptr isl_map; set: ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_intersect_domain_factor_range*(map: ptr isl_map; factor: ptr isl_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_intersect_range_factor_range*(map: ptr isl_map; factor: ptr isl_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_apply_domain*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_apply_range*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_preimage_domain_multi_aff*(map: ptr isl_map; ma: ptr isl_multi_aff): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_preimage_range_multi_aff*(map: ptr isl_map; ma: ptr isl_multi_aff): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_preimage_domain_pw_multi_aff*(map: ptr isl_map;
    pma: ptr isl_pw_multi_aff): ptr isl_map {.importc, header: headermap.}
proc isl_map_preimage_range_pw_multi_aff*(map: ptr isl_map;
    pma: ptr isl_pw_multi_aff): ptr isl_map {.importc, header: headermap.}
proc isl_map_preimage_domain_multi_pw_aff*(map: ptr isl_map;
    mpa: ptr isl_multi_pw_aff): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_product*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_product*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_domain_product*(bmap1: ptr isl_basic_map;
                                  bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_range_product*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_domain_product*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_range_product*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_flat_product*(bmap1: ptr isl_basic_map; bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_flat_product*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_flat_range_product*(bmap1: ptr isl_basic_map;
                                      bmap2: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_flat_domain_product*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_flat_range_product*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_domain_is_wrapping*(map: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_range_is_wrapping*(map: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_is_product*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_map_factor_domain*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_factor_range*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_domain_factor_domain*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_domain_factor_range*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_range_factor_domain*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_range_factor_range*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_intersect*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_intersect_params*(map: ptr isl_map; params: ptr isl_set): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_subtract*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_subtract_domain*(map: ptr isl_map; dom: ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_subtract_range*(map: ptr isl_map; dom: ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_complement*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_fix_input_si*(map: ptr isl_map; input: cuint; value: cint): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_fix_si*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint; value: cint): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_fix_val*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint; v: ptr isl_val): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_lower_bound_si*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint;
                            value: cint): ptr isl_map {.importc, header: headermap.}
proc isl_map_upper_bound_si*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint;
                            value: cint): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_deltas*(bmap: ptr isl_basic_map): ptr isl_basic_set {.importc,
    header: headermap.}
proc isl_map_deltas*(map: ptr isl_map): ptr isl_set {.importc, header: headermap.}
proc isl_basic_map_deltas_map*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_deltas_map*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_detect_equalities*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_affine_hull*(map: ptr isl_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_convex_hull*(map: ptr isl_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_polyhedral_hull*(map: ptr isl_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_add_dims*(bmap: ptr isl_basic_map; `type`: isl_dim_type; n: cuint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_add_dims*(map: ptr isl_map; `type`: isl_dim_type; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_insert_dims*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                               pos: cuint; n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_insert_dims*(map: ptr isl_map; `type`: isl_dim_type; pos: cuint; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_move_dims*(bmap: ptr isl_basic_map; dst_type: isl_dim_type;
                             dst_pos: cuint; src_type: isl_dim_type; src_pos: cuint;
                             n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_move_dims*(map: ptr isl_map; dst_type: isl_dim_type; dst_pos: cuint;
                       src_type: isl_dim_type; src_pos: cuint; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_project_out*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                               first: cuint; n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_project_out*(map: ptr isl_map; `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_remove_divs*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_remove_unknown_divs*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_remove_divs*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_eliminate*(map: ptr isl_map; `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_remove_dims*(map: ptr isl_map; `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_remove_divs_involving_dims*(bmap: ptr isl_basic_map;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_remove_divs_involving_dims*(map: ptr isl_map; `type`: isl_dim_type;
                                        first: cuint; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_remove_inputs*(map: ptr isl_map; first: cuint; n: cuint): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_equate*(bmap: ptr isl_basic_map; type1: isl_dim_type; pos1: cint;
                          type2: isl_dim_type; pos2: cint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_order_ge*(bmap: ptr isl_basic_map; type1: isl_dim_type; pos1: cint;
                            type2: isl_dim_type; pos2: cint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_order_ge*(map: ptr isl_map; type1: isl_dim_type; pos1: cint;
                      type2: isl_dim_type; pos2: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_order_le*(map: ptr isl_map; type1: isl_dim_type; pos1: cint;
                      type2: isl_dim_type; pos2: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_equate*(map: ptr isl_map; type1: isl_dim_type; pos1: cint;
                    type2: isl_dim_type; pos2: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_oppose*(map: ptr isl_map; type1: isl_dim_type; pos1: cint;
                    type2: isl_dim_type; pos2: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_order_lt*(map: ptr isl_map; type1: isl_dim_type; pos1: cint;
                      type2: isl_dim_type; pos2: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_order_gt*(bmap: ptr isl_basic_map; type1: isl_dim_type; pos1: cint;
                            type2: isl_dim_type; pos2: cint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_order_gt*(map: ptr isl_map; type1: isl_dim_type; pos1: cint;
                      type2: isl_dim_type; pos2: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_set_identity*(set: ptr isl_set): ptr isl_map {.importc, header: headermap.}
proc isl_basic_set_is_wrapping*(bset: ptr isl_basic_set): isl_bool {.importc,
    header: headermap.}
proc isl_set_is_wrapping*(set: ptr isl_set): isl_bool {.importc, header: headermap.}
proc isl_basic_map_wrap*(bmap: ptr isl_basic_map): ptr isl_basic_set {.importc,
    header: headermap.}
proc isl_map_wrap*(map: ptr isl_map): ptr isl_set {.importc, header: headermap.}
proc isl_basic_set_unwrap*(bset: ptr isl_basic_set): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_set_unwrap*(set: ptr isl_set): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_flatten*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_flatten*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_flatten_domain*(bmap: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_flatten_range*(bmap: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_flatten_domain*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_flatten_range*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_set_flatten*(bset: ptr isl_basic_set): ptr isl_basic_set {.importc,
    header: headermap.}
proc isl_set_flatten*(set: ptr isl_set): ptr isl_set {.importc, header: headermap.}
proc isl_set_flatten_map*(set: ptr isl_set): ptr isl_map {.importc, header: headermap.}
proc isl_map_params*(map: ptr isl_map): ptr isl_set {.importc, header: headermap.}
proc isl_map_domain*(bmap: ptr isl_map): ptr isl_set {.importc, header: headermap.}
proc isl_map_range*(map: ptr isl_map): ptr isl_set {.importc, header: headermap.}
proc isl_map_domain_map*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_range_map*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_set_wrapped_domain_map*(set: ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_from_basic_map*(bmap: ptr isl_basic_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_from_domain*(set: ptr isl_set): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_from_domain*(bset: ptr isl_basic_set): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_from_range*(bset: ptr isl_basic_set): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_from_range*(set: ptr isl_set): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_from_domain_and_range*(domain: ptr isl_basic_set;
    range: ptr isl_basic_set): ptr isl_basic_map {.importc, header: headermap.}
proc isl_map_from_domain_and_range*(domain: ptr isl_set; range: ptr isl_set): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_sample*(map: ptr isl_map): ptr isl_basic_map {.importc, header: headermap.}
proc isl_map_plain_is_empty*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_map_plain_is_universe*(map: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_is_empty*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_map_is_subset*(map1: ptr isl_map; map2: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_is_strict_subset*(map1: ptr isl_map; map2: ptr isl_map): isl_bool {.
    importc, header: headermap.}
proc isl_map_is_equal*(map1: ptr isl_map; map2: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_is_disjoint*(map1: ptr isl_map; map2: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_is_single_valued*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_plain_is_single_valued*(map: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_is_single_valued*(map: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_plain_is_injective*(map: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_is_injective*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_map_is_bijective*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_map_is_identity*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_map_is_translation*(map: ptr isl_map): cint {.importc, header: headermap.}
proc isl_map_has_equal_space*(map1: ptr isl_map; map2: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_basic_map_can_zip*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_can_zip*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_basic_map_zip*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_zip*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_can_curry*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_can_curry*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_basic_map_curry*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_curry*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_can_range_curry*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_map_range_curry*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_can_uncurry*(bmap: ptr isl_basic_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_can_uncurry*(map: ptr isl_map): isl_bool {.importc, header: headermap.}
proc isl_basic_map_uncurry*(bmap: ptr isl_basic_map): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_uncurry*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_make_disjoint*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_compute_divs*(bmap: ptr isl_basic_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_compute_divs*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_basic_map_drop_constraints_involving_dims*(bmap: ptr isl_basic_map;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_drop_constraints_not_involving_dims*(bmap: ptr isl_basic_map;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_map_drop_constraints_involving_dims*(map: ptr isl_map;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_drop_constraints_not_involving_dims*(map: ptr isl_map;
    `type`: isl_dim_type; first: cuint; n: cuint): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_involves_dims*(bmap: ptr isl_basic_map; `type`: isl_dim_type;
                                 first: cuint; n: cuint): isl_bool {.importc,
    header: headermap.}
proc isl_map_involves_dims*(map: ptr isl_map; `type`: isl_dim_type; first: cuint;
                           n: cuint): isl_bool {.importc, header: headermap.}
proc isl_map_print_internal*(map: ptr isl_map; `out`: ptr FILE; indent: cint) {.importc,
    header: headermap.}
proc isl_map_plain_get_val_if_fixed*(map: ptr isl_map; `type`: isl_dim_type;
                                    pos: cuint): ptr isl_val {.importc,
    header: headermap.}
proc isl_basic_map_gist_domain*(bmap: ptr isl_basic_map; context: ptr isl_basic_set): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_gist*(bmap: ptr isl_basic_map; context: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_gist*(map: ptr isl_map; context: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_gist_domain*(map: ptr isl_map; context: ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_gist_range*(map: ptr isl_map; context: ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_gist_params*(map: ptr isl_map; context: ptr isl_set): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_gist_basic_map*(map: ptr isl_map; context: ptr isl_basic_map): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_get_range_stride_info*(map: ptr isl_map; pos: cint): ptr isl_stride_info {.
    importc, header: headermap.}
proc isl_map_get_range_simple_fixed_box_hull*(map: ptr isl_map): ptr isl_fixed_box {.
    importc, header: headermap.}
proc isl_map_coalesce*(map: ptr isl_map): ptr isl_map {.importc, header: headermap.}
proc isl_map_plain_is_equal*(map1: ptr isl_map; map2: ptr isl_map): isl_bool {.importc,
    header: headermap.}
proc isl_map_get_hash*(map: ptr isl_map): uint32 {.importc, header: headermap.}
proc isl_map_n_basic_map*(map: ptr isl_map): isl_size {.importc, header: headermap.}
proc isl_map_get_basic_map_list*(map: ptr isl_map): ptr isl_basic_map_list {.importc,
    header: headermap.}
proc isl_map_fixed_power_val*(map: ptr isl_map; exp: ptr isl_val): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_power*(map: ptr isl_map; exact: ptr isl_bool): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_reaching_path_lengths*(map: ptr isl_map; exact: ptr isl_bool): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_transitive_closure*(map: ptr isl_map; exact: ptr isl_bool): ptr isl_map {.
    importc, header: headermap.}
proc isl_map_lex_le_map*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lex_lt_map*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lex_ge_map*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_lex_gt_map*(map1: ptr isl_map; map2: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_align_params*(bmap: ptr isl_basic_map; model: ptr isl_space): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_align_params*(map: ptr isl_map; model: ptr isl_space): ptr isl_map {.
    importc, header: headermap.}
proc isl_basic_map_drop_unused_params*(bmap: ptr isl_basic_map): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_drop_unused_params*(map: ptr isl_map): ptr isl_map {.importc,
    header: headermap.}
proc isl_basic_map_equalities_matrix*(bmap: ptr isl_basic_map; c1: isl_dim_type;
                                     c2: isl_dim_type; c3: isl_dim_type;
                                     c4: isl_dim_type; c5: isl_dim_type): ptr isl_mat {.
    importc, header: headermap.}
proc isl_basic_map_inequalities_matrix*(bmap: ptr isl_basic_map; c1: isl_dim_type;
                                       c2: isl_dim_type; c3: isl_dim_type;
                                       c4: isl_dim_type; c5: isl_dim_type): ptr isl_mat {.
    importc, header: headermap.}
proc isl_basic_map_from_constraint_matrices*(dim: ptr isl_space; eq: ptr isl_mat;
    ineq: ptr isl_mat; c1: isl_dim_type; c2: isl_dim_type; c3: isl_dim_type;
    c4: isl_dim_type; c5: isl_dim_type): ptr isl_basic_map {.importc, header: headermap.}
proc isl_basic_map_from_aff*(aff: ptr isl_aff): ptr isl_basic_map {.importc,
    header: headermap.}
proc isl_basic_map_from_multi_aff*(maff: ptr isl_multi_aff): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_from_aff_list*(domain_space: ptr isl_space;
                                 list: ptr isl_aff_list): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_map_from_aff*(aff: ptr isl_aff): ptr isl_map {.importc, header: headermap.}
proc isl_map_from_multi_aff*(maff: ptr isl_multi_aff): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_dim_min*(map: ptr isl_map; pos: cint): ptr isl_pw_aff {.importc,
    header: headermap.}
proc isl_map_dim_max*(map: ptr isl_map; pos: cint): ptr isl_pw_aff {.importc,
    header: headermap.}
proc isl_basic_map_list_get_ctx*(list: ptr isl_basic_map_list): ptr isl_ctx {.importc,
    header: headermap.}
proc isl_basic_map_list_from_basic_map*(el: ptr isl_basic_map): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_alloc*(ctx: ptr isl_ctx; n: cint): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_copy*(list: ptr isl_basic_map_list): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_free*(list: ptr isl_basic_map_list): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_add*(list: ptr isl_basic_map_list; el: ptr isl_basic_map): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_insert*(list: ptr isl_basic_map_list; pos: cuint;
                               el: ptr isl_basic_map): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_drop*(list: ptr isl_basic_map_list; first: cuint; n: cuint): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_swap*(list: ptr isl_basic_map_list; pos1: cuint; pos2: cuint): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_reverse*(list: ptr isl_basic_map_list): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_concat*(list1: ptr isl_basic_map_list;
                               list2: ptr isl_basic_map_list): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_size*(list: ptr isl_basic_map_list): isl_size {.importc,
    header: headermap.}
proc isl_basic_map_list_n_basic_map*(list: ptr isl_basic_map_list): isl_size {.
    importc, header: headermap.}
proc isl_basic_map_list_get_at*(list: ptr isl_basic_map_list; index: cint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_list_get_basic_map*(list: ptr isl_basic_map_list; index: cint): ptr isl_basic_map {.
    importc, header: headermap.}
proc isl_basic_map_list_set_basic_map*(list: ptr isl_basic_map_list; index: cint;
                                      el: ptr isl_basic_map): ptr isl_basic_map_list {.
    importc, header: headermap.}
proc isl_basic_map_list_to_str*(list: ptr isl_basic_map_list): cstring {.importc,
    header: headermap.}
proc isl_printer_print_basic_map_list*(p: ptr isl_printer;
                                      list: ptr isl_basic_map_list): ptr isl_printer {.
    importc, header: headermap.}
proc isl_basic_map_list_dump*(list: ptr isl_basic_map_list) {.importc,
    header: headermap.}
proc isl_map_list_get_ctx*(list: ptr isl_map_list): ptr isl_ctx {.importc,
    header: headermap.}
proc isl_map_list_from_map*(el: ptr isl_map): ptr isl_map_list {.importc,
    header: headermap.}
proc isl_map_list_alloc*(ctx: ptr isl_ctx; n: cint): ptr isl_map_list {.importc,
    header: headermap.}
proc isl_map_list_copy*(list: ptr isl_map_list): ptr isl_map_list {.importc,
    header: headermap.}
proc isl_map_list_free*(list: ptr isl_map_list): ptr isl_map_list {.importc,
    header: headermap.}
proc isl_map_list_add*(list: ptr isl_map_list; el: ptr isl_map): ptr isl_map_list {.
    importc, header: headermap.}
proc isl_map_list_insert*(list: ptr isl_map_list; pos: cuint; el: ptr isl_map): ptr isl_map_list {.
    importc, header: headermap.}
proc isl_map_list_drop*(list: ptr isl_map_list; first: cuint; n: cuint): ptr isl_map_list {.
    importc, header: headermap.}
proc isl_map_list_swap*(list: ptr isl_map_list; pos1: cuint; pos2: cuint): ptr isl_map_list {.
    importc, header: headermap.}
proc isl_map_list_reverse*(list: ptr isl_map_list): ptr isl_map_list {.importc,
    header: headermap.}
proc isl_map_list_concat*(list1: ptr isl_map_list; list2: ptr isl_map_list): ptr isl_map_list {.
    importc, header: headermap.}
proc isl_map_list_size*(list: ptr isl_map_list): isl_size {.importc, header: headermap.}
proc isl_map_list_n_map*(list: ptr isl_map_list): isl_size {.importc,
    header: headermap.}
proc isl_map_list_get_at*(list: ptr isl_map_list; index: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_list_get_map*(list: ptr isl_map_list; index: cint): ptr isl_map {.importc,
    header: headermap.}
proc isl_map_list_set_map*(list: ptr isl_map_list; index: cint; el: ptr isl_map): ptr isl_map_list {.
    importc, header: headermap.}
proc isl_map_list_to_str*(list: ptr isl_map_list): cstring {.importc,
    header: headermap.}
proc isl_printer_print_map_list*(p: ptr isl_printer; list: ptr isl_map_list): ptr isl_printer {.
    importc, header: headermap.}
proc isl_map_list_dump*(list: ptr isl_map_list) {.importc, header: headermap.}
# Importing /path/to/nim-isl/isl/include/isl/union_map.h
# /<$USER>/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --includeDirs+=/path/to/nim-isl/isl --includeDirs+=/path/to/nim-isl/isl/include --includeDirs+=/path/to/nim-isl/isl/imath_wrap --symOverride=isl_options,isl_args,isl_map,isl_basic_map,isl_set_type,isl_set,isl_basic_set,isl_map_list,isl_basic_map_list,isl_set_list,isl_basic_set_list,isl_aff_list,isl_dim_type,isl_space,isl_printer,isl_pw_aff,isl_pw_multi_aff,isl_multi_pw_aff,isl_multi_aff,isl_aff,isl_point,isl_fixed_box,isl_local_space,isl_stride_info,isl_id,isl_val,isl_mat,isl_id_list,isl_ast_expr,isl_ast_node,isl_schedule,isl_union_map,isl_ast_expr_list,isl_ast_expr_type,isl_ast_node_list,isl_ast_node_type,isl_id_to_ast_expr,isl_ast_expr_op_type,isl_ast_print_options,isl_union_map_list,isl_union_set_list,isl_union_set,isl_union_pw_multi_aff,isl_multi_union_pw_aff /path/to/nim-isl/isl/include/isl/union_map.h

{.experimental: "codeReordering".}
{.hint[ConvFromXtoItselfNotNeeded]: off.}
import
  nimterop / types

const
  headerunion_map {.used.} = "/path/to/nim-isl/isl/include/isl/union_map.h"
proc isl_union_map_dim*(umap: ptr isl_union_map; `type`: isl_dim_type): isl_size {.
    importc, header: headerunion_map.}
proc isl_union_map_involves_dims*(umap: ptr isl_union_map; `type`: isl_dim_type;
                                 first: cuint; n: cuint): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_get_dim_id*(umap: ptr isl_union_map; `type`: isl_dim_type;
                              pos: cuint): ptr isl_id {.importc,
    header: headerunion_map.}
proc isl_union_map_from_basic_map*(bmap: ptr isl_basic_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_from_map*(map: ptr isl_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_empty*(space: ptr isl_space): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_copy*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_free*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_get_ctx*(umap: ptr isl_union_map): ptr isl_ctx {.importc,
    header: headerunion_map.}
proc isl_union_map_get_space*(umap: ptr isl_union_map): ptr isl_space {.importc,
    header: headerunion_map.}
proc isl_union_map_reset_user*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_find_dim_by_name*(umap: ptr isl_union_map; `type`: isl_dim_type;
                                    name: cstring): cint {.importc,
    header: headerunion_map.}
proc isl_union_map_universe*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_params*(umap: ptr isl_union_map): ptr isl_set {.importc,
    header: headerunion_map.}
proc isl_union_map_domain*(umap: ptr isl_union_map): ptr isl_union_set {.importc,
    header: headerunion_map.}
proc isl_union_map_range*(umap: ptr isl_union_map): ptr isl_union_set {.importc,
    header: headerunion_map.}
proc isl_union_map_domain_map*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_domain_map_union_pw_multi_aff*(umap: ptr isl_union_map): ptr isl_union_pw_multi_aff {.
    importc, header: headerunion_map.}
proc isl_union_map_range_map*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_set_wrapped_domain_map*(uset: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_from_domain*(uset: ptr isl_union_set): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_from_range*(uset: ptr isl_union_set): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_affine_hull*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_polyhedral_hull*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_remove_redundancies*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_simple_hull*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_coalesce*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_compute_divs*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_lexmin*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_lexmax*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_add_map*(umap: ptr isl_union_map; map: ptr isl_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_union*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_subtract*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_intersect*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_intersect_params*(umap: ptr isl_union_map; set: ptr isl_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_product*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_domain_product*(umap1: ptr isl_union_map;
                                  umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_flat_domain_product*(umap1: ptr isl_union_map;
                                       umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_range_product*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_flat_range_product*(umap1: ptr isl_union_map;
                                      umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_domain_factor_domain*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_domain_factor_range*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_range_factor_domain*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_range_factor_range*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_factor_domain*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_factor_range*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_gist*(umap: ptr isl_union_map; context: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_gist_params*(umap: ptr isl_union_map; set: ptr isl_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_gist_domain*(umap: ptr isl_union_map; uset: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_gist_range*(umap: ptr isl_union_map; uset: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_intersect_domain*(umap: ptr isl_union_map;
                                    uset: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_intersect_range*(umap: ptr isl_union_map; uset: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_intersect_range_factor_range*(umap: ptr isl_union_map;
    factor: ptr isl_union_map): ptr isl_union_map {.importc, header: headerunion_map.}
proc isl_union_map_subtract_domain*(umap: ptr isl_union_map; dom: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_subtract_range*(umap: ptr isl_union_map; dom: ptr isl_union_set): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_apply_domain*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_apply_range*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_preimage_domain_multi_aff*(umap: ptr isl_union_map;
    ma: ptr isl_multi_aff): ptr isl_union_map {.importc, header: headerunion_map.}
proc isl_union_map_preimage_range_multi_aff*(umap: ptr isl_union_map;
    ma: ptr isl_multi_aff): ptr isl_union_map {.importc, header: headerunion_map.}
proc isl_union_map_preimage_domain_pw_multi_aff*(umap: ptr isl_union_map;
    pma: ptr isl_pw_multi_aff): ptr isl_union_map {.importc, header: headerunion_map.}
proc isl_union_map_preimage_range_pw_multi_aff*(umap: ptr isl_union_map;
    pma: ptr isl_pw_multi_aff): ptr isl_union_map {.importc, header: headerunion_map.}
proc isl_union_map_preimage_domain_multi_pw_aff*(umap: ptr isl_union_map;
    mpa: ptr isl_multi_pw_aff): ptr isl_union_map {.importc, header: headerunion_map.}
proc isl_union_map_preimage_domain_union_pw_multi_aff*(umap: ptr isl_union_map;
    upma: ptr isl_union_pw_multi_aff): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_preimage_range_union_pw_multi_aff*(umap: ptr isl_union_map;
    upma: ptr isl_union_pw_multi_aff): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_reverse*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_from_domain_and_range*(domain: ptr isl_union_set;
    range: ptr isl_union_set): ptr isl_union_map {.importc, header: headerunion_map.}
proc isl_union_map_detect_equalities*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_deltas*(umap: ptr isl_union_map): ptr isl_union_set {.importc,
    header: headerunion_map.}
proc isl_union_map_deltas_map*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_set_identity*(uset: ptr isl_union_set): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_project_out*(umap: ptr isl_union_map; `type`: isl_dim_type;
                               first: cuint; n: cuint): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_project_out_all_params*(umap: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_remove_divs*(bmap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_plain_is_empty*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_is_empty*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_is_single_valued*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_plain_is_injective*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_is_injective*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_is_bijective*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_is_identity*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_is_subset*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): isl_bool {.
    importc, header: headerunion_map.}
proc isl_union_map_is_equal*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): isl_bool {.
    importc, header: headerunion_map.}
proc isl_union_map_is_disjoint*(umap1: ptr isl_union_map; umap2: ptr isl_union_map): isl_bool {.
    importc, header: headerunion_map.}
proc isl_union_map_is_strict_subset*(umap1: ptr isl_union_map;
                                    umap2: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_union_map_get_hash*(umap: ptr isl_union_map): uint32 {.importc,
    header: headerunion_map.}
proc isl_union_map_n_map*(umap: ptr isl_union_map): isl_size {.importc,
    header: headerunion_map.}
proc isl_union_map_get_map_list*(umap: ptr isl_union_map): ptr isl_map_list {.importc,
    header: headerunion_map.}
proc isl_union_map_contains*(umap: ptr isl_union_map; space: ptr isl_space): isl_bool {.
    importc, header: headerunion_map.}
proc isl_union_map_extract_map*(umap: ptr isl_union_map; dim: ptr isl_space): ptr isl_map {.
    importc, header: headerunion_map.}
proc isl_union_map_isa_map*(umap: ptr isl_union_map): isl_bool {.importc,
    header: headerunion_map.}
proc isl_map_from_union_map*(umap: ptr isl_union_map): ptr isl_map {.importc,
    header: headerunion_map.}
proc isl_union_map_sample*(umap: ptr isl_union_map): ptr isl_basic_map {.importc,
    header: headerunion_map.}
proc isl_union_map_fixed_power_val*(umap: ptr isl_union_map; exp: ptr isl_val): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_power*(umap: ptr isl_union_map; exact: ptr isl_bool): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_transitive_closure*(umap: ptr isl_union_map; exact: ptr isl_bool): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_lex_lt_union_map*(umap1: ptr isl_union_map;
                                    umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_lex_le_union_map*(umap1: ptr isl_union_map;
                                    umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_lex_gt_union_map*(umap1: ptr isl_union_map;
                                    umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_lex_ge_union_map*(umap1: ptr isl_union_map;
                                    umap2: ptr isl_union_map): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_eq_at_multi_union_pw_aff*(umap: ptr isl_union_map;
    mupa: ptr isl_multi_union_pw_aff): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_lex_lt_at_multi_union_pw_aff*(umap: ptr isl_union_map;
    mupa: ptr isl_multi_union_pw_aff): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_lex_gt_at_multi_union_pw_aff*(umap: ptr isl_union_map;
    mupa: ptr isl_multi_union_pw_aff): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_read_from_file*(ctx: ptr isl_ctx; input: ptr FILE): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_read_from_str*(ctx: ptr isl_ctx; str: cstring): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_to_str*(umap: ptr isl_union_map): cstring {.importc,
    header: headerunion_map.}
proc isl_printer_print_union_map*(p: ptr isl_printer; umap: ptr isl_union_map): ptr isl_printer {.
    importc, header: headerunion_map.}
proc isl_union_map_dump*(umap: ptr isl_union_map) {.importc, header: headerunion_map.}
proc isl_union_map_wrap*(umap: ptr isl_union_map): ptr isl_union_set {.importc,
    header: headerunion_map.}
proc isl_union_set_unwrap*(uset: ptr isl_union_set): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_zip*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_curry*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_range_curry*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_uncurry*(umap: ptr isl_union_map): ptr isl_union_map {.importc,
    header: headerunion_map.}
proc isl_union_map_align_params*(umap: ptr isl_union_map; model: ptr isl_space): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_set_align_params*(uset: ptr isl_union_set; model: ptr isl_space): ptr isl_union_set {.
    importc, header: headerunion_map.}
proc isl_union_map_list_get_ctx*(list: ptr isl_union_map_list): ptr isl_ctx {.importc,
    header: headerunion_map.}
proc isl_union_map_list_from_union_map*(el: ptr isl_union_map): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_alloc*(ctx: ptr isl_ctx; n: cint): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_copy*(list: ptr isl_union_map_list): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_free*(list: ptr isl_union_map_list): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_add*(list: ptr isl_union_map_list; el: ptr isl_union_map): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_insert*(list: ptr isl_union_map_list; pos: cuint;
                               el: ptr isl_union_map): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_drop*(list: ptr isl_union_map_list; first: cuint; n: cuint): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_swap*(list: ptr isl_union_map_list; pos1: cuint; pos2: cuint): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_reverse*(list: ptr isl_union_map_list): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_concat*(list1: ptr isl_union_map_list;
                               list2: ptr isl_union_map_list): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_size*(list: ptr isl_union_map_list): isl_size {.importc,
    header: headerunion_map.}
proc isl_union_map_list_n_union_map*(list: ptr isl_union_map_list): isl_size {.
    importc, header: headerunion_map.}
proc isl_union_map_list_get_at*(list: ptr isl_union_map_list; index: cint): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_list_get_union_map*(list: ptr isl_union_map_list; index: cint): ptr isl_union_map {.
    importc, header: headerunion_map.}
proc isl_union_map_list_set_union_map*(list: ptr isl_union_map_list; index: cint;
                                      el: ptr isl_union_map): ptr isl_union_map_list {.
    importc, header: headerunion_map.}
proc isl_union_map_list_to_str*(list: ptr isl_union_map_list): cstring {.importc,
    header: headerunion_map.}
proc isl_printer_print_union_map_list*(p: ptr isl_printer;
                                      list: ptr isl_union_map_list): ptr isl_printer {.
    importc, header: headerunion_map.}
proc isl_union_map_list_dump*(list: ptr isl_union_map_list) {.importc,
    header: headerunion_map.}
# Importing /path/to/nim-isl/isl/include/isl/ast_build.h
# /<$USER>/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --includeDirs+=/path/to/nim-isl/isl --includeDirs+=/path/to/nim-isl/isl/include --includeDirs+=/path/to/nim-isl/isl/imath_wrap --symOverride=isl_options,isl_args,isl_map,isl_basic_map,isl_set_type,isl_set,isl_basic_set,isl_map_list,isl_basic_map_list,isl_set_list,isl_basic_set_list,isl_aff_list,isl_dim_type,isl_space,isl_printer,isl_pw_aff,isl_pw_multi_aff,isl_multi_pw_aff,isl_multi_aff,isl_aff,isl_point,isl_fixed_box,isl_local_space,isl_stride_info,isl_id,isl_val,isl_mat,isl_id_list,isl_ast_expr,isl_ast_node,isl_schedule,isl_union_map,isl_ast_expr_list,isl_ast_expr_type,isl_ast_node_list,isl_ast_node_type,isl_id_to_ast_expr,isl_ast_expr_op_type,isl_ast_print_options,isl_union_map_list,isl_union_set_list,isl_union_set,isl_union_pw_multi_aff,isl_multi_union_pw_aff /path/to/nim-isl/isl/include/isl/ast_build.h

{.experimental: "codeReordering".}
{.hint[ConvFromXtoItselfNotNeeded]: off.}
import
  nimterop / types

const
  headerast_build {.used.} = "/path/to/nim-isl/isl/include/isl/ast_build.h"
  ISL_AST_BUILD_SEPARATION_BOUNDS_EXPLICIT* = 0
  ISL_AST_BUILD_SEPARATION_BOUNDS_IMPLICIT* = 1
type
  isl_ast_build* {.bycopy.} = object
proc isl_options_set_ast_build_atomic_upper_bound*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_atomic_upper_bound*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_options_set_ast_build_prefer_pdiv*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_prefer_pdiv*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_options_set_ast_build_detect_min_max*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_detect_min_max*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_options_set_ast_build_exploit_nested_bounds*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_exploit_nested_bounds*(ctx: ptr isl_ctx): cint {.
    importc, header: headerast_build.}
proc isl_options_set_ast_build_group_coscheduled*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_group_coscheduled*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_options_set_ast_build_separation_bounds*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_separation_bounds*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_options_set_ast_build_scale_strides*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_scale_strides*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_options_set_ast_build_allow_else*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_allow_else*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_options_set_ast_build_allow_or*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast_build.}
proc isl_options_get_ast_build_allow_or*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast_build.}
proc isl_ast_build_get_ctx*(build: ptr isl_ast_build): ptr isl_ctx {.importc,
    header: headerast_build.}
proc isl_ast_build_alloc*(ctx: ptr isl_ctx): ptr isl_ast_build {.importc,
    header: headerast_build.}
proc isl_ast_build_from_context*(set: ptr isl_set): ptr isl_ast_build {.importc,
    header: headerast_build.}
proc isl_ast_build_get_schedule_space*(build: ptr isl_ast_build): ptr isl_space {.
    importc, header: headerast_build.}
proc isl_ast_build_get_schedule*(build: ptr isl_ast_build): ptr isl_union_map {.
    importc, header: headerast_build.}
proc isl_ast_build_restrict*(build: ptr isl_ast_build; set: ptr isl_set): ptr isl_ast_build {.
    importc, header: headerast_build.}
proc isl_ast_build_copy*(build: ptr isl_ast_build): ptr isl_ast_build {.importc,
    header: headerast_build.}
proc isl_ast_build_free*(build: ptr isl_ast_build): ptr isl_ast_build {.importc,
    header: headerast_build.}
proc isl_ast_build_set_options*(build: ptr isl_ast_build; options: ptr isl_union_map): ptr isl_ast_build {.
    importc, header: headerast_build.}
proc isl_ast_build_set_iterators*(build: ptr isl_ast_build;
                                 iterators: ptr isl_id_list): ptr isl_ast_build {.
    importc, header: headerast_build.}
proc isl_ast_build_expr_from_set*(build: ptr isl_ast_build; set: ptr isl_set): ptr isl_ast_expr {.
    importc, header: headerast_build.}
proc isl_ast_build_expr_from_pw_aff*(build: ptr isl_ast_build; pa: ptr isl_pw_aff): ptr isl_ast_expr {.
    importc, header: headerast_build.}
proc isl_ast_build_access_from_pw_multi_aff*(build: ptr isl_ast_build;
    pma: ptr isl_pw_multi_aff): ptr isl_ast_expr {.importc, header: headerast_build.}
proc isl_ast_build_access_from_multi_pw_aff*(build: ptr isl_ast_build;
    mpa: ptr isl_multi_pw_aff): ptr isl_ast_expr {.importc, header: headerast_build.}
proc isl_ast_build_call_from_pw_multi_aff*(build: ptr isl_ast_build;
    pma: ptr isl_pw_multi_aff): ptr isl_ast_expr {.importc, header: headerast_build.}
proc isl_ast_build_call_from_multi_pw_aff*(build: ptr isl_ast_build;
    mpa: ptr isl_multi_pw_aff): ptr isl_ast_expr {.importc, header: headerast_build.}
proc isl_ast_build_node_from_schedule*(build: ptr isl_ast_build;
                                      schedule: ptr isl_schedule): ptr isl_ast_node {.
    importc, header: headerast_build.}
proc isl_ast_build_node_from_schedule_map*(build: ptr isl_ast_build;
    schedule: ptr isl_union_map): ptr isl_ast_node {.importc, header: headerast_build.}
proc isl_ast_build_ast_from_schedule*(build: ptr isl_ast_build;
                                     schedule: ptr isl_union_map): ptr isl_ast_node {.
    importc, header: headerast_build.}
# Importing /path/to/nim-isl/isl/include/isl/ast.h
# /<$USER>/.nimble/pkgs/nimterop-0.1.0/nimterop/toast --pnim --preprocess --includeDirs+=/path/to/nim-isl/isl --includeDirs+=/path/to/nim-isl/isl/include --includeDirs+=/path/to/nim-isl/isl/imath_wrap --symOverride=isl_options,isl_args,isl_map,isl_basic_map,isl_set_type,isl_set,isl_basic_set,isl_map_list,isl_basic_map_list,isl_set_list,isl_basic_set_list,isl_aff_list,isl_dim_type,isl_space,isl_printer,isl_pw_aff,isl_pw_multi_aff,isl_multi_pw_aff,isl_multi_aff,isl_aff,isl_point,isl_fixed_box,isl_local_space,isl_stride_info,isl_id,isl_val,isl_mat,isl_id_list,isl_ast_expr,isl_ast_node,isl_schedule,isl_union_map,isl_ast_expr_list,isl_ast_expr_type,isl_ast_node_list,isl_ast_node_type,isl_id_to_ast_expr,isl_ast_expr_op_type,isl_ast_print_options,isl_union_map_list,isl_union_set_list,isl_union_set,isl_union_pw_multi_aff,isl_multi_union_pw_aff /path/to/nim-isl/isl/include/isl/ast.h

{.experimental: "codeReordering".}
{.hint[ConvFromXtoItselfNotNeeded]: off.}
import
  nimterop / types

const
  headerast {.used.} = "/path/to/nim-isl/isl/include/isl/ast.h"
proc isl_options_set_ast_iterator_type*(ctx: ptr isl_ctx; val: cstring): isl_stat {.
    importc, header: headerast.}
proc isl_options_get_ast_iterator_type*(ctx: ptr isl_ctx): cstring {.importc,
    header: headerast.}
proc isl_options_set_ast_always_print_block*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast.}
proc isl_options_get_ast_always_print_block*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast.}
proc isl_ast_expr_from_val*(v: ptr isl_val): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_expr_from_id*(id: ptr isl_id): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_expr_neg*(expr: ptr isl_ast_expr): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_expr_add*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_sub*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_mul*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_div*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_pdiv_q*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_pdiv_r*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_and*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_and_then*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_or*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_or_else*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_le*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_lt*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_ge*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_gt*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_eq*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_access*(array: ptr isl_ast_expr; indices: ptr isl_ast_expr_list): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_call*(function: ptr isl_ast_expr; arguments: ptr isl_ast_expr_list): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_address_of*(expr: ptr isl_ast_expr): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_expr_copy*(expr: ptr isl_ast_expr): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_expr_free*(expr: ptr isl_ast_expr): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_expr_get_ctx*(expr: ptr isl_ast_expr): ptr isl_ctx {.importc,
    header: headerast.}
proc isl_ast_expr_get_type*(expr: ptr isl_ast_expr): isl_ast_expr_type {.importc,
    header: headerast.}
proc isl_ast_expr_int_get_val*(expr: ptr isl_ast_expr): ptr isl_val {.importc,
    header: headerast.}
proc isl_ast_expr_get_val*(expr: ptr isl_ast_expr): ptr isl_val {.importc,
    header: headerast.}
proc isl_ast_expr_id_get_id*(expr: ptr isl_ast_expr): ptr isl_id {.importc,
    header: headerast.}
proc isl_ast_expr_get_id*(expr: ptr isl_ast_expr): ptr isl_id {.importc,
    header: headerast.}
proc isl_ast_expr_op_get_type*(expr: ptr isl_ast_expr): isl_ast_expr_op_type {.
    importc, header: headerast.}
proc isl_ast_expr_get_op_type*(expr: ptr isl_ast_expr): isl_ast_expr_op_type {.
    importc, header: headerast.}
proc isl_ast_expr_op_get_n_arg*(expr: ptr isl_ast_expr): isl_size {.importc,
    header: headerast.}
proc isl_ast_expr_get_op_n_arg*(expr: ptr isl_ast_expr): isl_size {.importc,
    header: headerast.}
proc isl_ast_expr_op_get_arg*(expr: ptr isl_ast_expr; pos: cint): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_get_op_arg*(expr: ptr isl_ast_expr; pos: cint): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_set_op_arg*(expr: ptr isl_ast_expr; pos: cint; arg: ptr isl_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_expr_is_equal*(expr1: ptr isl_ast_expr; expr2: ptr isl_ast_expr): isl_bool {.
    importc, header: headerast.}
proc isl_ast_expr_substitute_ids*(expr: ptr isl_ast_expr;
                                 id2expr: ptr isl_id_to_ast_expr): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_printer_print_ast_expr*(p: ptr isl_printer; expr: ptr isl_ast_expr): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_expr_dump*(expr: ptr isl_ast_expr) {.importc, header: headerast.}
proc isl_ast_expr_to_str*(expr: ptr isl_ast_expr): cstring {.importc,
    header: headerast.}
proc isl_ast_expr_to_C_str*(expr: ptr isl_ast_expr): cstring {.importc,
    header: headerast.}
proc isl_ast_node_alloc_user*(expr: ptr isl_ast_expr): ptr isl_ast_node {.importc,
    header: headerast.}
proc isl_ast_node_copy*(node: ptr isl_ast_node): ptr isl_ast_node {.importc,
    header: headerast.}
proc isl_ast_node_free*(node: ptr isl_ast_node): ptr isl_ast_node {.importc,
    header: headerast.}
proc isl_ast_node_get_ctx*(node: ptr isl_ast_node): ptr isl_ctx {.importc,
    header: headerast.}
proc isl_ast_node_get_type*(node: ptr isl_ast_node): isl_ast_node_type {.importc,
    header: headerast.}
proc isl_ast_node_set_annotation*(node: ptr isl_ast_node; annotation: ptr isl_id): ptr isl_ast_node {.
    importc, header: headerast.}
proc isl_ast_node_get_annotation*(node: ptr isl_ast_node): ptr isl_id {.importc,
    header: headerast.}
proc isl_ast_node_for_get_iterator*(node: ptr isl_ast_node): ptr isl_ast_expr {.
    importc, header: headerast.}
proc isl_ast_node_for_get_init*(node: ptr isl_ast_node): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_node_for_get_cond*(node: ptr isl_ast_node): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_node_for_get_inc*(node: ptr isl_ast_node): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_node_for_get_body*(node: ptr isl_ast_node): ptr isl_ast_node {.importc,
    header: headerast.}
proc isl_ast_node_for_is_degenerate*(node: ptr isl_ast_node): isl_bool {.importc,
    header: headerast.}
proc isl_ast_node_if_get_cond*(node: ptr isl_ast_node): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_ast_node_if_get_then_node*(node: ptr isl_ast_node): ptr isl_ast_node {.
    importc, header: headerast.}
proc isl_ast_node_if_get_then*(node: ptr isl_ast_node): ptr isl_ast_node {.importc,
    header: headerast.}
proc isl_ast_node_if_has_else_node*(node: ptr isl_ast_node): isl_bool {.importc,
    header: headerast.}
proc isl_ast_node_if_has_else*(node: ptr isl_ast_node): isl_bool {.importc,
    header: headerast.}
proc isl_ast_node_if_get_else_node*(node: ptr isl_ast_node): ptr isl_ast_node {.
    importc, header: headerast.}
proc isl_ast_node_if_get_else*(node: ptr isl_ast_node): ptr isl_ast_node {.importc,
    header: headerast.}
proc isl_ast_node_block_get_children*(node: ptr isl_ast_node): ptr isl_ast_node_list {.
    importc, header: headerast.}
proc isl_ast_node_mark_get_id*(node: ptr isl_ast_node): ptr isl_id {.importc,
    header: headerast.}
proc isl_ast_node_mark_get_node*(node: ptr isl_ast_node): ptr isl_ast_node {.importc,
    header: headerast.}
proc isl_ast_node_user_get_expr*(node: ptr isl_ast_node): ptr isl_ast_expr {.importc,
    header: headerast.}
proc isl_printer_print_ast_node*(p: ptr isl_printer; node: ptr isl_ast_node): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_node_dump*(node: ptr isl_ast_node) {.importc, header: headerast.}
proc isl_ast_node_to_str*(node: ptr isl_ast_node): cstring {.importc,
    header: headerast.}
proc isl_ast_print_options_alloc*(ctx: ptr isl_ctx): ptr isl_ast_print_options {.
    importc, header: headerast.}
proc isl_ast_print_options_copy*(options: ptr isl_ast_print_options): ptr isl_ast_print_options {.
    importc, header: headerast.}
proc isl_ast_print_options_free*(options: ptr isl_ast_print_options): ptr isl_ast_print_options {.
    importc, header: headerast.}
proc isl_ast_print_options_get_ctx*(options: ptr isl_ast_print_options): ptr isl_ctx {.
    importc, header: headerast.}
proc isl_options_set_ast_print_macro_once*(ctx: ptr isl_ctx; val: cint): isl_stat {.
    importc, header: headerast.}
proc isl_options_get_ast_print_macro_once*(ctx: ptr isl_ctx): cint {.importc,
    header: headerast.}
proc isl_ast_expr_op_type_set_print_name*(p: ptr isl_printer;
    `type`: isl_ast_expr_op_type; name: cstring): ptr isl_printer {.importc,
    header: headerast.}
proc isl_ast_op_type_set_print_name*(p: ptr isl_printer;
                                    `type`: isl_ast_expr_op_type; name: cstring): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_expr_op_type_print_macro*(`type`: isl_ast_expr_op_type;
                                      p: ptr isl_printer): ptr isl_printer {.importc,
    header: headerast.}
proc isl_ast_op_type_print_macro*(`type`: isl_ast_expr_op_type; p: ptr isl_printer): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_expr_print_macros*(expr: ptr isl_ast_expr; p: ptr isl_printer): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_node_print_macros*(node: ptr isl_ast_node; p: ptr isl_printer): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_node_print*(node: ptr isl_ast_node; p: ptr isl_printer;
                        options: ptr isl_ast_print_options): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_node_for_print*(node: ptr isl_ast_node; p: ptr isl_printer;
                            options: ptr isl_ast_print_options): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_node_if_print*(node: ptr isl_ast_node; p: ptr isl_printer;
                           options: ptr isl_ast_print_options): ptr isl_printer {.
    importc, header: headerast.}
proc isl_ast_node_to_C_str*(node: ptr isl_ast_node): cstring {.importc,
    header: headerast.}

{.compile: "/path/to/nim-isl/isl/isl_imath.c".}

{.compile: "/path/to/nim-isl/isl/imath_wrap/gmp_compat.c".}

{.compile: "/path/to/nim-isl/isl/imath_wrap/imath.c".}

{.compile: "/path/to/nim-isl/isl/imath_wrap/imrat.c".}

{.compile: "/path/to/nim-isl/isl/isl_int_sioimath.c".}

{.compile: "/path/to/nim-isl/isl/isl_val_sioimath.c".}

{.compile: "/path/to/nim-isl/isl/isl_aff.c".}

{.compile: "/path/to/nim-isl/isl/isl_aff_map.c".}

{.compile: "/path/to/nim-isl/isl/isl_affine_hull.c".}

{.compile: "/path/to/nim-isl/isl/isl_arg.c".}

{.compile: "/path/to/nim-isl/isl/isl_ast.c".}

{.compile: "/path/to/nim-isl/isl/isl_ast_build.c".}

{.compile: "/path/to/nim-isl/isl/isl_ast_build_expr.c".}

{.compile: "/path/to/nim-isl/isl/isl_ast_codegen.c".}

{.compile: "/path/to/nim-isl/isl/isl_ast_graft.c".}

{.compile: "/path/to/nim-isl/isl/basis_reduction_tab.c".}

{.compile: "/path/to/nim-isl/isl/isl_bernstein.c".}

{.compile: "/path/to/nim-isl/isl/isl_blk.c".}

{.compile: "/path/to/nim-isl/isl/isl_bound.c".}

{.compile: "/path/to/nim-isl/isl/isl_box.c".}

{.compile: "/path/to/nim-isl/isl/isl_coalesce.c".}

{.compile: "/path/to/nim-isl/isl/isl_constraint.c".}

{.compile: "/path/to/nim-isl/isl/isl_convex_hull.c".}

{.compile: "/path/to/nim-isl/isl/isl_ctx.c".}

{.compile: "/path/to/nim-isl/isl/isl_deprecated.c".}

{.compile: "/path/to/nim-isl/isl/isl_dim_map.c".}

{.compile: "/path/to/nim-isl/isl/isl_equalities.c".}

{.compile: "/path/to/nim-isl/isl/isl_factorization.c".}

{.compile: "/path/to/nim-isl/isl/isl_farkas.c".}

{.compile: "/path/to/nim-isl/isl/isl_ffs.c".}

{.compile: "/path/to/nim-isl/isl/isl_flow.c".}

{.compile: "/path/to/nim-isl/isl/isl_fold.c".}

{.compile: "/path/to/nim-isl/isl/isl_hash.c".}

{.compile: "/path/to/nim-isl/isl/isl_id_to_ast_expr.c".}

{.compile: "/path/to/nim-isl/isl/isl_id_to_id.c".}

{.compile: "/path/to/nim-isl/isl/isl_id_to_pw_aff.c".}

{.compile: "/path/to/nim-isl/isl/isl_ilp.c".}

{.compile: "/path/to/nim-isl/isl/isl_input.c".}

{.compile: "/path/to/nim-isl/isl/isl_local.c".}

{.compile: "/path/to/nim-isl/isl/isl_local_space.c".}

{.compile: "/path/to/nim-isl/isl/isl_lp.c".}

{.compile: "/path/to/nim-isl/isl/isl_map.c".}

{.compile: "/path/to/nim-isl/isl/isl_map_list.c".}

{.compile: "/path/to/nim-isl/isl/isl_map_simplify.c".}

{.compile: "/path/to/nim-isl/isl/isl_map_subtract.c".}

{.compile: "/path/to/nim-isl/isl/isl_map_to_basic_set.c".}

{.compile: "/path/to/nim-isl/isl/isl_mat.c".}

{.compile: "/path/to/nim-isl/isl/isl_morph.c".}

{.compile: "/path/to/nim-isl/isl/isl_id.c".}

{.compile: "/path/to/nim-isl/isl/isl_obj.c".}

{.compile: "/path/to/nim-isl/isl/isl_options.c".}

{.compile: "/path/to/nim-isl/isl/isl_output.c".}

{.compile: "/path/to/nim-isl/isl/isl_point.c".}

{.compile: "/path/to/nim-isl/isl/isl_polynomial.c".}

{.compile: "/path/to/nim-isl/isl/isl_printer.c".}

{.compile: "/path/to/nim-isl/isl/print.c".}

{.compile: "/path/to/nim-isl/isl/isl_range.c".}

{.compile: "/path/to/nim-isl/isl/isl_reordering.c".}

{.compile: "/path/to/nim-isl/isl/isl_sample.c".}

{.compile: "/path/to/nim-isl/isl/isl_scan.c".}

{.compile: "/path/to/nim-isl/isl/isl_schedule.c".}

{.compile: "/path/to/nim-isl/isl/isl_schedule_band.c".}

{.compile: "/path/to/nim-isl/isl/isl_schedule_node.c".}

{.compile: "/path/to/nim-isl/isl/isl_schedule_read.c".}

{.compile: "/path/to/nim-isl/isl/isl_schedule_tree.c".}

{.compile: "/path/to/nim-isl/isl/isl_schedule_constraints.c".}

{.compile: "/path/to/nim-isl/isl/isl_scheduler.c".}

{.compile: "/path/to/nim-isl/isl/isl_set_list.c".}

{.compile: "/path/to/nim-isl/isl/isl_sort.c".}

{.compile: "/path/to/nim-isl/isl/isl_space.c".}

{.compile: "/path/to/nim-isl/isl/isl_stream.c".}

{.compile: "/path/to/nim-isl/isl/isl_seq.c".}

{.compile: "/path/to/nim-isl/isl/isl_stride.c".}

{.compile: "/path/to/nim-isl/isl/isl_tab.c".}

{.compile: "/path/to/nim-isl/isl/isl_tab_pip.c".}

{.compile: "/path/to/nim-isl/isl/isl_tarjan.c".}

{.compile: "/path/to/nim-isl/isl/isl_transitive_closure.c".}

{.compile: "/path/to/nim-isl/isl/isl_union_map.c".}

{.compile: "/path/to/nim-isl/isl/isl_val.c".}

{.compile: "/path/to/nim-isl/isl/isl_vec.c".}

{.compile: "/path/to/nim-isl/isl/isl_version.c".}

{.compile: "/path/to/nim-isl/isl/isl_vertices.c".}
