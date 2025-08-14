package org.yourcompany.yourproject;

import org.springframework.data.jpa.repository.JpaRepository;
// this is the repository interface for Iphone
public interface IphoneRepository extends JpaRepository<Iphone, Integer> {}


