# frozen_string_literal: true

require "sidekiq/cron/job"
require "sidekiq/cron/poller"
require "sidekiq/cron/launcher"

module Sidekiq
  module Cron
    DEFAULT_QUEUE = "default"
    FALLBACK_QUEUE_NAME_DELIMITER = "_"

    # How long to store information about previous enqueues
    REMEMBER_THRESHOLD = 24 * 60 * 60
    LAST_ENQUEUE_TIME_FORMAT = '%Y-%m-%d %H:%M:%S %z'

    TRUTHY_VALUES = Set[true, "true", "t", "yes", "y", "1", 1].freeze

    module Status
      ENABLED = "enabled"
      DISABLED = "disabled"
    end

    module Key
      STATUS = "status"
      NAME = "name"
      CLASS = "class"
      KLASS = "klass"
      CRON = "cron"
      DESCRIPTION = "description"
      LAST_ENQUEUE_TIME = "last_enqueue_time"
      ARGS = "args"
      ARGUMENTS = "arguments"
      MESSAGE = "message"
      QUEUE = "queue"
      ACTIVE_JOB = "active_job"
      CRON_JOBS = "cron_jobs"
      DATE_AS_ARGUMENT = "date_as_argument"
      FETCH_MISSING_ARGS = "fetch_missing_args"
      WRAPPED = "wrapped"

      JID = "jid"
      ENQUEUED = "enqueued"

      JOB_CLASS = "job_class"
      JOB_ID = "job_id"

      QUEUE_NAME = "queue_name"
      QUEUE_NAME_PREFIX = "queue_name_prefix"
      QUEUE_NAME_DELIMITER = "queue_name_delimiter"
    end
  end
end
