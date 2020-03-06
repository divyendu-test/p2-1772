# Introduction

To reproduce:

1. Migrate the `schema.sql` file on to a database and introspect it
1. `yarn`
1. `yarn prisma2 generate` (optional)
1. `node index.js`

Error observed:

`PANIC: internal error: entered unreachable code`

Full error:

```
divyendusingh [p2-unreachable]$ node index.js
(node:12020) UnhandledPromiseRejectionWarning: Error:
Invalid `const data = await prisma.ahoy_events.create()` invocation in
/Users/divyendusingh/Documents/prisma/p2-unreachable/index.js:6:41

  2
  3 const prisma = new PrismaClient()
  4
  5 async function main() {
→ 6   const data = await prisma.ahoy_events.create(

PANIC: internal error: entered unreachable code
    at PrismaClientFetcher.request (/Users/divyendusingh/Documents/prisma/p2-unreachable/node_modules/@prisma/client/runtime/index.js:1:46729)
    at processTicksAndRejections (internal/process/task_queues.js:85:5)
(node:12020) UnhandledPromiseRejectionWarning: Unhandled promise rejection. This error originated either by throwing inside of an async function without a catch block, or by rejecting a promise which was not handled with .catch(). (rejection id: 2)
(node:12020) [DEP0018] DeprecationWarning: Unhandled promise rejections are deprecated. In the future, promise rejections that are not handled will terminate the Node.js process with a non-zero exit code.
Error in Prisma Client:
PANIC: internal error: entered unreachable code in
query-engine/core/src/response_ir/mod.rs:281:38

This is a non-recoverable error which probably happens when the Prisma Query Engine has a panic.
Please create an issue in https://github.com/prisma/prisma-client-js describing the last Prisma Client query you called.
```
