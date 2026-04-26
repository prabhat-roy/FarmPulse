package farmpulse.admission

import future.keywords.if
import future.keywords.in

default allow := false
allow if { count(deny) == 0 }

deny[msg] if {
    input.request.kind.kind in {"Pod","Deployment","StatefulSet","DaemonSet"}
    container := input.request.object.spec.template.spec.containers[_]
    not startswith(container.image, "harbor.farmpulse.internal/")
    msg := sprintf("image %q must be from harbor.farmpulse.internal", [container.image])
}

deny[msg] if {
    input.request.kind.kind == "Pod"
    input.request.object.spec.hostNetwork == true
    msg := "hostNetwork is forbidden"
}
