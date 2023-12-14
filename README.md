<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![GitHub release (latest SemVer)][release-shield]][release-url][![GitHub License][license-shield]][license-url]

[![Issues][issues-shield]][issues-url]

[![Contributors][contributors-shield]][contributors-url][![Forks][forks-shield]][forks-url][![Stargazers][stars-shield]][stars-url]

[![Paypal][Paypal-shield]][Paypal-url][![BuyMeACoffee][BuyMeACoffee-sheild]][BuyMeACoffee-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/Shumpei-Tanaka/manage-latest-backup-batch">
    <img src="/docs/assets/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Manage-latest-backup</h3>

  <p align="center">
    A batch script for manage latest backup.
    <br />
    <a href="https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/issues">Report Bug</a>
    ·
    <a href="https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/issues">Request Feature</a>
  </p>
  <p align="center">
    <a href="/README.md">English</a> •
    <a href="/docs/README-ja.md">日本語 (Japanese)</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
- [Demo](#demo)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
  - [How to contributing](#how-to-contributing)
- [License](#license)
- [Contact](#contact)
- [Say Thank You](#say-thank-you)

## Demo

- first state
  
  ![first state](/docs/assets/0000-first-state.png)

- exec "manage-latest-backup.bat".
  
  ![after exec once](/docs/assets/0001-exec-fisrt.png)

 - inside these.
    
    ![inside of latast and latest](/docs/assets/0002-result1.png)

- exec "manage-latest-backup.bat" again.
  - it works "nothing"
  
  ![after exec twice](/docs/assets/0002-result1.png)

- make any changes to the readme.md.

- exec "manage-latest-backup.bat" again.
  - latest backup is updated.
  - outdate backup is moved to old.
  
  ![after exec with changes](/docs/assets/0004-result3.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Installation

copy "manage-latest-backup.bat" into your directory which has file to manage backup.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

1. make a file in same directory.
2. exec "manage-latest-backup.bat"
3. it makes 2 directries.
   1. latest
      - latest backups are copied with suffix.
   2. old
      - outdated backups are moved in here from latest directory.
4. it makes backup with suffix.
   1. suffix is made from timestamp and 1 alphabets.
   2. eg. `20231214a`
   3. When backup in same day, increment last alphabets.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks!

### How to contributing
1. Fork the Project
2. Create your Feature Branch (`git checkout -b AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## License

The source code is licensed MIT.

See LICENSE for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

- Shumpei-Tanaka
  - s6.tanaka.pub@gmail.com

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Say Thank You

If my works feels you helpful, I would be happy to have your support for me. :)

links are below.

- [https://www.paypal.me/s6tanaka/][Paypal-url]
- [https://www.buymeacoffee.com/s6tanaka][BuyMeACoffee-url]

[![Paypal][Paypal-shield]][Paypal-url][![BuyMeACoffee][BuyMeACoffee-sheild]][BuyMeACoffee-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[release-shield]:https://img.shields.io/github/v/release/Shumpei-Tanaka/Manage-latest-backup-batch?style=flat-squere&sort=semver
[release-url]:https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/releases/latest
[license-shield]:https://img.shields.io/github/license/Shumpei-Tanaka/Manage-latest-backup-batch?flat-squere
[license-url]:/license.md
[issues-shield]: https://img.shields.io/github/issues/Shumpei-Tanaka/manage-latest-backup-batch.svg?style=flat-squere
[issues-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/issues

[contributors-shield]: https://img.shields.io/github/contributors/Shumpei-Tanaka/manage-latest-backup-batch.svg?style=flat-squere
[contributors-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Shumpei-Tanaka/Manage-latest-backup-batch.svg?style=flat-squere
[forks-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/network/members
[stars-shield]: https://img.shields.io/github/stars/Shumpei-Tanaka/Manage-latest-backup-batch.svg?style=flat-squere
[stars-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/stargazers


[Paypal-shield]:https://img.shields.io/badge/paypal.me-s6tanaka-white?style=flat-squere&logo=paypal
[Paypal-url]:https://paypal.me/s6tanaka
[BuyMeACoffee-sheild]:https://img.shields.io/badge/buy_me_a_coffee-s6tanaka-white?style=flat-squere&logo=buymeacoffee&logocolor=#FFDD00
[BuyMeACoffee-url]:https://www.buymeacoffee.com/s6tanaka