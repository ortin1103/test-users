package com.nitro.Repository;

import com.nitro.Entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;



public interface RoleRepository extends JpaRepository<Role, Integer> {
    Role findByRole(String role);

}