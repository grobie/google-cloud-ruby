# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/dataflow/v1beta3/templates.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/dataflow/v1beta3/environment_pb'
require 'google/dataflow/v1beta3/jobs_pb'
require 'google/rpc/status_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/dataflow/v1beta3/templates.proto", :syntax => :proto3) do
    add_message "google.dataflow.v1beta3.LaunchFlexTemplateResponse" do
      optional :job, :message, 1, "google.dataflow.v1beta3.Job"
    end
    add_message "google.dataflow.v1beta3.ContainerSpec" do
      optional :image, :string, 1
      optional :metadata, :message, 2, "google.dataflow.v1beta3.TemplateMetadata"
      optional :sdk_info, :message, 3, "google.dataflow.v1beta3.SDKInfo"
      optional :default_environment, :message, 4, "google.dataflow.v1beta3.FlexTemplateRuntimeEnvironment"
    end
    add_message "google.dataflow.v1beta3.LaunchFlexTemplateParameter" do
      optional :job_name, :string, 1
      map :parameters, :string, :string, 2
      map :launch_options, :string, :string, 6
      optional :environment, :message, 7, "google.dataflow.v1beta3.FlexTemplateRuntimeEnvironment"
      optional :update, :bool, 8
      map :transform_name_mappings, :string, :string, 9
      oneof :template do
        optional :container_spec, :message, 4, "google.dataflow.v1beta3.ContainerSpec"
        optional :container_spec_gcs_path, :string, 5
      end
    end
    add_message "google.dataflow.v1beta3.FlexTemplateRuntimeEnvironment" do
      optional :num_workers, :int32, 1
      optional :max_workers, :int32, 2
      optional :zone, :string, 3
      optional :service_account_email, :string, 4
      optional :temp_location, :string, 5
      optional :machine_type, :string, 6
      repeated :additional_experiments, :string, 7
      optional :network, :string, 8
      optional :subnetwork, :string, 9
      map :additional_user_labels, :string, :string, 10
      optional :kms_key_name, :string, 11
      optional :ip_configuration, :enum, 12, "google.dataflow.v1beta3.WorkerIPAddressConfiguration"
      optional :worker_region, :string, 13
      optional :worker_zone, :string, 14
      optional :enable_streaming_engine, :bool, 15
      optional :flexrs_goal, :enum, 16, "google.dataflow.v1beta3.FlexResourceSchedulingGoal"
      optional :staging_location, :string, 17
      optional :sdk_container_image, :string, 18
      optional :disk_size_gb, :int32, 20
      optional :autoscaling_algorithm, :enum, 21, "google.dataflow.v1beta3.AutoscalingAlgorithm"
      optional :dump_heap_on_oom, :bool, 22
      optional :save_heap_dumps_to_gcs_path, :string, 23
      optional :launcher_machine_type, :string, 24
    end
    add_message "google.dataflow.v1beta3.LaunchFlexTemplateRequest" do
      optional :project_id, :string, 1
      optional :launch_parameter, :message, 2, "google.dataflow.v1beta3.LaunchFlexTemplateParameter"
      optional :location, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.dataflow.v1beta3.RuntimeEnvironment" do
      optional :num_workers, :int32, 11
      optional :max_workers, :int32, 1
      optional :zone, :string, 2
      optional :service_account_email, :string, 3
      optional :temp_location, :string, 4
      optional :bypass_temp_dir_validation, :bool, 5
      optional :machine_type, :string, 6
      repeated :additional_experiments, :string, 7
      optional :network, :string, 8
      optional :subnetwork, :string, 9
      map :additional_user_labels, :string, :string, 10
      optional :kms_key_name, :string, 12
      optional :ip_configuration, :enum, 14, "google.dataflow.v1beta3.WorkerIPAddressConfiguration"
      optional :worker_region, :string, 15
      optional :worker_zone, :string, 16
      optional :enable_streaming_engine, :bool, 17
    end
    add_message "google.dataflow.v1beta3.ParameterMetadata" do
      optional :name, :string, 1
      optional :label, :string, 2
      optional :help_text, :string, 3
      optional :is_optional, :bool, 4
      repeated :regexes, :string, 5
      optional :param_type, :enum, 6, "google.dataflow.v1beta3.ParameterType"
      map :custom_metadata, :string, :string, 7
    end
    add_message "google.dataflow.v1beta3.TemplateMetadata" do
      optional :name, :string, 1
      optional :description, :string, 2
      repeated :parameters, :message, 3, "google.dataflow.v1beta3.ParameterMetadata"
    end
    add_message "google.dataflow.v1beta3.SDKInfo" do
      optional :language, :enum, 1, "google.dataflow.v1beta3.SDKInfo.Language"
      optional :version, :string, 2
    end
    add_enum "google.dataflow.v1beta3.SDKInfo.Language" do
      value :UNKNOWN, 0
      value :JAVA, 1
      value :PYTHON, 2
    end
    add_message "google.dataflow.v1beta3.RuntimeMetadata" do
      optional :sdk_info, :message, 1, "google.dataflow.v1beta3.SDKInfo"
      repeated :parameters, :message, 2, "google.dataflow.v1beta3.ParameterMetadata"
    end
    add_message "google.dataflow.v1beta3.CreateJobFromTemplateRequest" do
      optional :project_id, :string, 1
      optional :job_name, :string, 4
      map :parameters, :string, :string, 3
      optional :environment, :message, 5, "google.dataflow.v1beta3.RuntimeEnvironment"
      optional :location, :string, 6
      oneof :template do
        optional :gcs_path, :string, 2
      end
    end
    add_message "google.dataflow.v1beta3.GetTemplateRequest" do
      optional :project_id, :string, 1
      optional :view, :enum, 3, "google.dataflow.v1beta3.GetTemplateRequest.TemplateView"
      optional :location, :string, 4
      oneof :template do
        optional :gcs_path, :string, 2
      end
    end
    add_enum "google.dataflow.v1beta3.GetTemplateRequest.TemplateView" do
      value :METADATA_ONLY, 0
    end
    add_message "google.dataflow.v1beta3.GetTemplateResponse" do
      optional :status, :message, 1, "google.rpc.Status"
      optional :metadata, :message, 2, "google.dataflow.v1beta3.TemplateMetadata"
      optional :template_type, :enum, 3, "google.dataflow.v1beta3.GetTemplateResponse.TemplateType"
      optional :runtime_metadata, :message, 4, "google.dataflow.v1beta3.RuntimeMetadata"
    end
    add_enum "google.dataflow.v1beta3.GetTemplateResponse.TemplateType" do
      value :UNKNOWN, 0
      value :LEGACY, 1
      value :FLEX, 2
    end
    add_message "google.dataflow.v1beta3.LaunchTemplateParameters" do
      optional :job_name, :string, 1
      map :parameters, :string, :string, 2
      optional :environment, :message, 3, "google.dataflow.v1beta3.RuntimeEnvironment"
      optional :update, :bool, 4
      map :transform_name_mapping, :string, :string, 5
    end
    add_message "google.dataflow.v1beta3.LaunchTemplateRequest" do
      optional :project_id, :string, 1
      optional :validate_only, :bool, 2
      optional :launch_parameters, :message, 4, "google.dataflow.v1beta3.LaunchTemplateParameters"
      optional :location, :string, 5
      oneof :template do
        optional :gcs_path, :string, 3
        optional :dynamic_template, :message, 6, "google.dataflow.v1beta3.DynamicTemplateLaunchParams"
      end
    end
    add_message "google.dataflow.v1beta3.LaunchTemplateResponse" do
      optional :job, :message, 1, "google.dataflow.v1beta3.Job"
    end
    add_message "google.dataflow.v1beta3.InvalidTemplateParameters" do
      repeated :parameter_violations, :message, 1, "google.dataflow.v1beta3.InvalidTemplateParameters.ParameterViolation"
    end
    add_message "google.dataflow.v1beta3.InvalidTemplateParameters.ParameterViolation" do
      optional :parameter, :string, 1
      optional :description, :string, 2
    end
    add_message "google.dataflow.v1beta3.DynamicTemplateLaunchParams" do
      optional :gcs_path, :string, 1
      optional :staging_location, :string, 2
    end
    add_enum "google.dataflow.v1beta3.ParameterType" do
      value :DEFAULT, 0
      value :TEXT, 1
      value :GCS_READ_BUCKET, 2
      value :GCS_WRITE_BUCKET, 3
      value :GCS_READ_FILE, 4
      value :GCS_WRITE_FILE, 5
      value :GCS_READ_FOLDER, 6
      value :GCS_WRITE_FOLDER, 7
      value :PUBSUB_TOPIC, 8
      value :PUBSUB_SUBSCRIPTION, 9
    end
  end
end

module Google
  module Cloud
    module Dataflow
      module V1beta3
        LaunchFlexTemplateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.LaunchFlexTemplateResponse").msgclass
        ContainerSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ContainerSpec").msgclass
        LaunchFlexTemplateParameter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.LaunchFlexTemplateParameter").msgclass
        FlexTemplateRuntimeEnvironment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.FlexTemplateRuntimeEnvironment").msgclass
        LaunchFlexTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.LaunchFlexTemplateRequest").msgclass
        RuntimeEnvironment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.RuntimeEnvironment").msgclass
        ParameterMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ParameterMetadata").msgclass
        TemplateMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.TemplateMetadata").msgclass
        SDKInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.SDKInfo").msgclass
        SDKInfo::Language = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.SDKInfo.Language").enummodule
        RuntimeMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.RuntimeMetadata").msgclass
        CreateJobFromTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.CreateJobFromTemplateRequest").msgclass
        GetTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetTemplateRequest").msgclass
        GetTemplateRequest::TemplateView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetTemplateRequest.TemplateView").enummodule
        GetTemplateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetTemplateResponse").msgclass
        GetTemplateResponse::TemplateType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.GetTemplateResponse.TemplateType").enummodule
        LaunchTemplateParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.LaunchTemplateParameters").msgclass
        LaunchTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.LaunchTemplateRequest").msgclass
        LaunchTemplateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.LaunchTemplateResponse").msgclass
        InvalidTemplateParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.InvalidTemplateParameters").msgclass
        InvalidTemplateParameters::ParameterViolation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.InvalidTemplateParameters.ParameterViolation").msgclass
        DynamicTemplateLaunchParams = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.DynamicTemplateLaunchParams").msgclass
        ParameterType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.dataflow.v1beta3.ParameterType").enummodule
      end
    end
  end
end
