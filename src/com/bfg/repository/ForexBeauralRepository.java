package com.bfg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bfg.domain.ForexBeaural;

public interface ForexBeauralRepository extends JpaRepository<ForexBeaural, Integer> {
	ForexBeaural findById(int id);
	ForexBeaural findByName(String name);
	ForexBeaural findByEmail(String email);
}
