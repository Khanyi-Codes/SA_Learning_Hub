import org.springframework.data.jpa.repository.JpaRepository;
package za.co.salearninghub.api.content;

@RestController
@RequestMapping("/api/phases")

public class PhaseController {
    private final PhaseRepository phaseRepository;

    public PhaseController(PhaseRepository phaseRepository) {
        this.phaseRepository = phaseRepository;
    }

    @GetMapping
    pubic <List>Phase getAllPhases(){
        return phaseRepository.findAll() ;
    }
}