// db.getSiblingDB() 相当于 use Discuss;
db.getSiblingDB('Discuss')
    .createUser({
        user: 'root',
        pwd: 'root',
        roles: ['readWrite']
});