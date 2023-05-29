import { Arg, ID, Mutation, Query, Resolver } from "type-graphql";
import { Country, CreateCountryInput } from "../entities/Country";
import { datasource } from "..";

@Resolver()
export class Countries {
  @Query(() => [Country])
  async countries(): Promise<Country[]> {
    return await datasource.getRepository(Country).find();
  }

  @Query(() => Country, { nullable: true })
  async country(@Arg("code", () => ID) code: string): Promise<Country | null> {
    return await datasource.getRepository(Country).findOneBy({ code });
  }

  @Mutation(() => Country)
  async createCountry(
    @Arg("data", () => CreateCountryInput) data: CreateCountryInput
  ): Promise<Country> {
    const country = new Country();
    Object.assign(country, data);
    country.save();
    return country;
  }
}
