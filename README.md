This project contains sample code for the AWS Flow Framework for Ruby.

Prerequisites
=============

The *AWS Flow Framework for Ruby* is required, which can be obtained and
installed using the information here:

-   [https://aws.amazon.com/swf/flow/](https://aws.amazon.com/swf/flow/)

If you already have [Ruby](https://www.ruby-lang.org/) and
[RubyGems](http://rubygems.org/) installed, you can install the
framework by opening a terminal window and typing:

~~~~ {.literal-block}
gem install aws-flow
~~~~

For more information about setting up the AWS Flow Framework for Ruby,
see [Installing the AWS Flow Framework for
Ruby](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/installing.html)
in the *AWS Flow Framework for Ruby Developer Guide*.

Downloading the Sample Code
===========================

You can get the sample code in two easy ways:

-   Clone the project with either HTTPS or SSH authentication.

    HTTPS:

~~~~ {.literal-block}
git clone https://github.com/awslabs/aws-flow-ruby-samples.git
~~~~

    SSH:

~~~~ {.literal-block}
git clone git@github.com:awslabs/aws-flow-ruby-samples.git
~~~~

-   Download the entire repository as a .zip file, using:

    [https://github.com/awslabs/aws-flow-ruby-samples/archive/master.zip](https://github.com/awslabs/aws-flow-ruby-samples/archive/master.zip)

Samples
-------

### FileProcessing

The *FileProcessing* sample demonstrates a media processing use case.
The workflow downloads a file from an Amazon S3 bucket, creates a
`.zip`{.docutils .literal} file and uploads that `.zip`{.docutils
.literal} file back to Amazon S3. The task routing feature in Amazon SWF
is illustrated in this sample.

Code + info: [Samples/FileProcessing](Samples/FileProcessing/)

### CronWithRetry

The *CronWithRetry* sample demonstrates how to run a scheduled task with
`exponential_retry`{.docutils .literal} options. Once the workflow is
complete, `continue_as_new`{.docutils .literal} is used to re-run the
workflow at the next scheduled time.

Code + info: [Samples/CronWithRetry](Samples/CronWithRetry/)

### HelloWorld

The *HelloWorld* sample uses a very simple workflow that calls an
activity to print Hello World. It shows basic usage of the framework,
including implementing activities and workflow coordination logic and
building workers to run the workflow and activities.

Code + info: [Samples/HelloWorld](Samples/HelloWorld/)

### Periodic

The *Periodic* sample periodically executes an activity in a
long-running workflow. The ability to continue executions as new
executions so that an execution can run for very extended periods of
time is demonstrated.

Code + info: [Samples/Periodic](Samples/Periodic/)

### Booking

The *Booking* sample demonstrates a
[synchronization](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/programming-workflow-patterns.html#programming-workflow-patterns-synchronization)
workflow pattern. It waits for two activities to complete: a car
reservation and airline reservation. When both activities complete, it
sends a confirmation. All activities are performed asynchronously.

Code + info: [Samples/Booking](Samples/Booking/)

### Deployment

The *Deployment* sample illustrates the deployment of a set of
application components through a workflow. A YAML configuration file is
used to describe the application stack. The workflow takes this
description as input and simulates the deployment of the components
specified in it.

Code + info: [Samples/Deployment](Samples/Deployment/)

### SplitMerge

The *SplitMerge* sample demonstrates a [parallel
split](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/programming-workflow-patterns.html#programming-workflow-patterns-synchronization)
followed by a [simple
merge](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/programming-workflow-patterns.html#programming-workflow-patterns-simple-merge)
workflow pattern. It spawns a number of worker activities which are then
merged using `wait_for_all`{.docutils .literal}.

Code + info: [Samples/SplitMerge](Samples/SplitMerge/)

### Cron

The *Cron* sample runs an activity periodically based on a cron
expression.

Code + info: [Samples/Cron](Samples/Cron/)

Recipes
-------

### HumanTask

The HumanTask code provides a recipe to *Complete an Activity Task
Manually*.

Code + info: [Recipes/HumanTask](Recipes/HumanTask/)

### ChildWorkflow

The ChildWorkflow code provides a recipe to *start a child workflow
inside a workflow execution*.

Code + info: [Recipes/ChildWorkflow](Recipes/ChildWorkflow/)

### RetryActivity

The RetryActivity recipes show how to:

-   apply a retry policy to *all invocations of an activity*
-   specify a retry policy for an *activity client*, a *block of code*,
    or for a *specific invocation of an activity*
-   retry activities *without jitter*, or with *custom jitter logic*
-   retry activities with *custom retry policies*

Code + info: [Recipes/RetryActivity](Recipes/RetryActivity/)

### HandleError

The HandleError code provides recipes to *respond to exceptions in
asynchronous activities depending on exception type* and to *handle
exceptions in asynchronous activities and perform cleanup*.

Code + info: [Recipes/HandleError](Recipes/HandleError/)

### WaitForSignal

The WaitForSignal code provides a recipe to *wait for an external signal
and take a different code path if the signal is received*.

Code + info: [Recipes/WaitForSignal](Recipes/WaitForSignal/)

### Branch

The Branch code provides a recipe to *execute a dynamically-determined
number of activities concurrently*.

Code + info: [Recipes/Branch](Recipes/Branch/)

### Choice

The Choice recipes show how to use a choice to *execute one of several
activities*, or to *execute multiple activities from a larger group*.

Code + info: [Recipes/Choice](Recipes/Choice/)

### PickFirstBranch

The PickFirstBranch code provides a recipe to *execute multiple
activities concurrently and pick the fastest*.

Code + info: [Recipes/PickFirstBranch](Recipes/PickFirstBranch/)

### ConditionalLoop

The Conditional Loop code provides a recipe to *execute a
dynamically-determined number of activities concurrently*.

Code + info: [Recipes/ConditionalLoop](Recipes/ConditionalLoop/)

For More Information
====================

For more information about the Amazon Simple Workflow service and the
Amazon Flow Framework for Ruby, consult the following resources:

-   [AWS Flow Framework for Ruby Developer
    Guide](http://docs.aws.amazon.com/amazonswf/latest/awsrbflowguide/)
-   [AWS Flow Framework for Ruby API
    Reference](https://docs.aws.amazon.com/amazonswf/latest/awsrbflowapi/)
-   [AWS Flow Framework](http://aws.amazon.com/swf/flow/)
-   [Amazon Simple Workflow Service](http://aws.amazon.com/swf/)
