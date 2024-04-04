
FROM node:latest

# Set arguments as environment variables
ARG NEXT_PUBLIC_LIBRE_API
ARG NEXT_PUBLIC_MAINNET_API
ARG NEXT_PUBLIC_TESTNET_API
ARG NEXT_PUBLIC_PROVIDERBY
ARG NEXT_PUBLIC_PROVIDER_LOGO
ARG NEXT_PUBLIC_PROVIDER_LINK

ENV NEXT_PUBLIC_LIBRE_API=https://dashboard-api.libre.org \
    NEXT_PUBLIC_TESTNET_API=https://testnet.libre.org \
    NEXT_PUBLIC_PROVIDERBY=Edenia \
    NEXT_PUBLIC_PROVIDER_LOGO=/images/edenia-logo.svg \
    NEXT_PUBLIC_PROVIDER_LINK=https://edenia.com/

WORKDIR /app
COPY package.json yarn.lock /app/
COPY public /app/public
COPY src /app/src
RUN yarn install
COPY . /app
CMD ["yarn", "dev"]