import "reflect-metadata";
import { ApolloServer } from "apollo-server";
import { buildSchema } from "type-graphql";
import { DataSource } from "typeorm";
import { Countries } from "./resolvers/Countries";
import { Country } from "./entities/Country";

export const datasource = new DataSource({
  type: "sqlite",
  database: "database.sqlite",
  synchronize: true,
  logging: true,
  entities: [Country],
  subscribers: [],
  migrations: [],
});

async function start() {
  await datasource.initialize();
  console.log("DB connected");

  const schema = await buildSchema({
    resolvers: [Countries],
    validate: { forbidUnknownValues: false },
  });

  const server = new ApolloServer({
    schema,
  });

  // Start the server
  const { url } = await server.listen(3111);
  console.log(`Server is running, GraphQL Playground available at ${url}`);
}

start();
