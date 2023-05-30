package main

import (
	"context"
	"fmt"
	"log"
	"os"

	openshiftApi "github.com/openshift/api/config/v1"
	client "github.com/redhat-appstudio/e2e-tests/pkg/apis/kubernetes"

	vcluster "github.com/redhat-appstudio/e2e-tests/pkg/apis/vcluster"
	"k8s.io/apimachinery/pkg/types"
)

var (
	folder      string = "/tmp/vcluster"
	clustername string = "mycluster"
	targetns    string = "vcluster-ns"
)

func main() {
	var openshiftIngress = &openshiftApi.Ingress{}

	// Create a new k8s client
	kube, err := client.NewAdminKubernetesClient()
	if err != nil {
		log.Println("Unable to create K8s client:")
		log.Fatal(err)
	}

	if err := kube.KubeRest().Get(context.TODO(), types.NamespacedName{Name: "cluster"}, openshiftIngress); err != nil {
		log.Println("Unable to get openshift ingress cluster")
		log.Fatal(err)
	}

	// Create a new vcluster
	vc := vcluster.NewVclusterController(folder, kube)
	myKubeconfig, err := vc.InitializeVCluster(clustername, targetns, openshiftIngress.Spec.Domain)
	if err != nil {
		log.Println("Unable to initialize vcluster:")
		log.Fatal(err)
	}

	// Print kubeconfig to check that it is in place
	file, err := os.Open(myKubeconfig)
	if err != nil {
		log.Println("Something went wrong when trying to read kubeconfig ", myKubeconfig)
		log.Fatal(err)
	}
	fmt.Println(file)
}
