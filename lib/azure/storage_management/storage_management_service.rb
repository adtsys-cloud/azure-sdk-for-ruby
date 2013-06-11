#-------------------------------------------------------------------------
# Copyright 2013 Microsoft Open Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'azure/storage_management/serialization'

module Azure
  module StorageManagement
    class StorageManagementService

      # Public: Get a list of storage accounts available under the current subscription.
      #
      # Returns an array of Azure::StorageManagement::StorageAccount objects
      def self.list_storage_accounts
        request_path = "/services/storageservices"
        request = ManagementHttpRequest.new(:get, request_path, nil)
        response = request.call
        Serialization.storage_services_from_xml(response)
      end

      # Public: Checks to see if the specified storage account is available
      #
      # ==== Attributes
      #
      # * +name+       - String. Storage account name.
      #
      # Returns: A boolean value indicating whether the storage account exists.
      # If true, the storage account exists of given name. If false, the storage account
      # doesn't exists.
      def self.get_storage_account(name)
        return false if name.nil?
        flag = false
        storage_accounts = list_storage_accounts
        storage_accounts.each do |storage|
          if storage.name == name
            flag = true
            break
          end
        end
        flag
      end
      # Public: Create a new storage account in Windows Azure.
      #
      # ==== Attributes
      #
      # * +name+          - String. The name of the storage service.
      # * +options+       - Hash. Optional parameters.
      #
      # ==== Options
      #
      # Accepted key/value pairs in options parameter are:
      # * +:location+            - String.  The location where the storage service will be created.(optional)
      # * +:description+         - String. A description for the storage service. (optional)
      #
      # Returns None
      def self.create_storage_account(name, options={})
        if get_storage_account(name)
          Loggerx.warn "Storage Account #{name} already exist. Skipped..."
        else
          Loggerx.info "Creating Storage Account #{name}."
          body = Serialization.storage_services_to_xml(name, options)
          request_path = "/services/storageservices"
          request = ManagementHttpRequest.new(:post, request_path, body)
          request.call
        end
      end
    end
  end
end
