package org.yourcompany.yourproject;

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

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/components")
public class ComponentController {

    @Autowired
    private ComponentRepository componentRepository;

    @Autowired
    private IphoneRepository iphoneRepository;

    @GetMapping("/iphone/{iphoneId}")
    public List<Component> getComponentsByIphone(@PathVariable Integer iphoneId) {
        return componentRepository.findByIphoneId(iphoneId);
    }

    @GetMapping
    public List<Component> getAllComponents() {
        return componentRepository.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Component> getComponentById(@PathVariable Integer id) {
        return componentRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public Component createComponent(@RequestBody Component component) {
        // Make sure the incoming component has iphoneId set (from frontend)
    if (component.getIphone() == null || component.getIphone().getId() == null) {
        throw new RuntimeException("iPhone ID is required");
    }

    // Fetch the Iphone entity from DB
    Iphone iphone = iphoneRepository.findById(component.getIphone().getId())
                      .orElseThrow(() -> new RuntimeException("iPhone not found"));

    // Set the full entity
    component.setIphone(iphone);

        return componentRepository.save(component);
    }

   @PutMapping("/{id}")
public ResponseEntity<Component> updateComponent(
        @PathVariable Integer id,
        @RequestBody Component updatedComponent
) {
    return componentRepository.findById(id)
        .map(existing -> {
            existing.setName(updatedComponent.getName());
            existing.setType(updatedComponent.getType());
            existing.setSpecs(updatedComponent.getSpecs());

            // IMPORTANT: set the associated iphone
            if (updatedComponent.getIphone() != null) {
                existing.setIphone(updatedComponent.getIphone());
            }

            componentRepository.save(existing);
            return ResponseEntity.ok(existing);
        })
        .orElse(ResponseEntity.notFound().build());
}

    @DeleteMapping("/{id}")
    public void deleteComponent(@PathVariable Integer id) {
        componentRepository.deleteById(id);
    }
}
