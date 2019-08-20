module github.com/rdeusser/kompose

go 1.12

require (
	github.com/Sirupsen/logrus v1.4.2 // indirect
	github.com/docker/cli v0.0.0-20190711175710-5b38d82aa076
	github.com/docker/libcompose v0.4.1-0.20190808081819-b3f9f61f9983
	github.com/fatih/structs v1.1.0
	github.com/fsouza/go-dockerclient v1.4.2
	github.com/ghodss/yaml v1.0.0
	github.com/googleapis/gnostic v0.3.1 // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/joho/godotenv v1.3.0
	github.com/mattn/go-shellwords v1.0.6 // indirect
	github.com/novln/docker-parser v0.0.0-20190306203532-b3f122c6978e
	github.com/pkg/errors v0.8.1
	github.com/sirupsen/logrus v1.4.1
	github.com/spf13/cobra v0.0.5
	github.com/spf13/viper v1.4.0
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.2.2
	k8s.io/api v0.0.0-20190816222004-e3a6b8045b0b
	k8s.io/apimachinery v0.0.0-20190816221834-a9f1d8a9c101
	k8s.io/client-go v11.0.0+incompatible
	k8s.io/klog v0.4.0 // indirect
	k8s.io/kubernetes v1.14.6
	k8s.io/utils v0.0.0-20190809000727-6c36bc71fc4a // indirect
	sigs.k8s.io/yaml v1.1.0 // indirect
)

replace (
	github.com/Sirupsen/logrus => github.com/sirupsen/logrus v1.4.2
	github.com/docker/docker => github.com/moby/moby v0.0.0-20170504205632-89658bed64c2
)

exclude (
	github.com/Sirupsen/logrus v0.0.0
	github.com/Sirupsen/logrus v0.0.0-00010101000000-000000000000
	github.com/Sirupsen/logrus v0.1.0
	github.com/Sirupsen/logrus v0.1.1
	github.com/Sirupsen/logrus v0.10.0
	github.com/Sirupsen/logrus v0.11.0
	github.com/Sirupsen/logrus v0.11.1
	github.com/Sirupsen/logrus v0.11.2
	github.com/Sirupsen/logrus v0.11.3
	github.com/Sirupsen/logrus v0.11.4
	github.com/Sirupsen/logrus v0.11.5
	github.com/Sirupsen/logrus v0.2.0
	github.com/Sirupsen/logrus v0.3.0
	github.com/Sirupsen/logrus v0.4.0
	github.com/Sirupsen/logrus v0.4.1
	github.com/Sirupsen/logrus v0.5.0
	github.com/Sirupsen/logrus v0.5.1
	github.com/Sirupsen/logrus v0.6.0
	github.com/Sirupsen/logrus v0.6.1
	github.com/Sirupsen/logrus v0.6.2
	github.com/Sirupsen/logrus v0.6.3
	github.com/Sirupsen/logrus v0.6.4
	github.com/Sirupsen/logrus v0.6.5
	github.com/Sirupsen/logrus v0.6.6
	github.com/Sirupsen/logrus v0.7.0
	github.com/Sirupsen/logrus v0.7.1
	github.com/Sirupsen/logrus v0.7.2
	github.com/Sirupsen/logrus v0.7.3
	github.com/Sirupsen/logrus v0.8.0
	github.com/Sirupsen/logrus v0.8.1
	github.com/Sirupsen/logrus v0.8.2
	github.com/Sirupsen/logrus v0.8.3
	github.com/Sirupsen/logrus v0.8.4
	github.com/Sirupsen/logrus v0.8.5
	github.com/Sirupsen/logrus v0.8.6
	github.com/Sirupsen/logrus v0.8.7
	github.com/Sirupsen/logrus v0.9.0
	github.com/Sirupsen/logrus v1.0.0
	github.com/Sirupsen/logrus v1.0.1
	github.com/Sirupsen/logrus v1.0.2-0.20170713114250-a3f95b5c4235
	github.com/Sirupsen/logrus v1.0.3
	github.com/Sirupsen/logrus v1.0.4
	github.com/Sirupsen/logrus v1.0.5
	github.com/Sirupsen/logrus v1.0.6
	github.com/Sirupsen/logrus v1.1.0
	github.com/Sirupsen/logrus v1.1.1
	github.com/Sirupsen/logrus v1.2.0
	github.com/Sirupsen/logrus v1.3.0
	github.com/Sirupsen/logrus v1.4.0
	github.com/Sirupsen/logrus v1.4.1
)
