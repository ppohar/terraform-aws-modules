#############################################################################
# DATA SOURCES
#############################################################################

data "aws_caller_identity" "source" {
  provider = aws.source
}

data "aws_caller_identity" "destination" {
  provider = aws.destination
}

data "aws_caller_identity" "peer" {
  provider = aws.peer
}