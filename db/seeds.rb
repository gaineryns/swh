# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
    {
        first_name: 'steve',
        last_name: 'yongwo',
        username: 'gaineryns',
        address: 'cameroun',
        password: 'steve',
        email: 's.yongwo@email.fr'
    },
    {
        first_name: 'laurent',
        last_name: 'clain',
        username: 'l.clain',
        address: 'reunion',
        password: 'laurent',
        email: 'l.clain@email.fr'
    },
    {
        first_name: 'samy',
        last_name: 'guelaia',
        username: 's.guelaia',
        address: 'algerie',
        password: 'samy',
        email: 's.guelaia@email.fr'
    },
    {
        first_name: 'walid',
        last_name: 'bouzebra',
        username: 'w.bouzebra',
        address: 'algerie',
        password: 'walid',
        email: 'w.bouzebra@email.fr'
    },
    {
        first_name: 'alexis',
        last_name: 'de carvalho',
        username: 'a.decarvalho',
        address: 'portugal',
        password: 'alexis',
        email: 'a.decarvalho@email.fr'
    },
    {
        first_name: 'celeste',
        last_name: 'vividila',
        username: 'c.vividila',
        address: 'congo',
        password: 'celeste',
        email: 'c.vividila@email.fr'
    },
    ])