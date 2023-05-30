module github.com/flacatus/byoc

go 1.19

require (
	github.com/openshift/api v0.0.0-20230213134911-7ba313770556
	github.com/redhat-appstudio/e2e-tests v0.0.0-20230529160326-2a8961bbd276
	k8s.io/apimachinery v0.27.0
)

replace (
	github.com/antlr/antlr4 => github.com/antlr/antlr4 v0.0.0-20211106181442-e4c1a74c66bd
	github.com/apcera/gssapi => github.com/openshift/gssapi v0.0.0-20161010215902-5fb4217df13b
	github.com/redhat-appstudio/managed-gitops/backend-shared => github.com/redhat-appstudio/managed-gitops/backend-shared v0.0.0-20220506042230-3a79f373a001
	k8s.io/api => k8s.io/api v0.25.5
	k8s.io/apimachinery => k8s.io/apimachinery v0.25.5
	k8s.io/client-go => k8s.io/client-go v0.25.5
	sigs.k8s.io/controller-runtime => sigs.k8s.io/controller-runtime v0.13.0
)

require (
	contrib.go.opencensus.io/exporter/ocagent v0.7.1-0.20200907061046-05415f1de66d // indirect
	contrib.go.opencensus.io/exporter/prometheus v0.4.2 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/blendle/zapdriver v1.3.1 // indirect
	github.com/census-instrumentation/opencensus-proto v0.4.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/codeready-toolchain/api v0.0.0-20230502074949-f8c1d80bac96 // indirect
	github.com/codeready-toolchain/toolchain-e2e v0.0.0-20220525131508-60876bfb99d3 // indirect
	github.com/containerd/stargz-snapshotter/estargz v0.13.0 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
	github.com/devfile/api/v2 v2.2.0 // indirect
	github.com/devfile/library v1.2.1-0.20220308191614-f0f7e11b17de // indirect
	github.com/docker/cli v23.0.3+incompatible // indirect
	github.com/docker/distribution v2.8.1+incompatible // indirect
	github.com/docker/docker v23.0.3+incompatible // indirect
	github.com/docker/docker-credential-helpers v0.7.0 // indirect
	github.com/emicklei/go-restful/v3 v3.10.2 // indirect
	github.com/enterprise-contract/enterprise-contract-controller/api v0.0.0-20230327185456-5befd172d558 // indirect
	github.com/evanphx/json-patch/v5 v5.6.0 // indirect
	github.com/fatih/color v1.15.0 // indirect
	github.com/fsnotify/fsnotify v1.6.0 // indirect
	github.com/go-kit/log v0.2.1 // indirect
	github.com/go-logfmt/logfmt v0.5.1 // indirect
	github.com/go-logr/logr v1.2.4 // indirect
	github.com/go-openapi/jsonpointer v0.19.6 // indirect
	github.com/go-openapi/jsonreference v0.20.2 // indirect
	github.com/go-openapi/swag v0.22.3 // indirect
	github.com/gobwas/glob v0.2.3 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da // indirect
	github.com/golang/mock v1.6.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/btree v1.1.2 // indirect
	github.com/google/gnostic v0.6.9 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/google/go-containerregistry v0.13.0 // indirect
	github.com/google/gofuzz v1.2.0 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/gregjones/httpcache v0.0.0-20190611155906-901d90724c79 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.15.0 // indirect
	github.com/hashicorp/errwrap v1.1.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-version v1.6.0 // indirect
	github.com/imdario/mergo v0.3.15 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/klauspost/compress v1.16.4 // indirect
	github.com/mailru/easyjson v0.7.7 // indirect
	github.com/mattn/go-colorable v0.1.13 // indirect
	github.com/mattn/go-isatty v0.0.18 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/mitchellh/go-homedir v1.1.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/munnerz/goautoneg v0.0.0-20191010083416-a7dc8b61c822 // indirect
	github.com/opencontainers/go-digest v1.0.0 // indirect
	github.com/opencontainers/image-spec v1.1.0-rc2.0.20221005185240-3a7f492d3f1b // indirect
	github.com/openshift/client-go v0.0.0-20221019143426-16aed247da5c // indirect
	github.com/peterbourgon/diskv v2.0.1+incompatible // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/prometheus/client_golang v1.15.0 // indirect
	github.com/prometheus/client_model v0.3.0 // indirect
	github.com/prometheus/common v0.42.0 // indirect
	github.com/prometheus/procfs v0.9.0 // indirect
	github.com/prometheus/statsd_exporter v0.23.0 // indirect
	github.com/redhat-appstudio/application-api v0.0.0-20230509152222-ef5c4dcebc94 // indirect
	github.com/redhat-appstudio/build-service v0.0.0-20230113121706-a9f10055dbc4 // indirect
	github.com/redhat-appstudio/integration-service v0.0.0-20230427084439-306b4611389b // indirect
	github.com/redhat-appstudio/jvm-build-service v0.0.0-20230125042419-efd0d0342a2c // indirect
	github.com/redhat-appstudio/managed-gitops/backend v0.0.0-20220506042230-3a79f373a001 // indirect
	github.com/redhat-appstudio/managed-gitops/backend-shared v0.0.0 // indirect
	github.com/redhat-appstudio/release-service v0.0.0-20230504094255-035afad2cab8 // indirect
	github.com/redhat-appstudio/service-provider-integration-operator v0.9.1-0.20230412095305-101be612c01e // indirect
	github.com/sirupsen/logrus v1.9.0 // indirect
	github.com/spf13/afero v1.9.5 // indirect
	github.com/spf13/pflag v1.0.6-0.20210604193023-d5e0c0615ace // indirect
	github.com/tektoncd/cli v0.29.1 // indirect
	github.com/tektoncd/pipeline v0.45.0 // indirect
	github.com/vbatts/tar-split v0.11.2 // indirect
	github.com/xeipuuv/gojsonpointer v0.0.0-20190905194746-02993c407bfb // indirect
	github.com/xeipuuv/gojsonreference v0.0.0-20180127040603-bd5ef7bd5415 // indirect
	github.com/xeipuuv/gojsonschema v1.2.0 // indirect
	go.opencensus.io v0.24.0 // indirect
	go.uber.org/atomic v1.10.0 // indirect
	go.uber.org/multierr v1.11.0 // indirect
	go.uber.org/zap v1.24.0 // indirect
	golang.org/x/net v0.9.0 // indirect
	golang.org/x/oauth2 v0.7.0 // indirect
	golang.org/x/sync v0.1.0 // indirect
	golang.org/x/sys v0.7.0 // indirect
	golang.org/x/term v0.7.0 // indirect
	golang.org/x/text v0.9.0 // indirect
	golang.org/x/time v0.3.0 // indirect
	gomodules.xyz/jsonpatch/v2 v2.2.0 // indirect
	google.golang.org/api v0.112.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20230410155749-daa745c078e1 // indirect
	google.golang.org/grpc v1.54.0 // indirect
	google.golang.org/protobuf v1.30.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
	k8s.io/api v0.27.0 // indirect
	k8s.io/apiextensions-apiserver v0.27.0 // indirect
	k8s.io/client-go v1.5.2 // indirect
	k8s.io/component-base v0.27.0 // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/klog/v2 v2.90.1 // indirect
	k8s.io/kube-openapi v0.0.0-20230327201221-f5883ff37f0c // indirect
	k8s.io/utils v0.0.0-20230406110748-d93618cff8a2 // indirect
	knative.dev/pkg v0.0.0-20230125083639-408ad0773f47 // indirect
	sigs.k8s.io/controller-runtime v0.14.6 // indirect
	sigs.k8s.io/json v0.0.0-20221116044647-bc3834ca7abd // indirect
	sigs.k8s.io/structured-merge-diff/v4 v4.2.3 // indirect
	sigs.k8s.io/yaml v1.3.0 // indirect
)
