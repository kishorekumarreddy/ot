package com.ot.config;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
@ComponentScan(basePackages="com.ot")
@EnableWebMvc
//@PropertySource(value = { "classpath:db-config.properties" })
//@PropertySources({
//    @PropertySource("classpath:db-config.properties")
//    @PropertySource("classpath:db.properties")
//})
public class MvcConfiguration extends WebMvcConfigurerAdapter{
    @Value("${driver_class_name}")
    private String driverClassName;
    
    @Value("${db_url}")
    private String dbUrl;
    
    @Value("${db_uname}")
    private String dbUname;
    
    @Value("${db_password}")
    private String dbPassword;
    
//	@Bean
//	public ViewResolver getViewResolver(){
//		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//		resolver.setPrefix("/WEB-INF/views/");
//		resolver.setSuffix(".jsp");
//		return resolver;
//	}
	
	 /*   tilesConfigurer.setDefinitions(new String[] {"/WEB-INF/views//tilesStudent.xml"});*/  
	
	 /**
     * Configure TilesConfigurer.
     */
    @Bean
    public TilesConfigurer tilesConfigurer(){
        TilesConfigurer tilesConfigurer = new TilesConfigurer();
        tilesConfigurer.setDefinitions(new WebTilesInitializer().tilesInitialzer);
        tilesConfigurer.setCheckRefresh(true);
        return tilesConfigurer;
    }
 
    /**
     * Configure ViewResolvers to deliver preferred views.
     */
    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {
        TilesViewResolver viewResolver = new TilesViewResolver();
        registry.viewResolver(viewResolver);
    }
     
    /**
     * Configure ResourceHandlers to serve static resources like CSS/ Javascript etc...
     */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	/**
	 * Data Source Configuration
	 * @return
	 */
    @Bean
	 public DataSource getDataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(driverClassName);
	    dataSource.setUrl(dbUrl);
	    dataSource.setUsername(dbUname);
	    dataSource.setPassword(dbPassword);
	    
	    return dataSource;
	 }

    @Bean
    public static PropertySourcesPlaceholderConfigurer properties() {
        PropertySourcesPlaceholderConfigurer props = new PropertySourcesPlaceholderConfigurer();
        props.setLocations(new Resource[] {
                new ClassPathResource("../../WEB-INF/config/db-config.properties")
              //  new ClassPathResource("version.properties")
        });
		return props;
    }
    
    
	
}
