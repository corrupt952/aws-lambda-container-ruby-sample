FROM amazon/aws-lambda-ruby:2.7
COPY Gemfile Gemfile.lock $LAMBDA_TASK_ROOT
RUN bundle install --path vendor/bundle
COPY app.rb $LAMBDA_TASK_ROOT
CMD ["app.LambdaFunction::Handler.process"]