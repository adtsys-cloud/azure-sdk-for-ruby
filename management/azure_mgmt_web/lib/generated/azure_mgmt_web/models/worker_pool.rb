# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Worker pool of a hostingEnvironment (App Service Environment)
    #
    class WorkerPool < MsRestAzure::Resource

      include MsRestAzure

      # @return [Integer] Worker size id for referencing this worker pool
      attr_accessor :worker_size_id

      # @return [ComputeModeOptions] Shared or dedicated web app hosting.
      # Possible values include: 'Shared', 'Dedicated', 'Dynamic'
      attr_accessor :compute_mode

      # @return [String] VM size of the worker pool instances
      attr_accessor :worker_size

      # @return [Integer] Number of instances in the worker pool
      attr_accessor :worker_count

      # @return [Array<String>] Names of all instances in the worker pool (read
      # only)
      attr_accessor :instance_names

      # @return [SkuDescription]
      attr_accessor :sku


      #
      # Mapper for WorkerPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WorkerPool',
          type: {
            name: 'Composite',
            class_name: 'WorkerPool',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
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
              worker_size_id: {
                required: false,
                serialized_name: 'properties.workerSizeId',
                type: {
                  name: 'Number'
                }
              },
              compute_mode: {
                required: false,
                serialized_name: 'properties.computeMode',
                type: {
                  name: 'Enum',
                  module: 'ComputeModeOptions'
                }
              },
              worker_size: {
                required: false,
                serialized_name: 'properties.workerSize',
                type: {
                  name: 'String'
                }
              },
              worker_count: {
                required: false,
                serialized_name: 'properties.workerCount',
                type: {
                  name: 'Number'
                }
              },
              instance_names: {
                required: false,
                serialized_name: 'properties.instanceNames',
                type: {
                  name: 'Sequence',
                  element: {
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
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SkuDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end
