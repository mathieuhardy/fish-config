function k8s_init
    # Abbreviations
    abbr namespaces "kubectl get namespaces"
    abbr pods "kubectl get pods"
    abbr logs "kubectl logs --follow $K8S_POD"
    abbr shell "kubectl exec -it $K8S_POD -- bash"
    abbr kenv "kubectl exec -it $K8S_POD -- env"
end


