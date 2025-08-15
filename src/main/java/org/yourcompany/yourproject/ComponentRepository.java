package org.yourcompany.yourproject;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ComponentRepository extends JpaRepository<Component, Integer> {

    List<Component> findByIphoneId(Integer iphoneId);

}
