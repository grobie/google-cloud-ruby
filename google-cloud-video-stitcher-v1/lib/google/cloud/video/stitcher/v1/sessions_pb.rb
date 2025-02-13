# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/sessions.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/video/stitcher/v1/companions_pb'
require 'google/cloud/video/stitcher/v1/events_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/video/stitcher/v1/sessions.proto", :syntax => :proto3) do
    add_message "google.cloud.video.stitcher.v1.VodSession" do
      optional :name, :string, 1
      optional :interstitials, :message, 2, "google.cloud.video.stitcher.v1.Interstitials"
      optional :play_uri, :string, 4
      optional :source_uri, :string, 5
      optional :ad_tag_uri, :string, 6
      map :ad_tag_macro_map, :string, :string, 7
      optional :client_ad_tracking, :bool, 8
      optional :manifest_options, :message, 9, "google.cloud.video.stitcher.v1.ManifestOptions"
    end
    add_message "google.cloud.video.stitcher.v1.Interstitials" do
      repeated :ad_breaks, :message, 1, "google.cloud.video.stitcher.v1.VodSessionAdBreak"
      optional :session_content, :message, 2, "google.cloud.video.stitcher.v1.VodSessionContent"
    end
    add_message "google.cloud.video.stitcher.v1.VodSessionAd" do
      optional :duration, :message, 1, "google.protobuf.Duration"
      optional :companion_ads, :message, 2, "google.cloud.video.stitcher.v1.CompanionAds"
      repeated :activity_events, :message, 3, "google.cloud.video.stitcher.v1.Event"
    end
    add_message "google.cloud.video.stitcher.v1.VodSessionContent" do
      optional :duration, :message, 1, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.stitcher.v1.VodSessionAdBreak" do
      repeated :progress_events, :message, 1, "google.cloud.video.stitcher.v1.ProgressEvent"
      repeated :ads, :message, 2, "google.cloud.video.stitcher.v1.VodSessionAd"
      optional :end_time_offset, :message, 3, "google.protobuf.Duration"
      optional :start_time_offset, :message, 4, "google.protobuf.Duration"
    end
    add_message "google.cloud.video.stitcher.v1.LiveSession" do
      optional :name, :string, 1
      optional :play_uri, :string, 2
      optional :source_uri, :string, 3
      optional :default_ad_tag_id, :string, 4
      map :ad_tag_map, :string, :message, 5, "google.cloud.video.stitcher.v1.AdTag"
      map :ad_tag_macros, :string, :string, 6
      optional :client_ad_tracking, :bool, 7
      optional :default_slate_id, :string, 8
      optional :stitching_policy, :enum, 9, "google.cloud.video.stitcher.v1.LiveSession.StitchingPolicy"
      optional :manifest_options, :message, 10, "google.cloud.video.stitcher.v1.ManifestOptions"
    end
    add_enum "google.cloud.video.stitcher.v1.LiveSession.StitchingPolicy" do
      value :STITCHING_POLICY_UNSPECIFIED, 0
      value :COMPLETE_AD, 1
      value :COMPLETE_POD, 2
      value :CUT_CURRENT, 3
    end
    add_message "google.cloud.video.stitcher.v1.AdTag" do
      optional :uri, :string, 1
    end
    add_message "google.cloud.video.stitcher.v1.ManifestOptions" do
      repeated :include_renditions, :message, 1, "google.cloud.video.stitcher.v1.RenditionFilter"
      optional :bitrate_order, :enum, 2, "google.cloud.video.stitcher.v1.ManifestOptions.OrderPolicy"
    end
    add_enum "google.cloud.video.stitcher.v1.ManifestOptions.OrderPolicy" do
      value :ORDER_POLICY_UNSPECIFIED, 0
      value :ASCENDING, 1
      value :DESCENDING, 2
    end
    add_message "google.cloud.video.stitcher.v1.RenditionFilter" do
      optional :bitrate_bps, :int32, 1
      optional :codecs, :string, 2
    end
  end
end

module Google
  module Cloud
    module Video
      module Stitcher
        module V1
          VodSession = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.VodSession").msgclass
          Interstitials = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.Interstitials").msgclass
          VodSessionAd = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.VodSessionAd").msgclass
          VodSessionContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.VodSessionContent").msgclass
          VodSessionAdBreak = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.VodSessionAdBreak").msgclass
          LiveSession = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.LiveSession").msgclass
          LiveSession::StitchingPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.LiveSession.StitchingPolicy").enummodule
          AdTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.AdTag").msgclass
          ManifestOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.ManifestOptions").msgclass
          ManifestOptions::OrderPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.ManifestOptions.OrderPolicy").enummodule
          RenditionFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.RenditionFilter").msgclass
        end
      end
    end
  end
end
