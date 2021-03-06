#
# Cookbook Name:: rage4dns
# Resource:: record
#
# Copyright (C) 2015 Nephila Graphic
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :create, :delete

attribute :name, kind_of: String, name_attribute: true
attribute :record_name, kind_of: String
attribute :domain, kind_of: String, required: true
attribute :value, kind_of: String, required: true
attribute :type, kind_of: String, required: true

attribute :ttl, kind_of: Integer
attribute :geozone, kind_of: String

attribute :failover, kind_of: [TrueClass, FalseClass]
attribute :failover_content, kind_of: String

attribute :rage_access_key_id, kind_of: String, required: true
attribute :rage_secret_access_key, kind_of: String, required: true

def initialize(name, run_context = nil)
  super
  @action = :create
  @record_name = name
end
