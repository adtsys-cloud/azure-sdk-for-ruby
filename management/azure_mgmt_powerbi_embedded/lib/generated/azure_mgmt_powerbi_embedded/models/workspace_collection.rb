# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded
  module Models
    #
    # Model object.
    # 
    #
    class WorkspaceCollection

      include MsRestAzure

      # @return [String] Resource id
      attr_accessor :id

      # @return [String] Workspace collection name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] Azure location
      attr_accessor :location

      # @return [Hash{String => String}]
      attr_accessor :tags

      # @return [AzureSku] . Default value: {} .
      attr_accessor :sku

      # @return Properties
      attr_accessor :properties


      #
      # Mapper for WorkspaceCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkspaceCollection',
          type: {
            name: 'Composite',
            class_name: 'WorkspaceCollection',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                is_constant: true,
                serialized_name: 'sku',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'AzureSku'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
