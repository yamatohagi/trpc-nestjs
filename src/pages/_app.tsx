import Head from 'next/head';

import {AppProps, AppType} from 'next/app';

import {trpc} from 'src/utils/trpc';

import {NextPage} from 'next';

type NextPageWithLayout = NextPage & {
  getLayout?: (page: React.ReactElement) => React.ReactNode;
};

export interface MyAppProps extends AppProps {
  Component: NextPageWithLayout;
}

const MyApp: AppType = (props: any) => {
  const {Component, pageProps} = props;

  return (
    <>
      {/* <Head>
        <meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=0" />
      </Head> */}
      <Component {...pageProps} />
    </>
  );
};

export default trpc.withTRPC(MyApp);
