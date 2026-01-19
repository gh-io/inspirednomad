import z from 'zod';

let cats: Cat[] = [];

const Cat = z.object({
    id: z.number(),
    name: z.string(),
});
const Cats = z.array(Cat);

...

export type Cat = z.infer<typeof Cat>;
export type Cats = z.infer<typeof Cats>;
