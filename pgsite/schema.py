import graphene
import pgsite.graphqlapi.schema

class Mutation(pgsite.graphqlapi.schema.Mutation, graphene.ObjectType):
    pass

class Query(pgsite.graphqlapi.schema.Query, graphene.ObjectType):
    # This class will inherit from multiple Queries
    # as we begin to add more apps to our project
    pass

schema = graphene.Schema(query=Query, mutation=Mutation)