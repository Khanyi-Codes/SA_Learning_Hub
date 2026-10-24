package za.co.salearninghub.api.content;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/phases")

public class PhaseController {
    private final PhaseRepository phaseRepository;

    public PhaseController(PhaseRepository phaseRepository) {
        this.phaseRepository = phaseRepository;
    }

    @GetMapping
    public List<Phase> getAllPhases(){
        return phaseRepository.findAll() ;
    }
}