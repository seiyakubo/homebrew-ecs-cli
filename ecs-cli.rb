# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/frames
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class EcsCli < Formula
  desc "Amazon ECS Command Line Interface"
  homepage "https://github.com/aws/amazon-ecs-cli"
  url "https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-darwin-amd64-latest"
  version "0.1.0"
  sha256 "e4abe4dd805de6b39f8b8896671b3d2f0f78522462cec1718dcc8b6b6b2231f6"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    bin.install "ecs-cli-darwin-amd64-latest" => "ecs-cli"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ecs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ecs-cli", "--version"
  end
end
