# firefox-formula

| License | Versioning | Build |
| ------- | ---------- | ----- |
| [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) | [![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release) | [![Build status](https://ci.appveyor.com/api/projects/status/70yckhy4226qbyqi/branch/master?svg=true)](https://ci.appveyor.com/project/nikAizuddin/firefox-formula/branch/master) |

SaltStack Formula for [Firefox](https://www.mozilla.org/en-US/firefox/new/).


## Available states

| States | Descriptions |
| ------ | ------------ |
| `firefox` | Pull Firefox Docker image and start Firefox. |
| `firefox.service.dead` | Stop Firefox. |
