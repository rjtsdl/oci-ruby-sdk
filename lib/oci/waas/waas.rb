# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

module OCI
  module Waas
    # Module containing models for requests made to, and responses received from,
    # OCI Waas services
    module Models
    end
  end
end

# Require models
require 'oci/waas/models/access_rule'
require 'oci/waas/models/access_rule_criteria'
require 'oci/waas/models/address_rate_limiting'
require 'oci/waas/models/block_challenge_settings'
require 'oci/waas/models/captcha'
require 'oci/waas/models/certificate'
require 'oci/waas/models/certificate_extensions'
require 'oci/waas/models/certificate_public_key_info'
require 'oci/waas/models/certificate_subject_name'
require 'oci/waas/models/certificate_summary'
require 'oci/waas/models/create_certificate_details'
require 'oci/waas/models/create_waas_policy_details'
require 'oci/waas/models/device_fingerprint_challenge'
require 'oci/waas/models/edge_subnet'
require 'oci/waas/models/good_bot'
require 'oci/waas/models/header'
require 'oci/waas/models/human_interaction_challenge'
require 'oci/waas/models/js_challenge'
require 'oci/waas/models/lifecycle_states'
require 'oci/waas/models/origin'
require 'oci/waas/models/policy_config'
require 'oci/waas/models/protection_rule'
require 'oci/waas/models/protection_rule_action'
require 'oci/waas/models/protection_rule_exclusion'
require 'oci/waas/models/protection_settings'
require 'oci/waas/models/recommendation'
require 'oci/waas/models/threat_feed'
require 'oci/waas/models/threat_feed_action'
require 'oci/waas/models/update_certificate_details'
require 'oci/waas/models/update_waas_policy_details'
require 'oci/waas/models/waas_policy'
require 'oci/waas/models/waas_policy_summary'
require 'oci/waas/models/waf_blocked_request'
require 'oci/waas/models/waf_config'
require 'oci/waas/models/waf_config_details'
require 'oci/waas/models/waf_log'
require 'oci/waas/models/waf_meter_datum'
require 'oci/waas/models/waf_request'
require 'oci/waas/models/waf_traffic_datum'
require 'oci/waas/models/whitelist'
require 'oci/waas/models/work_request'
require 'oci/waas/models/work_request_error'
require 'oci/waas/models/work_request_log_entry'
require 'oci/waas/models/work_request_operation_types'
require 'oci/waas/models/work_request_resource'
require 'oci/waas/models/work_request_status_values'
require 'oci/waas/models/work_request_summary'

# Require generated clients
require 'oci/waas/waas_client'
require 'oci/waas/waas_client_composite_operations'

# Require service utilities
require 'oci/waas/util'
