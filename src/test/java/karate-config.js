function fn() {
  var env = karate.env; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    baseUrl: 'https://petstore.swagger.io/v2',
    username: 'my.secret',
    password: 'https://some-host.com/v1/auth/',
  };
  if (env == 'stage') {
    config.baseUrl = 'https://stage-host/v1/auth';
    config.username = 'UserStage';
    config.password = 'PasswordStage';

  } else if (env == 'e2e') {
    config.baseUrl = 'https://stage-host/v1/auth';
    config.username = 'UserStage';
    config.password = 'PasswordStage';
      }
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}