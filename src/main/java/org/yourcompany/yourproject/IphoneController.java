package org.yourcompany.yourproject;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;

@RestController
@RequestMapping("/iphones")
public class IphoneController {

    private static final String FILE_PATH = "src/main/resources/iphones.json";

    @Autowired
    private IphoneRepository iphoneRepository;
    @Autowired
    private ObjectMapper objectMapper; // Jackson ObjectMapper

    @GetMapping
    @CrossOrigin(origins = "*")
    public List<Iphone> getAllIphones() {
        return iphoneRepository.findAll();
    }

    @PostMapping
    public Iphone createIphone(@RequestBody Iphone iphone) {
        return iphoneRepository.save(iphone);
    }

    @PutMapping("/{id}")
    public Iphone updateIphone(@PathVariable Integer id, @RequestBody Iphone iphone) {
        iphone.setId(id);
        return iphoneRepository.save(iphone);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Iphone> getIphoneById(@PathVariable Integer id) {
        return iphoneRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @DeleteMapping("/{id}")
    public void deleteIphone(@PathVariable Integer id) {
        iphoneRepository.deleteById(id);
    }

    @GetMapping("/dump/json")
    public String dumpIphonesToJson() {
        try {
            List<Iphone> iphones = iphoneRepository.findAll();
            File file = new File(FILE_PATH);
            file.getParentFile().mkdirs(); // create folder if missing
            objectMapper.writerWithDefaultPrettyPrinter().writeValue(file, iphones);
            return "Iphones dumped to JSON file successfully.";
        } catch (IOException e) {
            e.printStackTrace();
            return "Error dumping iPhones to JSON file: " + e.getMessage();
        }
    }

    @GetMapping("/load/json")
    public String loadIphonesFromJson() {
        try {
            File file = new File(FILE_PATH);
            if (!file.exists()) {
                return "JSON file not found at " + FILE_PATH;
            }

            List<Iphone> iphones = objectMapper.readValue(file,
                    objectMapper.getTypeFactory().constructCollectionType(List.class, Iphone.class));

            // link components to parent iPhone
            for (Iphone iphone : iphones) {
                if (iphone.getComponents() != null) {
                    iphone.getComponents().forEach(c -> c.setIphone(iphone));
                }
            }

            iphoneRepository.saveAll(iphones);
            return "Iphones loaded from JSON file successfully.";
        } catch (Exception e) {
            e.printStackTrace();
            return "Error loading iPhones from JSON file: " + e.getMessage();
        }
    }

}
