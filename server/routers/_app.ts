import {z} from 'zod';
import {publicApi, router, t} from '../trpc';

const todoFindManyInput = z.object({
  // userId: z.string().optional().nullable(),
});
const todoCreateOneInput = z.object({
  title: z.string(),
});

export const appRouter = router({
  todo: t.router({
    findMany: publicApi.input(todoFindManyInput).query(async ({ctx, input}) => {
      const todo = await ctx.prisma.todo.findMany({});
      return todo;
    }),
    createOne: publicApi.input(todoCreateOneInput).mutation(async ({ctx, input}) => {
      const todo = await ctx.prisma.todo.create({
        data: {
          title: input.title,
        },
      });
      return todo;
    }),
  }),
});
