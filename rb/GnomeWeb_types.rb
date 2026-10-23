# frozen_string_literal: true

# Typed models for the GnomeWeb SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields{} and per-op
# params (op.<name>.points[].g.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Language entity data model.
#
# @!attribute [rw] id
#   @return [Hash]
#
# @!attribute [rw] local_name
#   @return [String]
Language = Struct.new(
  :id,
  :local_name,
  keyword_init: true
)

# Request payload for Language#list.
#
# @!attribute [rw] id
#   @return [Hash, nil]
#
# @!attribute [rw] local_name
#   @return [String, nil]
LanguageListMatch = Struct.new(
  :id,
  :local_name,
  keyword_init: true
)

