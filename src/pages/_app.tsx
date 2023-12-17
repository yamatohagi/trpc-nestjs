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
      <Component {...pageProps} />
    </>
  );
};

export default trpc.withTRPC(MyApp);
