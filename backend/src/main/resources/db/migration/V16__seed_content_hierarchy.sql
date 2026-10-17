INSERT INTO phase(  name, display_order )
VALUES ('Foundation', 1),
    ('Intermediate', 2),
     ('Senior', 3),
     ('FET', 4);


INSERT INTO grade( name, display_order, phase_id)
VALUES ('Grade R', 1, (SELECT id FROM phase WHERE name = 'Foundation')),
    ('Grade 1', 2, (SELECT id FROM phase WHERE name = 'Foundation')),
    ('Grade 2', 3, (SELECT id FROM phase WHERE name = 'Foundation')),
    ('Grade 3', 4, (SELECT id FROM phase WHERE name = 'Foundation')),
    ('Grade 4', 5, (SELECT id FROM phase WHERE name = 'Intermediate')),
    ('Grade 5', 6, (SELECT id FROM phase WHERE name = 'Intermediate')),
    ('Grade 6', 7, (SELECT id FROM phase WHERE name = 'Intermediate')),
    ('Grade 7', 8, (SELECT id FROM phase WHERE name = 'Senior')),
    ('Grade 8', 9, (SELECT id FROM phase WHERE name = 'Senior')),
    ('Grade 9', 10, (SELECT id FROM phase WHERE name = 'Senior')),
    ('Grade 10', 11, (SELECT id FROM phase WHERE name = 'FET')),
    ('Grade 11', 12, (SELECT id FROM phase WHERE name = 'FET')),
    ('Grade 12', 13, (SELECT id FROM phase WHERE name = 'FET'));

INSERT INTO subject (name, description, grade_id)
SELECT v.name, v.description, g.id
FROM (VALUES
          ('Mathematics', 'Develops numerical skills, algebra, geometry, measurement, data handling and problem-solving.', 'Grade 4'),
          ('English', 'Develops listening, speaking, reading, writing, comprehension and language skills.', 'Grade 3'),
          ('Natural Sciences', 'Explores life and living, matter and materials, energy, forces and the natural environment.', 'Grade 8'),
          ('Life Sciences', 'Studies living organisms, biological processes, genetics, evolution and ecosystems.', 'Grade 10')
     ) AS v(name, description, grade_name)
         JOIN grade g ON g.name = v.grade_name;


INSERT INTO lesson(  title, content, display_order, subject_id)
SELECT v.title, v.content, v.display_order, s.id
FROM (VALUES ('Addition', 'Learn how to add numbers together', 1),
             ('Subtraction', 'Learn how to subtract numbers from each other', 2),
             ('Multiplication', 'Learn how to subtract numbers from each other and check ansewrs', 3))
    AS v(title, content,display_order)
      JOIN subject s ON s.name = 'Mathematics'
        JOIN grade g on s.grade_id = g.id AND g.name = 'Grade 4';


