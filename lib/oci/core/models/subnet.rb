# Copyright (c) 2016, 2019, Oracle and/or its affiliates. All rights reserved.

require 'date'
require 'logger'

# rubocop:disable Lint/UnneededCopDisableDirective
module OCI
  # A logical subdivision of a VCN. Each subnet exists in a single availability domain and
  # consists of a contiguous range of IP addresses that do not overlap with
  # other subnets in the VCN. Example: 172.16.1.0/24. For more information, see
  # [Overview of the Networking Service](https://docs.cloud.oracle.com/Content/Network/Concepts/overview.htm) and
  # [VCNs and Subnets](https://docs.cloud.oracle.com/Content/Network/Tasks/managingVCNs.htm).
  #
  # To use any of the API operations, you must be authorized in an IAM policy. If you're not authorized,
  # talk to an administrator. If you're an administrator who needs to write policies to give users access, see
  # [Getting Started with Policies](https://docs.cloud.oracle.com/Content/Identity/Concepts/policygetstarted.htm).
  #
  # **Warning:** Oracle recommends that you avoid using any confidential information when you
  # supply string values using the API.
  #
  class Core::Models::Subnet # rubocop:disable Metrics/LineLength
    LIFECYCLE_STATE_ENUM = [
      LIFECYCLE_STATE_PROVISIONING = 'PROVISIONING'.freeze,
      LIFECYCLE_STATE_AVAILABLE = 'AVAILABLE'.freeze,
      LIFECYCLE_STATE_TERMINATING = 'TERMINATING'.freeze,
      LIFECYCLE_STATE_TERMINATED = 'TERMINATED'.freeze,
      LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE = 'UNKNOWN_ENUM_VALUE'.freeze
    ].freeze

    # The subnet's availability domain.
    #
    # Example: `Uocm:PHX-AD-1`
    #
    # @return [String]
    attr_accessor :availability_domain

    # **[Required]** The subnet's CIDR block.
    #
    # Example: `172.16.1.0/24`
    #
    # @return [String]
    attr_accessor :cidr_block

    # **[Required]** The OCID of the compartment containing the subnet.
    # @return [String]
    attr_accessor :compartment_id

    # Defined tags for this resource. Each key is predefined and scoped to a namespace.
    # For more information, see [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Operations\": {\"CostCenter\": \"42\"}}`
    #
    # @return [Hash<String, Hash<String, Object>>]
    attr_accessor :defined_tags

    # The OCID of the set of DHCP options that the subnet uses.
    #
    # @return [String]
    attr_accessor :dhcp_options_id

    # A user-friendly name. Does not have to be unique, and it's changeable.
    # Avoid entering confidential information.
    #
    # @return [String]
    attr_accessor :display_name

    # A DNS label for the subnet, used in conjunction with the VNIC's hostname and
    # VCN's DNS label to form a fully qualified domain name (FQDN) for each VNIC
    # within this subnet (for example, `bminstance-1.subnet123.vcn1.oraclevcn.com`).
    # Must be an alphanumeric string that begins with a letter and is unique within the VCN.
    # The value cannot be changed.
    #
    # The absence of this parameter means the Internet and VCN Resolver
    # will not resolve hostnames of instances in this subnet.
    #
    # For more information, see
    # [DNS in Your Virtual Cloud Network](https://docs.cloud.oracle.com/Content/Network/Concepts/dns.htm).
    #
    # Example: `subnet123`
    #
    # @return [String]
    attr_accessor :dns_label

    # Free-form tags for this resource. Each tag is a simple key-value pair with no
    # predefined name, type, or namespace. For more information, see
    # [Resource Tags](https://docs.cloud.oracle.com/Content/General/Concepts/resourcetags.htm).
    #
    # Example: `{\"Department\": \"Finance\"}`
    #
    # @return [Hash<String, String>]
    attr_accessor :freeform_tags

    # **[Required]** The subnet's Oracle ID (OCID).
    # @return [String]
    attr_accessor :id

    # **[Required]** The subnet's current state.
    # @return [String]
    attr_reader :lifecycle_state

    # Whether VNICs within this subnet can have public IP addresses.
    # Defaults to false, which means VNICs created in this subnet will
    # automatically be assigned public IP addresses unless specified
    # otherwise during instance launch or VNIC creation (with the
    # `assignPublicIp` flag in
    # {CreateVnicDetails}).
    # If `prohibitPublicIpOnVnic` is set to true, VNICs created in this
    # subnet cannot have public IP addresses (that is, it's a private
    # subnet).
    #
    # Example: `true`
    #
    # @return [BOOLEAN]
    attr_accessor :prohibit_public_ip_on_vnic

    # **[Required]** The OCID of the route table that the subnet uses.
    # @return [String]
    attr_accessor :route_table_id

    # The OCIDs of the security list or lists that the subnet uses. Remember
    # that security lists are associated *with the subnet*, but the
    # rules are applied to the individual VNICs in the subnet.
    #
    # @return [Array<String>]
    attr_accessor :security_list_ids

    # The subnet's domain name, which consists of the subnet's DNS label,
    # the VCN's DNS label, and the `oraclevcn.com` domain.
    #
    # For more information, see
    # [DNS in Your Virtual Cloud Network](https://docs.cloud.oracle.com/Content/Network/Concepts/dns.htm).
    #
    # Example: `subnet123.vcn1.oraclevcn.com`
    #
    # @return [String]
    attr_accessor :subnet_domain_name

    # The date and time the subnet was created, in the format defined by RFC3339.
    #
    # Example: `2016-08-25T21:10:29.600Z`
    #
    # @return [DateTime]
    attr_accessor :time_created

    # **[Required]** The OCID of the VCN the subnet is in.
    # @return [String]
    attr_accessor :vcn_id

    # **[Required]** The IP address of the virtual router.
    #
    # Example: `10.0.14.1`
    #
    # @return [String]
    attr_accessor :virtual_router_ip

    # **[Required]** The MAC address of the virtual router.
    #
    # Example: `00:00:17:B6:4D:DD`
    #
    # @return [String]
    attr_accessor :virtual_router_mac

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        # rubocop:disable Style/SymbolLiteral
        'availability_domain': :'availabilityDomain',
        'cidr_block': :'cidrBlock',
        'compartment_id': :'compartmentId',
        'defined_tags': :'definedTags',
        'dhcp_options_id': :'dhcpOptionsId',
        'display_name': :'displayName',
        'dns_label': :'dnsLabel',
        'freeform_tags': :'freeformTags',
        'id': :'id',
        'lifecycle_state': :'lifecycleState',
        'prohibit_public_ip_on_vnic': :'prohibitPublicIpOnVnic',
        'route_table_id': :'routeTableId',
        'security_list_ids': :'securityListIds',
        'subnet_domain_name': :'subnetDomainName',
        'time_created': :'timeCreated',
        'vcn_id': :'vcnId',
        'virtual_router_ip': :'virtualRouterIp',
        'virtual_router_mac': :'virtualRouterMac'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        # rubocop:disable Style/SymbolLiteral
        'availability_domain': :'String',
        'cidr_block': :'String',
        'compartment_id': :'String',
        'defined_tags': :'Hash<String, Hash<String, Object>>',
        'dhcp_options_id': :'String',
        'display_name': :'String',
        'dns_label': :'String',
        'freeform_tags': :'Hash<String, String>',
        'id': :'String',
        'lifecycle_state': :'String',
        'prohibit_public_ip_on_vnic': :'BOOLEAN',
        'route_table_id': :'String',
        'security_list_ids': :'Array<String>',
        'subnet_domain_name': :'String',
        'time_created': :'DateTime',
        'vcn_id': :'String',
        'virtual_router_ip': :'String',
        'virtual_router_mac': :'String'
        # rubocop:enable Style/SymbolLiteral
      }
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:disable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral


    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    # @option attributes [String] :availability_domain The value to assign to the {#availability_domain} property
    # @option attributes [String] :cidr_block The value to assign to the {#cidr_block} property
    # @option attributes [String] :compartment_id The value to assign to the {#compartment_id} property
    # @option attributes [Hash<String, Hash<String, Object>>] :defined_tags The value to assign to the {#defined_tags} property
    # @option attributes [String] :dhcp_options_id The value to assign to the {#dhcp_options_id} property
    # @option attributes [String] :display_name The value to assign to the {#display_name} property
    # @option attributes [String] :dns_label The value to assign to the {#dns_label} property
    # @option attributes [Hash<String, String>] :freeform_tags The value to assign to the {#freeform_tags} property
    # @option attributes [String] :id The value to assign to the {#id} property
    # @option attributes [String] :lifecycle_state The value to assign to the {#lifecycle_state} property
    # @option attributes [BOOLEAN] :prohibit_public_ip_on_vnic The value to assign to the {#prohibit_public_ip_on_vnic} property
    # @option attributes [String] :route_table_id The value to assign to the {#route_table_id} property
    # @option attributes [Array<String>] :security_list_ids The value to assign to the {#security_list_ids} property
    # @option attributes [String] :subnet_domain_name The value to assign to the {#subnet_domain_name} property
    # @option attributes [DateTime] :time_created The value to assign to the {#time_created} property
    # @option attributes [String] :vcn_id The value to assign to the {#vcn_id} property
    # @option attributes [String] :virtual_router_ip The value to assign to the {#virtual_router_ip} property
    # @option attributes [String] :virtual_router_mac The value to assign to the {#virtual_router_mac} property
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      self.availability_domain = attributes[:'availabilityDomain'] if attributes[:'availabilityDomain']

      raise 'You cannot provide both :availabilityDomain and :availability_domain' if attributes.key?(:'availabilityDomain') && attributes.key?(:'availability_domain')

      self.availability_domain = attributes[:'availability_domain'] if attributes[:'availability_domain']

      self.cidr_block = attributes[:'cidrBlock'] if attributes[:'cidrBlock']

      raise 'You cannot provide both :cidrBlock and :cidr_block' if attributes.key?(:'cidrBlock') && attributes.key?(:'cidr_block')

      self.cidr_block = attributes[:'cidr_block'] if attributes[:'cidr_block']

      self.compartment_id = attributes[:'compartmentId'] if attributes[:'compartmentId']

      raise 'You cannot provide both :compartmentId and :compartment_id' if attributes.key?(:'compartmentId') && attributes.key?(:'compartment_id')

      self.compartment_id = attributes[:'compartment_id'] if attributes[:'compartment_id']

      self.defined_tags = attributes[:'definedTags'] if attributes[:'definedTags']

      raise 'You cannot provide both :definedTags and :defined_tags' if attributes.key?(:'definedTags') && attributes.key?(:'defined_tags')

      self.defined_tags = attributes[:'defined_tags'] if attributes[:'defined_tags']

      self.dhcp_options_id = attributes[:'dhcpOptionsId'] if attributes[:'dhcpOptionsId']

      raise 'You cannot provide both :dhcpOptionsId and :dhcp_options_id' if attributes.key?(:'dhcpOptionsId') && attributes.key?(:'dhcp_options_id')

      self.dhcp_options_id = attributes[:'dhcp_options_id'] if attributes[:'dhcp_options_id']

      self.display_name = attributes[:'displayName'] if attributes[:'displayName']

      raise 'You cannot provide both :displayName and :display_name' if attributes.key?(:'displayName') && attributes.key?(:'display_name')

      self.display_name = attributes[:'display_name'] if attributes[:'display_name']

      self.dns_label = attributes[:'dnsLabel'] if attributes[:'dnsLabel']

      raise 'You cannot provide both :dnsLabel and :dns_label' if attributes.key?(:'dnsLabel') && attributes.key?(:'dns_label')

      self.dns_label = attributes[:'dns_label'] if attributes[:'dns_label']

      self.freeform_tags = attributes[:'freeformTags'] if attributes[:'freeformTags']

      raise 'You cannot provide both :freeformTags and :freeform_tags' if attributes.key?(:'freeformTags') && attributes.key?(:'freeform_tags')

      self.freeform_tags = attributes[:'freeform_tags'] if attributes[:'freeform_tags']

      self.id = attributes[:'id'] if attributes[:'id']

      self.lifecycle_state = attributes[:'lifecycleState'] if attributes[:'lifecycleState']

      raise 'You cannot provide both :lifecycleState and :lifecycle_state' if attributes.key?(:'lifecycleState') && attributes.key?(:'lifecycle_state')

      self.lifecycle_state = attributes[:'lifecycle_state'] if attributes[:'lifecycle_state']

      self.prohibit_public_ip_on_vnic = attributes[:'prohibitPublicIpOnVnic'] unless attributes[:'prohibitPublicIpOnVnic'].nil?

      raise 'You cannot provide both :prohibitPublicIpOnVnic and :prohibit_public_ip_on_vnic' if attributes.key?(:'prohibitPublicIpOnVnic') && attributes.key?(:'prohibit_public_ip_on_vnic')

      self.prohibit_public_ip_on_vnic = attributes[:'prohibit_public_ip_on_vnic'] unless attributes[:'prohibit_public_ip_on_vnic'].nil?

      self.route_table_id = attributes[:'routeTableId'] if attributes[:'routeTableId']

      raise 'You cannot provide both :routeTableId and :route_table_id' if attributes.key?(:'routeTableId') && attributes.key?(:'route_table_id')

      self.route_table_id = attributes[:'route_table_id'] if attributes[:'route_table_id']

      self.security_list_ids = attributes[:'securityListIds'] if attributes[:'securityListIds']

      raise 'You cannot provide both :securityListIds and :security_list_ids' if attributes.key?(:'securityListIds') && attributes.key?(:'security_list_ids')

      self.security_list_ids = attributes[:'security_list_ids'] if attributes[:'security_list_ids']

      self.subnet_domain_name = attributes[:'subnetDomainName'] if attributes[:'subnetDomainName']

      raise 'You cannot provide both :subnetDomainName and :subnet_domain_name' if attributes.key?(:'subnetDomainName') && attributes.key?(:'subnet_domain_name')

      self.subnet_domain_name = attributes[:'subnet_domain_name'] if attributes[:'subnet_domain_name']

      self.time_created = attributes[:'timeCreated'] if attributes[:'timeCreated']

      raise 'You cannot provide both :timeCreated and :time_created' if attributes.key?(:'timeCreated') && attributes.key?(:'time_created')

      self.time_created = attributes[:'time_created'] if attributes[:'time_created']

      self.vcn_id = attributes[:'vcnId'] if attributes[:'vcnId']

      raise 'You cannot provide both :vcnId and :vcn_id' if attributes.key?(:'vcnId') && attributes.key?(:'vcn_id')

      self.vcn_id = attributes[:'vcn_id'] if attributes[:'vcn_id']

      self.virtual_router_ip = attributes[:'virtualRouterIp'] if attributes[:'virtualRouterIp']

      raise 'You cannot provide both :virtualRouterIp and :virtual_router_ip' if attributes.key?(:'virtualRouterIp') && attributes.key?(:'virtual_router_ip')

      self.virtual_router_ip = attributes[:'virtual_router_ip'] if attributes[:'virtual_router_ip']

      self.virtual_router_mac = attributes[:'virtualRouterMac'] if attributes[:'virtualRouterMac']

      raise 'You cannot provide both :virtualRouterMac and :virtual_router_mac' if attributes.key?(:'virtualRouterMac') && attributes.key?(:'virtual_router_mac')

      self.virtual_router_mac = attributes[:'virtual_router_mac'] if attributes[:'virtual_router_mac']
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity
    # rubocop:enable Metrics/LineLength, Metrics/MethodLength, Layout/EmptyLines, Style/SymbolLiteral

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lifecycle_state Object to be assigned
    def lifecycle_state=(lifecycle_state)
      # rubocop:disable Style/ConditionalAssignment
      if lifecycle_state && !LIFECYCLE_STATE_ENUM.include?(lifecycle_state)
        # rubocop: disable Metrics/LineLength
        OCI.logger.debug("Unknown value for 'lifecycle_state' [" + lifecycle_state + "]. Mapping to 'LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE'") if OCI.logger
        # rubocop: enable Metrics/LineLength
        @lifecycle_state = LIFECYCLE_STATE_UNKNOWN_ENUM_VALUE
      else
        @lifecycle_state = lifecycle_state
      end
      # rubocop:enable Style/ConditionalAssignment
    end

    # rubocop:disable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines


    # Checks equality by comparing each attribute.
    # @param [Object] other the other object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        availability_domain == other.availability_domain &&
        cidr_block == other.cidr_block &&
        compartment_id == other.compartment_id &&
        defined_tags == other.defined_tags &&
        dhcp_options_id == other.dhcp_options_id &&
        display_name == other.display_name &&
        dns_label == other.dns_label &&
        freeform_tags == other.freeform_tags &&
        id == other.id &&
        lifecycle_state == other.lifecycle_state &&
        prohibit_public_ip_on_vnic == other.prohibit_public_ip_on_vnic &&
        route_table_id == other.route_table_id &&
        security_list_ids == other.security_list_ids &&
        subnet_domain_name == other.subnet_domain_name &&
        time_created == other.time_created &&
        vcn_id == other.vcn_id &&
        virtual_router_ip == other.virtual_router_ip &&
        virtual_router_mac == other.virtual_router_mac
    end
    # rubocop:enable Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/PerceivedComplexity, Metrics/LineLength, Layout/EmptyLines

    # @see the `==` method
    # @param [Object] other the other object to be compared
    def eql?(other)
      self == other
    end

    # rubocop:disable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines


    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [availability_domain, cidr_block, compartment_id, defined_tags, dhcp_options_id, display_name, dns_label, freeform_tags, id, lifecycle_state, prohibit_public_ip_on_vnic, route_table_id, security_list_ids, subnet_domain_name, time_created, vcn_id, virtual_router_ip, virtual_router_mac].hash
    end
    # rubocop:enable Metrics/AbcSize, Metrics/LineLength, Layout/EmptyLines

    # rubocop:disable Metrics/AbcSize, Layout/EmptyLines


    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            public_method("#{key}=").call(
              attributes[self.class.attribute_map[key]]
                .map { |v| OCI::Internal::Util.convert_to_type(Regexp.last_match(1), v) }
            )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          public_method("#{key}=").call(
            OCI::Internal::Util.convert_to_type(type, attributes[self.class.attribute_map[key]])
          )
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end
    # rubocop:enable Metrics/AbcSize, Layout/EmptyLines

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = public_method(attr).call
        next if value.nil? && !instance_variable_defined?("@#{attr}")

        hash[param] = _to_hash(value)
      end
      hash
    end

    private

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
# rubocop:enable Lint/UnneededCopDisableDirective
