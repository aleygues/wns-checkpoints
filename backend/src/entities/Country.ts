import { Field, ID, InputType, ObjectType } from "type-graphql";
import { BaseEntity, Column, Entity, PrimaryColumn } from "typeorm";

@ObjectType()
@Entity()
export class Country extends BaseEntity {
  @PrimaryColumn()
  @Field(() => ID)
  code!: string;

  @Column()
  @Field()
  name!: string;

  @Column()
  @Field()
  emoji!: string;
}

@InputType()
export class CreateCountryInput {
  @Field(() => ID)
  code!: string;

  @Field()
  name!: string;

  @Field()
  emoji!: string;
}
