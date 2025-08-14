package org.yourcompany.yourproject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
// this is the controller class for Iphone
@RestController
@RequestMapping("/iphones")
public class IphoneController {

    @Autowired
    private IphoneRepository iphoneRepository;

    @GetMapping
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
}

