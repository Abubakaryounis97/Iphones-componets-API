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

@RestController
@RequestMapping("/components")
public class ComponentController {

    @Autowired
    private ComponentRepository componentRepository;

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
        return componentRepository.save(component);
    }

    @PutMapping("/{id}")
    public Component updateComponent(@PathVariable Integer id, @RequestBody Component component) {
        component.setId(id);
        return componentRepository.save(component);
    }

    @DeleteMapping("/{id}")
    public void deleteComponent(@PathVariable Integer id) {
        componentRepository.deleteById(id);
    }
}