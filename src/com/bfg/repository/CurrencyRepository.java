package com.bfg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bfg.domain.Currency;

public interface CurrencyRepository extends JpaRepository<Currency, Integer>{

}
