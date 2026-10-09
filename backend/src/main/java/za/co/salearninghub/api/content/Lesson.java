package za.co.salearninghub.api.content;

import jakarta.persistence.*;

@Entity
@Table(name = "lesson")

public class Lesson {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name = "subject_id", nullable= false)
    private Subject subject;

    public Long getId() {
        return id;
    }

    @Column( nullable = false)
    private String title;

    @Column(columnDefinition = "TEXT", nullable =false)
    private String content;

    @Column(name = "display_order", nullable = false)
    private Integer displayOrder;

    public Lesson(){

    }


    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getDisplayOrder() {
        return displayOrder;
    }

    public void setDisplayOrder(Integer displayOrder) {
        this.displayOrder = displayOrder;
    }
}