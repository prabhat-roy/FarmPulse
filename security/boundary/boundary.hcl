controller {
  name = "controller-1"
  database { url = "postgresql://boundary@postgres-boundary/farmpulse" }
}
worker {
  name = "worker-farmpulse-1"
  controllers = ["controller-1.boundary.farmpulse.internal"]
}
kms "awskms" {
  purpose = "root"
  key_id  = "alias/farmpulse-boundary"
}
