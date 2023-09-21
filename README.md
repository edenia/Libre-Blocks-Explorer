![alt text](https://www.libreblocks.io/images/github-readme-cover.png)

# Libre Blockchain Explorer

Explore transactions, blocks, and valuable data for the Libre Blockchain.

## Getting Started

First, run the development server if necessary to test. This is not suitable for production:

```bash
yarn

yarn dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Running a Production Instance with PM2

Running a Yarn built version of the Libre Blocks Explorer under PM2 is performant and production ready alternative to using docker.

Please follow the process below:

### Install Node.js

`$ curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&sudo apt-get install -y nodejs`

### Install PM2

`$ sudo npm install pm2 -g`

### Install Yarn

`$ sudo npm install --global yarn`

### Configure for your environment

```
$ nano ~/Libre-Blocks-Explorer/.env

NEXT_PUBLIC_LIBRE_API=https://dashboard-api.libre.org
NEXT_PUBLIC_HISTORY_API=https://lb.libre.org
```

### Build and Run Libre Blocks Explorer

```
$ cd ~/Libre-Blocks-Explorer

$ yarn

$ yarn build

$ pm2 start yarn --name "libreblocks" -- next start
```

### To Run Libre Blocks Explorer on a Specific Port

`$ pm2 start yarn --name "libreblocks" -- next start -p 3001`

### PM2 Logs

`$ pm2 logs`

## Feedback

If you have any feedback, please contact us at libreblocks@gmail.com or the telegram https://t.me/libreblocks
