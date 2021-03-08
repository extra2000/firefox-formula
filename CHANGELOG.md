# Changelog

## [1.1.0](https://github.com/extra2000/firefox-formula/compare/v1.0.1...v1.1.0) (2021-03-08)


### Features

* Add state to build Firefox image ([ab36195](https://github.com/extra2000/firefox-formula/commit/ab3619595946452bda07245d83eec4f99af6c889))
* **pillar:** Make image name configurable ([80e25f6](https://github.com/extra2000/firefox-formula/commit/80e25f6332aefe77433047fc4d25be5fbb616936))
* **submodule:** Add `docker-firefox` repository ([58c7b20](https://github.com/extra2000/firefox-formula/commit/58c7b201432d84dd35d56776505f90ebe1fba4ff))


### Code Refactoring

* **service/running.sls:** Create volume as non-root user ([236f193](https://github.com/extra2000/firefox-formula/commit/236f193d6993c46ada566f5d9ef5b6cb5b779508))

### [1.0.1](https://github.com/extra2000/firefox-formula/compare/v1.0.0...v1.0.1) (2021-01-13)


### Fixes

* Add IP address option for VNC ports binding and using default `127.0.0.1` as the IP for the VNC ports binding ([6459f0e](https://github.com/extra2000/firefox-formula/commit/6459f0ecddcabb80cf0f13e4328f3c27ab64941f))

## 1.0.0 (2021-01-13)


### Features

* Add implementations for `firefox` state ([e5a76b7](https://github.com/extra2000/firefox-formula/commit/e5a76b78fb1a01f628548bced7d46200bdf3efba))


### Continuous Integrations

* Add AppVeyor with `semantic-release` bot ([6992366](https://github.com/extra2000/firefox-formula/commit/6992366404ad06b265bafaf48771f541ed395981))


### Documentations

* **README:** Update `README.md` ([14984ad](https://github.com/extra2000/firefox-formula/commit/14984ad0a1b6819135db279161d896fb1773dcd3))
* Add `pillar.example` ([f94021d](https://github.com/extra2000/firefox-formula/commit/f94021d4cf3e262b8ccf18db8267fb54ff830076))
