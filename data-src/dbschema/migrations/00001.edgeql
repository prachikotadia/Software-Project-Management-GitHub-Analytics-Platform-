CREATE MIGRATION m1cwq6dqzakz7nsg3blsar5lwgnygi2sfpt36xrjbdrr4os4shh73q
    ONTO initial
{
  CREATE TYPE default::Issue {
      CREATE PROPERTY body: std::str;
      CREATE PROPERTY creation_date: std::datetime;
      CREATE PROPERTY last_activity_date: std::datetime;
      CREATE PROPERTY status: std::str;
      CREATE REQUIRED PROPERTY title: std::str;
  };
  CREATE TYPE default::Repo {
      CREATE MULTI LINK issues: default::Issue;
      CREATE PROPERTY creation_date: std::datetime;
      CREATE PROPERTY description: std::str;
      CREATE REQUIRED PROPERTY name: std::str;
      CREATE PROPERTY owner: std::str;
  };
  ALTER TYPE default::Issue {
      CREATE REQUIRED LINK repo: default::Repo;
  };
};
