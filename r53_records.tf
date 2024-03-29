// For Cloudfront records only
resource "aws_route53_record" "root" {
  zone_id = var.aws_route53_zone_id
  name    = var.root_domain_name
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.s3_distribution.domain_name
    zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_health_check" "domain_health_check" {
  fqdn              = "fufuvr.com"
  port              = 443
  type              = "HTTPS"
  resource_path     = "/"
  failure_threshold = "5"
  request_interval  = "30"
}
