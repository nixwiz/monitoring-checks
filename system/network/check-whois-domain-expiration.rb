---
type: CheckConfig
api_version: core/v2
metadata:
  name: check-whois-domain-expiration
  namespace: default
spec:
  command: check-whois-domain-expiration.rb -d {{ .labels.check_whois_domain_expiration_domain | default "google.com" }}
  interval: 3600
  publish: true
  runtime_assets:
  - sensu-plugins/sensu-plugins-network-checks
  - sensu/sensu-ruby-runtime
  subscriptions:
  - network
  handlers:
  - alert
---
type: Asset
api_version: core/v2
metadata:
  annotations:
    io.sensu.bonsai.api_url: https://bonsai.sensu.io/api/v1/assets/sensu-plugins/sensu-plugins-network-checks
    io.sensu.bonsai.name: sensu-plugins-network-checks
    io.sensu.bonsai.namespace: sensu-plugins
    io.sensu.bonsai.tags: ruby-runtime-2.4.4
    io.sensu.bonsai.tier: Community
    io.sensu.bonsai.url: https://bonsai.sensu.io/assets/sensu-plugins/sensu-plugins-network-checks
    io.sensu.bonsai.version: 5.0.0
  name: sensu-plugins/sensu-plugins-network-checks
  namespace: default
spec:
  builds:
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    headers: null
    sha512: f6b8e7b8134e38c5f3b30e768d75654e1974cab7ce751813d1c7181e7044c0b214440abfa1ce4cbe9739c4d75f3b63b63f93b7e05f9485f143b49ddcbb287129
    url: https://assets.bonsai.sensu.io/a2115474fe198f3895b953f6d90de86607f33722/sensu-plugins-network-checks_5.0.0_debian9_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform_family == 'debian'
    headers: null
    sha512: 9ada8316fe8255d03e20942136dfef9c4ee721aab64377b1ed9aefb96ab627ef6ce21359fe767cb8b3cdf70123a6f5773452dda839c49c17bdcb4ceefeda65e9
    url: https://assets.bonsai.sensu.io/a2115474fe198f3895b953f6d90de86607f33722/sensu-plugins-network-checks_5.0.0_debian_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform_family == 'rhel'
    - entity.system.platform_version.split('.')[0] == '7'
    headers: null
    sha512: f0a229918245d2156fcc34e272cb351d09f3d7ee79057cccaa88121d837723951c816593104ff959528b0dec7f18901b6735f7b7cf765ddcce85c6fdbb559378
    url: https://assets.bonsai.sensu.io/a2115474fe198f3895b953f6d90de86607f33722/sensu-plugins-network-checks_5.0.0_centos7_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform_family == 'rhel'
    - entity.system.platform_version.split('.')[0] == '6'
    headers: null
    sha512: 8f1f370ac6e5ffaeee520df99077d7fd8cce3a76b1dac8bf0951914604a3e61d62978e64ee1da21e44b45c1be0864eacc42e978ae948092d87c64ce19165efdc
    url: https://assets.bonsai.sensu.io/a2115474fe198f3895b953f6d90de86607f33722/sensu-plugins-network-checks_5.0.0_centos6_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform == 'alpine'
    headers: null
    sha512: 574b9660e8f570001568ecfda89fa48c3668153860b30f4f4a88cd246c8ab73f59420ebe8911d1a4c87cbcb8b4f6ec2a8b9fc9d044486f19e66739213dbac8bf
    url: https://assets.bonsai.sensu.io/a2115474fe198f3895b953f6d90de86607f33722/sensu-plugins-network-checks_5.0.0_alpine3.8_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform == 'alpine'
    - entity.system.platform_version.split('.')[0] == '3'
    headers: null
    sha512: 0844b7ca3523626f1293c6a55817092d528bb39b5f7f36aefc756171e0566f4f1ffaa7e0a978727936a5a2e2a071c2457510ae4e86accd795a7670816ecab9e5
    url: https://assets.bonsai.sensu.io/a2115474fe198f3895b953f6d90de86607f33722/sensu-plugins-network-checks_5.0.0_alpine_linux_amd64.tar.gz
  filters: null
  headers: null
---
type: Asset
api_version: core/v2
metadata:
  annotations:
    io.sensu.bonsai.api_url: https://bonsai.sensu.io/api/v1/assets/sensu/sensu-ruby-runtime
    io.sensu.bonsai.name: sensu-ruby-runtime
    io.sensu.bonsai.namespace: sensu
    io.sensu.bonsai.tags: ""
    io.sensu.bonsai.tier: Community
    io.sensu.bonsai.url: https://bonsai.sensu.io/assets/sensu/sensu-ruby-runtime
    io.sensu.bonsai.version: 0.0.10
  name: sensu/sensu-ruby-runtime
  namespace: default
spec:
  builds:
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform_family == 'rhel'
    - parseInt(entity.system.platform_version.split('.')[0]) == 6
    headers: null
    sha512: cbee19124b7007342ce37ff9dfd4a1dde03beb1e87e61ca2aef606a7ad3c9bd0bba4e53873c07afa5ac46b0861967a9224511b4504dadb1a5e8fb687e9495304
    url: https://assets.bonsai.sensu.io/5123017d3dadf2067fa90fc28275b92e9b586885/sensu-ruby-runtime_0.0.10_ruby-2.4.4_centos6_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform_family == 'debian'
    headers: null
    sha512: a28952fd93fc63db1f8988c7bc40b0ad815eb9f35ef7317d6caf5d77ecfbfd824a9db54184400aa0c81c29b34cb48c7e8c6e3f17891aaf84cafa3c134266a61a
    url: https://assets.bonsai.sensu.io/5123017d3dadf2067fa90fc28275b92e9b586885/sensu-ruby-runtime_0.0.10_ruby-2.4.4_debian_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform_family == 'rhel'
    - parseInt(entity.system.platform_version.split('.')[0]) > 6
    headers: null
    sha512: 338b88b568a3213fa234640da2e037d1487fc3c639bc62340f2fb71eac8af9a90566cffc768d15035406ac5c049350006d73f3a07ae15f9528e1c6a9af2944cb
    url: https://assets.bonsai.sensu.io/5123017d3dadf2067fa90fc28275b92e9b586885/sensu-ruby-runtime_0.0.10_ruby-2.4.4_centos_linux_amd64.tar.gz
  - filters:
    - entity.system.os == 'linux'
    - entity.system.arch == 'amd64'
    - entity.system.platform == 'alpine'
    - entity.system.platform_version.split('.')[0] == '3'
    headers: null
    sha512: 8d768d1fba545898a8d09dca603457eb0018ec6829bc5f609a1ea51a2be0c4b2d13e1aa46139ecbb04873449e4c76f463f0bdfbaf2107caf37ab1c8db87d5250
    url: https://assets.bonsai.sensu.io/5123017d3dadf2067fa90fc28275b92e9b586885/sensu-ruby-runtime_0.0.10_ruby-2.4.4_alpine_linux_amd64.tar.gz
  filters: null
  headers: null
