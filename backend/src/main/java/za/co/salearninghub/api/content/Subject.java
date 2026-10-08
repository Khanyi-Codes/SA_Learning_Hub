package za.co.salearninghub.api.content;

import jakarta.persistence.*;

@Entity
@Table(name = "subject")

public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(columnDefinition= "TEXT")
    private String description;

    @ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name = "grade_id", nullable= false)
    private Grade grade;

    public Subject() {
    }

    public Long getId() {
        return id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Grade getGrade() {
        return grade;
    }

    public void setGrade(Grade grade) {
        this.grade = grade;
    }
}