import {z} from 'zod';
import {publicProcedure, router, t} from '../trpc';

const todoRouter = t.router({
  findMany: publicProcedure
    .input(
      z.object({
        userId: z.string().optional().nullable(),
      })
    )
    .query(async ({ctx, input}) => {
      const todo = await ctx.prisma.todo.findMany({});
      return todo;
    }),
  createOne: publicProcedure
    .input(
      z.object({
        userId: z.string().optional().nullable(),
        title: z.string(),
      })
    )
    .mutation(async ({ctx, input}) => {
      const todo = await ctx.prisma.todo.create({
        data: {
          title: input.title,
        },
      });
      return todo;
    }),
});

export const appRouter = router({
  todoRouter,
});

// export type definition of API
export type AppRouter = typeof appRouter;
