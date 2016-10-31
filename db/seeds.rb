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
        password: 'steve'
    },
    {
        first_name: 'laurent',
        last_name: 'clain',
        username: 'l.clain',
        address: 'reunion',
        password: 'laurent'
    },
    {
        first_name: 'samy',
        last_name: 'guelaia',
        username: 's.guelaia',
        address: 'algerie',
        password: 'samy'
    },
    {
        first_name: 'walid',
        last_name: 'bouzebra',
        username: 'w.bouzebra',
        address: 'algerie',
        password: 'walid'
    },
    {
        first_name: 'alexis',
        last_name: 'de carvalho',
        username: 'a.decarvalho',
        address: 'portugal',
        password: 'alexis'
    },
    {
        first_name: 'celeste',
        last_name: 'vividila',
        username: 'c.vividila',
        address: 'congo',
        password: 'celeste'
    },
    ])