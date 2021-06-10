## Cinema Application. Test task for iMDb API


### Current custom gems(libraries) environment:

1. gem [dotenv-rails](https://github.com/bkeepers/dotenv)
   
    The most suitable gem to define application instance env.
   
    Format .env is universal for all languages, if compare for example with [figaro](https://github.com/laserlemon/figaro)

2. gem [money-rails](https://github.com/RubyMoney/money-rails)
    
    This gem to handle currency fields. Can solve any future problems with currencies.
   
    It's possible to convert money field to any currency via API for example: EuCentralBank
   
    Default currency: USD
   
3. gem [faraday](https://github.com/lostisland/faraday)

    This gem to handle any external API calls. On this project we can handle OMDB API.

    I think this is most supported and flexible library for API external calls
   
4. gem [faraday_middleware](https://github.com/lostisland/faraday_middleware)

    This is extension for faraday where we can describe 
    
    with which content-type for example we want to handle API calls.
   
5. gem [devise](https://github.com/heartcombo/devise)

    The most popular gem for Authorizations. Has a lot of perfect modules out of box, 
   
    like :confirmable, :lockable, :trackable, etc... In general save a lot of development time
   
6. gem [devise-jwt](https://github.com/waiting-for-dev/devise-jwt)

    Perfect extension for Devise to have JWT Auth strategies. I used JTIMatcher strategy for revocation of tokens.
   
7. gem [pundit](https://github.com/varvet/pundit)

    The most popular library with object oriented design. 
    
    From my point of view becomes more popular than for example: [cancancan](https://github.com/CanCanCommunity/cancancan)
   
    because simpler, more customizable and controllable and faster
   
8. gem [jsonapi-serializer](https://github.com/jsonapi-serializer/jsonapi-serializer)

   The fastest [JSON:API](https://jsonapi.org/) serializer for Ruby Objects.

9. gem [kaminari](https://github.com/kaminari/kaminari)
   
   The best way to paginate collections in application.
   