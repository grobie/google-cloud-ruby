# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/trigger.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/eventarc/v1/trigger.proto", :syntax => :proto3) do
    add_message "google.cloud.eventarc.v1.Trigger" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :update_time, :message, 6, "google.protobuf.Timestamp"
      repeated :event_filters, :message, 8, "google.cloud.eventarc.v1.EventFilter"
      optional :service_account, :string, 9
      optional :destination, :message, 10, "google.cloud.eventarc.v1.Destination"
      optional :transport, :message, 11, "google.cloud.eventarc.v1.Transport"
      map :labels, :string, :string, 12
      optional :channel, :string, 13
      optional :etag, :string, 99
    end
    add_message "google.cloud.eventarc.v1.EventFilter" do
      optional :attribute, :string, 1
      optional :value, :string, 2
      optional :operator, :string, 3
    end
    add_message "google.cloud.eventarc.v1.Destination" do
      oneof :descriptor do
        optional :cloud_run, :message, 1, "google.cloud.eventarc.v1.CloudRun"
        optional :cloud_function, :string, 2
        optional :gke, :message, 3, "google.cloud.eventarc.v1.GKE"
      end
    end
    add_message "google.cloud.eventarc.v1.Transport" do
      oneof :intermediary do
        optional :pubsub, :message, 1, "google.cloud.eventarc.v1.Pubsub"
      end
    end
    add_message "google.cloud.eventarc.v1.CloudRun" do
      optional :service, :string, 1
      optional :path, :string, 2
      optional :region, :string, 3
    end
    add_message "google.cloud.eventarc.v1.GKE" do
      optional :cluster, :string, 1
      optional :location, :string, 2
      optional :namespace, :string, 3
      optional :service, :string, 4
      optional :path, :string, 5
    end
    add_message "google.cloud.eventarc.v1.Pubsub" do
      optional :topic, :string, 1
      optional :subscription, :string, 2
    end
  end
end

module Google
  module Cloud
    module Eventarc
      module V1
        Trigger = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Trigger").msgclass
        EventFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.EventFilter").msgclass
        Destination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Destination").msgclass
        Transport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Transport").msgclass
        CloudRun = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CloudRun").msgclass
        GKE = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GKE").msgclass
        Pubsub = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.Pubsub").msgclass
      end
    end
  end
end
