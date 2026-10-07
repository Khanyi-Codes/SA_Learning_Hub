package za.co.salearninghub.api.content;

import jakarta.persistence.*;

@Entity
@Table(name = "subject")

public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)


}