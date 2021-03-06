# Copyright 2014-2016 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require_relative 'retry_activities'

# RetryBlockOptionsRetryWorkflow class defines a workflow for the retry_activity
# recipes. This recipe shows how to set up retry for activities using the
# with_retry method provided by the flow framework.
class RetryBlockOptionsRetryWorkflow
  extend AWS::Flow::Workflows

  workflow :handle_unreliable_activity do
    {
      version: "1.0",
      task_list: "workflow_tasklist",
      execution_start_to_close_timeout: 120,
    }
  end

  # Create an activity client using the activity_client method to schedule
  # activities. 
  activity_client(:client) { { from_class: "RetryActivities" } }

  def handle_unreliable_activity

    retry_options = {
      exponential_retry: {
        maximum_attempts: 5,
        exceptions_to_retry: [ArgumentError],
      }
    }

    # Use the with_retry method provided by flow framework to schedule the
    # activity with the required retry options. The code in the block will be 
    # retried if an exception is thrown with options specified in 
    # 'retry_options'
    AWS::Flow::with_retry(retry_options) do
      client.unreliable_activity_without_retry_options
    end
  end    

end
