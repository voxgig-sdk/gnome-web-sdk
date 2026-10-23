# GnomeWeb SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'graphql'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

GnomeWebUtility.registrar = ->(u) {
  u.clean = GnomeWebUtilities::Clean
  u.clean_add = GnomeWebUtilities::CleanAdd
  u.clean_explain = GnomeWebUtilities::CleanExplain
  u.done = GnomeWebUtilities::Done
  u.make_error = GnomeWebUtilities::MakeError
  u.feature_add = GnomeWebUtilities::FeatureAdd
  u.feature_hook = GnomeWebUtilities::FeatureHook
  u.feature_init = GnomeWebUtilities::FeatureInit
  u.fetcher = GnomeWebUtilities::Fetcher
  u.make_fetch_def = GnomeWebUtilities::MakeFetchDef
  u.make_context = GnomeWebUtilities::MakeContext
  u.make_options = GnomeWebUtilities::MakeOptions
  u.make_request = GnomeWebUtilities::MakeRequest
  u.make_response = GnomeWebUtilities::MakeResponse
  u.make_result = GnomeWebUtilities::MakeResult
  u.make_point = GnomeWebUtilities::MakePoint
  u.make_spec = GnomeWebUtilities::MakeSpec
  u.make_url = GnomeWebUtilities::MakeUrl
  u.param = GnomeWebUtilities::Param
  u.prepare_auth = GnomeWebUtilities::PrepareAuth
  u.prepare_body = GnomeWebUtilities::PrepareBody
  u.prepare_headers = GnomeWebUtilities::PrepareHeaders
  u.prepare_method = GnomeWebUtilities::PrepareMethod
  u.prepare_params = GnomeWebUtilities::PrepareParams
  u.prepare_path = GnomeWebUtilities::PreparePath
  u.prepare_query = GnomeWebUtilities::PrepareQuery
  u.graphql_body = GnomeWebUtilities::GraphqlBody
  u.graphql_errors = GnomeWebUtilities::GraphqlErrors
  u.result_basic = GnomeWebUtilities::ResultBasic
  u.result_body = GnomeWebUtilities::ResultBody
  u.result_headers = GnomeWebUtilities::ResultHeaders
  u.transform_request = GnomeWebUtilities::TransformRequest
  u.transform_response = GnomeWebUtilities::TransformResponse
}
