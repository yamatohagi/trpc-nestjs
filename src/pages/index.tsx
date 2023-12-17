// next
import Head from 'next/head';
import {trpc} from 'src/utils/trpc';

// sections

export default function HomePage() {
  const createTodo = trpc.todoRouter.createOne.useMutation();

  const todoList = trpc.todoRouter.findMany.useQuery({});
  return (
    <>
      <Head>
        <title>Top</title>
      </Head>
      <button
        type="button"
        onClick={() => {
          createTodo.mutateAsync({
            title: 'hello',
          });
        }}
      >
        create
      </button>
      <ul>{todoList.data?.map((todo) => <li key={todo.id}>{todo.title}</li>)}</ul>
    </>
  );
}
