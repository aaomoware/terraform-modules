module "route53_record_simple" {
  source = "../../route53_record"

  name    = "planet.mars.ufo"
  type    = "A"
  simple  = true
  zone_id = "Z2YMHNEBOV187"
  records = "192.168.1.25"
}

module "route53_record_alias" {
  source = "../../route53_record"

  name       = "planet.earth.steve"
  alias      = true
  zone_id    = "Z2YMHNEBOV187"
  alias_name = "planet.earth.biko"
  alias_zone_id = "Z2YMHNEB49484"
  evaluate_target_health = true
}

module "route53_record_weighted" {
  source = "../../route53_record"

  name      = "planet.mars.ufo"
  type      = "A"
  weight    = 20
  weighted  = true
  zone_id   = "Z2YMHNEBOV187"
  records   = "192.168.1.25"
  set_identifier = "weighted"
}

module "route53_record_geolocation_country" {
  source = "../../route53_record"

  name         = "planet.venus.russia"
  type         = "CNAME"
  weight       = 20
  geo_country  = true
  zone_id      = "Z2YMHNEBOV187"
  records      = "planet.venus.usa"
  set_identifier = "country"
  geolocation  = "VA"
}

module "route53_record_geolocation_continent" {
  source = "../../route53_record"

  name         = "planet.earth.africa"
  type         = "CNAME"
  weight       = 20
  geo_country  = true
  zone_id      = "Z2YMHNEBOV187"
  records      = "planet.mars.asia"
  set_identifier = "continent"
  geolocation = "OC"

}
