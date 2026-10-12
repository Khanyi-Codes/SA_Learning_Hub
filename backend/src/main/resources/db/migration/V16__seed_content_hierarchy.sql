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

INSERT INTO subject (name, description,grade_id)
VALUES
    ('Mathematics', 'Develops numerical skills, algebra, geometry, measurement, data handling and problem-solving.'),
    ('English', 'Develops listening, speaking, reading, writing, comprehension and language skills.'),
    ('Afrikaans', 'Develops communication, reading, writing and comprehension skills in Afrikaans.'),
    ('isiZulu', 'Develops listening, speaking, reading and writing skills in isiZulu.'),
    ('Sepedi', 'Develops communication, comprehension and language skills in Sepedi.'),
    ('Life Orientation', 'Focuses on personal development, health, citizenship, physical education and career guidance.'),
    ('Natural Sciences', 'Explores life and living, matter and materials, energy, forces and the natural environment.'),
    ('Social Sciences', 'Covers history, geography, societies, environments and human activities.'),
    ('Technology', 'Develops design skills, problem-solving and the practical application of technological knowledge.'),
    ('Economic and Management Sciences', 'Introduces financial literacy, entrepreneurship, economics and business management.'),
    ('Creative Arts', 'Develops creativity and artistic skills through visual arts, music, dance and drama.'),
    ('Life Sciences', 'Studies living organisms, biological processes, genetics, evolution and ecosystems.'),
    ('Physical Sciences', 'Covers physics and chemistry, including matter, energy, forces, reactions and scientific investigation.'),
    ('Geography', 'Studies physical and human environments, climate, resources, maps and spatial patterns.'),
    ('History', 'Examines past events, societies, historical sources and their influence on the present.'),
    ('Accounting', 'Develops financial recording, reporting, analysis and accounting skills.'),
    ('Business Studies', 'Covers business environments, entrepreneurship, management and business operations.'),
    ('Economics', 'Studies markets, economic systems, resource allocation and economic development.'),
    ('Information Technology', 'Develops computer programming, information systems and problem-solving skills.'),
    ('Computer Applications Technology', 'Develops practical computer skills for information processing, communication and productivity.'),
    ('Tourism', 'Covers travel, tourism operations, destinations and the tourism industry.'),
    ('Agricultural Sciences', 'Studies agricultural production, soil science, plant and animal production and farm management.'),
    ('Engineering Graphics and Design', 'Develops technical drawing, design communication and engineering drawing skills.'),
    ('Dramatic Arts', 'Develops acting, performance, theatre appreciation and dramatic expression.'),
    ('Visual Arts', 'Develops artistic techniques, visual literacy, creative expression and art appreciation.'),
    ('Music', 'Develops musical performance, theory, composition and appreciation.'),
    ('Dance Studies', 'Develops dance technique, choreography, performance and dance appreciation.'),
    ('Consumer Studies', 'Covers consumer rights, food, nutrition, clothing and household resource management.'),
    ('Hospitality Studies', 'Introduces food preparation, hospitality services, hygiene and industry practices.'),
    ('Agricultural Technology', 'Focuses on agricultural tools, machinery, systems and practical technology.'),
    (' isiXhosa', 'Develops listening, speaking, reading and writing skills in isiXhosa.');




