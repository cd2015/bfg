package com.bfg.bootstrap;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.bfg.validation.ForexBeauralValidator;


@Configuration
@EnableWebMvc
@ComponentScan({"com.bfg.web", "com.bfg.service"})
@Import({ PersistanceConfig.class})
//@PropertySource(value = {"classpath:/attributes.properties","classpath:/type.properties","classpath:/authorization.properties"})
public class ContextConfig extends WebMvcConfigurerAdapter {
	@Bean
	public InternalResourceViewResolver configureInternalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/jsp/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Bean
    public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource;
        messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setBasename("classpath:/messages");
        messageSource.setUseCodeAsDefaultMessage(true);
        return messageSource;
    }
	
	@Bean
    public static PropertySourcesPlaceholderConfigurer placeHolderConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }
	
	@Bean
	public ForexBeauralValidator forexBeauralValidator(){
		return new ForexBeauralValidator();
	}
    
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("forward:/index");
    }
    

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
	    configurer.enable();
	}
    
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
        //registry.addResourceHandler("/static/**").addResourceLocations("file:"+System.getenv("OPENSHIFT_DATA_DIR")+"/static/");
    }
}
