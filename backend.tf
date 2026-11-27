terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "3.6-snyk-scan-aisa.tfstate"
    region = "us-east-1"
  }
}
