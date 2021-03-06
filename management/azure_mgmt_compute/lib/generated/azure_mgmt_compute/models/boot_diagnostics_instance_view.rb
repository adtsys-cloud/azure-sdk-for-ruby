# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The instance view of a virtual machine boot diagnostics.
    #
    class BootDiagnosticsInstanceView

      include MsRestAzure

      # @return [String] The console screenshot blob URI.
      attr_accessor :console_screenshot_blob_uri

      # @return [String] The Linux serial console log blob Uri.
      attr_accessor :serial_console_log_blob_uri


      #
      # Mapper for BootDiagnosticsInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BootDiagnosticsInstanceView',
          type: {
            name: 'Composite',
            class_name: 'BootDiagnosticsInstanceView',
            model_properties: {
              console_screenshot_blob_uri: {
                required: false,
                serialized_name: 'consoleScreenshotBlobUri',
                type: {
                  name: 'String'
                }
              },
              serial_console_log_blob_uri: {
                required: false,
                serialized_name: 'serialConsoleLogBlobUri',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
