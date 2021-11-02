# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/session.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/v2/session_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module Sessions
          # A service used for session interactions.
          #
          # For more information, see the [API interactions
          # guide](https://cloud.google.com/dialogflow/docs/api-overview).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.Sessions'

            # Processes a natural language query and returns structured, actionable data
            # as a result. This method is not idempotent, because it may cause contexts
            # and session entity types to be updated, which in turn might affect
            # results of future queries.
            #
            # If you might use
            # [Agent Assist](https://cloud.google.com/dialogflow/docs/#aa)
            # or other CCAI products now or in the future, consider using
            # [AnalyzeContent][google.cloud.dialogflow.v2.Participants.AnalyzeContent]
            # instead of `DetectIntent`. `AnalyzeContent` has additional
            # functionality for Agent Assist and other CCAI products.
            #
            # Note: Always use agent versions for production traffic.
            # See [Versions and
            # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
            rpc :DetectIntent, ::Google::Cloud::Dialogflow::V2::DetectIntentRequest, ::Google::Cloud::Dialogflow::V2::DetectIntentResponse
            # Processes a natural language query in audio format in a streaming fashion
            # and returns structured, actionable data as a result. This method is only
            # available via the gRPC API (not REST).
            #
            # If you might use
            # [Agent Assist](https://cloud.google.com/dialogflow/docs/#aa)
            # or other CCAI products now or in the future, consider using
            # [StreamingAnalyzeContent][google.cloud.dialogflow.v2.Participants.StreamingAnalyzeContent]
            # instead of `StreamingDetectIntent`. `StreamingAnalyzeContent` has
            # additional functionality for Agent Assist and other CCAI products.
            #
            # Note: Always use agent versions for production traffic.
            # See [Versions and
            # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
            rpc :StreamingDetectIntent, stream(::Google::Cloud::Dialogflow::V2::StreamingDetectIntentRequest), stream(::Google::Cloud::Dialogflow::V2::StreamingDetectIntentResponse)
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
