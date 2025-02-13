# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/stitch_details.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/video/stitcher/v1/stitch_details.proto", :syntax => :proto3) do
    add_message "google.cloud.video.stitcher.v1.VodStitchDetail" do
      optional :name, :string, 1
      repeated :ad_stitch_details, :message, 3, "google.cloud.video.stitcher.v1.AdStitchDetail"
    end
    add_message "google.cloud.video.stitcher.v1.AdStitchDetail" do
      optional :ad_break_id, :string, 1
      optional :ad_id, :string, 2
      optional :ad_time_offset, :message, 3, "google.protobuf.Duration"
      optional :skip_reason, :string, 4
      map :media, :string, :message, 5, "google.protobuf.Value"
    end
  end
end

module Google
  module Cloud
    module Video
      module Stitcher
        module V1
          VodStitchDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.VodStitchDetail").msgclass
          AdStitchDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.AdStitchDetail").msgclass
        end
      end
    end
  end
end
