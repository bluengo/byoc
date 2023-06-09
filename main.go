package main

import (
	"context"
	"flag"
	"fmt"
	"io"
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
	help               = flag.Bool("help", false, "Show help")
)

func main() {
	// Parsing arguments
	flag.StringVar(&clustername, "clustername", "mycluster", "The name of the cluster to be created")
	flag.StringVar(&targetns, "targetns", "vcluster-ns", "The name of the namespace where deploy the cluster to")
	flag.StringVar(&folder, "folder", "/tmp/vcluster", "The path where the resultant kubeconfig will be placed")

	flag.Parse()

	if *help {
		flag.Usage()
		os.Exit(0)
	}

	/* === Cluster creation === */
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
	defer file.Close()

	if err != nil {
		log.Println("Something went wrong when trying to open kubeconfig ", myKubeconfig)
		log.Fatal(err)
	}

	data, err := io.ReadAll(file)
	if err != nil {
		log.Printf("Something went wrong when trying to read kubeconfig's %s content", myKubeconfig)
		log.Fatal(err)
	}

	fmt.Printf("\n=== Printing Kubeconfig:\n")
	fmt.Println(string(data))
}
