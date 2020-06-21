const db = require('../data/db-Config');

module.exports = {
    find,
    findById,
    findSteps,
    add,
    addStep,
    update,
    remove
};

function find() { // WORKS
    return db('schemes');
};

function findById(id){ // WORKS
    return db('schemes').where({ id }).first();
};

function findSteps(id){ // WORKS
    return db('steps')
        .join('schemes as s', 's.id', 'steps.scheme_id')
        .select('instructions')
        .where('steps.scheme_id', id)
};

function add(data){ // WORKS
    return db('schemes').insert(data);
};

function addStep(data){ //WORKS required: "information", "step_number", "scheme_id"
    return db('steps').insert(data);
};

function update(data, id){ // SUCCESS BUT RETURNS "1"
    return db('schemes').where({ id }).update(data);
};

function remove(id){ // WORKS
    return db('schemes').where({ id }).del();
};