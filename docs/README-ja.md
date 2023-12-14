<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
![GitHub release (latest SemVer)][release-shield]![GitHub License][license-shield]

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
    最新版のバックアップを管理するバッチ
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

- 最初の状態
![first state](/docs/assets/0000-first-state.png)

- "manage-latest-backup.bat"を実行
![after exec once](/docs/assets/0001-exec-fisrt.png)
 - latest,oldフォルダの中身
![inside of latast and latest](/docs/assets/0002-result1.png)

- "manage-latest-backup.bat" 再度実行
  - 何もしない
![after exec twice](/docs/assets/0002-result1.png)

- readme.mdになにか変更を加える

- "manage-latest-backup.bat" をさらにもう一度実行
  - 最新版のバックアップを作る
  - 古くなったバックアップがoldに送られる
![after exec with changes](/docs/assets/0004-result3.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Installation

"manage-latest-backup.bat" をバックアップ管理したいフォルダにコピーする

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Usage

1. 同じフォルダにファイルを作る
2. "manage-latest-backup.bat"を実行する
3. 2つのフォルダが作られる
   1. latest
      - 最新版のファイルが接尾辞をつけてコピーされる
   2. old
      - 古くなったバックアップが保存される
4. バックアップを接尾辞とともに作成
   1. 接尾辞は日付＋アルファベット1文字
   2. 例. `20231214a`
   3. 同じ日のバックアップはアルファベットが次の文字になる

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

貢献はウェルカム

より良くできる提案があればフォーク→コミット→プルリクエストと作成してくれると助かる。"enhancement"タグを付けてIssueを作ってくれてもいい.

リポジトリにスターをつけて行ってくれるとたいへん助かる。

### How to contributing

貢献の具体的なやり方

1. フォークする
2. ブランチを作る (`git checkout -b AmazingFeature`)
3. コミットする (`git commit -m 'Add some AmazingFeature'`)
4. プッシュする (`git push origin AmazingFeature`)
5. プルリクエストを作る

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

役立ったらコーヒーを買ってくれると嬉しい

- [https://www.paypal.me/s6tanaka/][Paypal-url]
- [https://www.buymeacoffee.com/s6tanaka][BuyMeACoffee-url]

[![Paypal][Paypal-shield]][Paypal-url][![BuyMeACoffee][BuyMeACoffee-sheild]][BuyMeACoffee-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[release-shield]:https://img.shields.io/github/v/release/Shumpei-Tanaka/manage-latest-backup-batch?style=flat-squere&sort=semver
[license-shield]:https://img.shields.io/github/license/Shumpei-Tanaka/manage-latest-backup-batch?flat-squere

[issues-shield]: https://img.shields.io/github/issues/Shumpei-Tanaka/manage-latest-backup-batch.svg?style=flat-squere
[issues-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/issues

[contributors-shield]: https://img.shields.io/github/contributors/Shumpei-Tanaka/manage-latest-backup-batch.svg?style=flat-squere
[contributors-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Shumpei-Tanaka/manage-latest-backup-batch.svg?style=flat-squere
[forks-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/network/members
[stars-shield]: https://img.shields.io/github/stars/Shumpei-Tanaka/manage-latest-backup-batch.svg?style=flat-squere
[stars-url]: https://github.com/Shumpei-Tanaka/manage-latest-backup-batch/stargazers


[Paypal-shield]:https://img.shields.io/badge/paypal.me-s6tanaka-white?style=flat-squere&logo=paypal
[Paypal-url]:https://paypal.me/s6tanaka
[BuyMeACoffee-sheild]:https://img.shields.io/badge/buy_me_a_coffee-s6tanaka-white?style=flat-squere&logo=buymeacoffee&logocolor=#FFDD00
[BuyMeACoffee-url]:https://www.buymeacoffee.com/s6tanaka