<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Importamos las librerias de Java-Core y JSP-->
<%@ include file="/WEB-INF/Vistas/include.jsp"%>
<%@ include file="/WEB-INF/Vistas/bootstrap.jsp"%>
<%@ include file="/WEB-INF/Vistas/angular.jsp"%>
<%@ include file="/WEB-INF/Vistas/menu.jsp"%>
<%@ include file="/WEB-INF/Vistas/notificaciones.jsp"%>

<title>Papeleria Agustin</title>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


	<div class="contenedor">

		<h3>Contenido de tablas etc</h3>
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/home/hernan/.m2/repository/ch/qos/logback/logback-classic/1.2.3/logback-classic-1.2.3.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/home/hernan/.m2/repository/org/slf4j/slf4j-log4j12/1.7.5/slf4j-log4j12-1.7.5.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [ch.qos.logback.classic.util.ContextSelectorStaticBinder]

  .   ____          _            __ _ _
 /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
 \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
  '  |____| .__|_| |_|_| |_\__, | / / / /
 =========|_|==============|___/=/_/_/_/
 :: Spring Boot ::        (v2.2.5.RELEASE)

2020-06-04 01:08:08.895  INFO 11161 --- [  restartedMain] c.p.agustin.PapeleriaApplication         : Starting PapeleriaApplication on nano with PID 11161 (started by hernan in /home/hernan/Workspace STS Spring/Papeleria)
2020-06-04 01:08:08.934  INFO 11161 --- [  restartedMain] c.p.agustin.PapeleriaApplication         : No active profile set, falling back to default profiles: default
2020-06-04 01:08:09.085  INFO 11161 --- [  restartedMain] o.s.b.devtools.restart.ChangeableUrls    : The Class-Path manifest attribute in /home/hernan/.m2/repository/org/glassfish/jaxb/jaxb-runtime/2.3.2/jaxb-runtime-2.3.2.jar referenced one or more files that do not exist: file:/home/hernan/.m2/repository/org/glassfish/jaxb/jaxb-runtime/2.3.2/jakarta.xml.bind-api-2.3.2.jar,file:/home/hernan/.m2/repository/org/glassfish/jaxb/jaxb-runtime/2.3.2/txw2-2.3.2.jar,file:/home/hernan/.m2/repository/org/glassfish/jaxb/jaxb-runtime/2.3.2/istack-commons-runtime-3.0.8.jar,file:/home/hernan/.m2/repository/org/glassfish/jaxb/jaxb-runtime/2.3.2/stax-ex-1.8.1.jar,file:/home/hernan/.m2/repository/org/glassfish/jaxb/jaxb-runtime/2.3.2/FastInfoset-1.2.16.jar,file:/home/hernan/.m2/repository/org/glassfish/jaxb/jaxb-runtime/2.3.2/jakarta.activation-api-1.2.1.jar
2020-06-04 01:08:09.086  INFO 11161 --- [  restartedMain] .e.DevToolsPropertyDefaultsPostProcessor : Devtools property defaults active! Set 'spring.devtools.add-properties' to 'false' to disable
2020-06-04 01:08:09.086  INFO 11161 --- [  restartedMain] .e.DevToolsPropertyDefaultsPostProcessor : For additional web related logging consider setting the 'logging.level.web' property to 'DEBUG'
2020-06-04 01:08:10.489  INFO 11161 --- [  restartedMain] .s.d.r.c.RepositoryConfigurationDelegate : Bootstrapping Spring Data JPA repositories in DEFAULT mode.
2020-06-04 01:08:10.622  INFO 11161 --- [  restartedMain] .s.d.r.c.RepositoryConfigurationDelegate : Finished Spring Data repository scanning in 114ms. Found 1 JPA repository interfaces.
2020-06-04 01:08:11.322  INFO 11161 --- [  restartedMain] trationDelegate$BeanPostProcessorChecker : Bean 'org.springframework.ws.config.annotation.DelegatingWsConfiguration' of type [org.springframework.ws.config.annotation.DelegatingWsConfiguration$$EnhancerBySpringCGLIB$$8286cb66] is not eligible for getting processed by all BeanPostProcessors (for example: not eligible for auto-proxying)
2020-06-04 01:08:11.493  INFO 11161 --- [  restartedMain] .w.s.a.s.AnnotationActionEndpointMapping : Supporting [WS-Addressing August 2004, WS-Addressing 1.0]
2020-06-04 01:08:11.997  INFO 11161 --- [  restartedMain] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat initialized with port(s): 8080 (http)
2020-06-04 01:08:12.016  INFO 11161 --- [  restartedMain] o.apache.catalina.core.StandardService   : Starting service [Tomcat]
2020-06-04 01:08:12.017  INFO 11161 --- [  restartedMain] org.apache.catalina.core.StandardEngine  : Starting Servlet engine: [Apache Tomcat/9.0.31]
2020-06-04 01:08:12.994  INFO 11161 --- [  restartedMain] org.apache.jasper.servlet.TldScanner     : At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
2020-06-04 01:08:13.007  INFO 11161 --- [  restartedMain] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring embedded WebApplicationContext
2020-06-04 01:08:13.008  INFO 11161 --- [  restartedMain] o.s.web.context.ContextLoader            : Root WebApplicationContext: initialization completed in 3921 ms
2020-06-04 01:08:13.447  INFO 11161 --- [  restartedMain] o.hibernate.jpa.internal.util.LogHelper  : HHH000204: Processing PersistenceUnitInfo [name: default]
2020-06-04 01:08:13.631  INFO 11161 --- [  restartedMain] org.hibernate.Version                    : HHH000412: Hibernate ORM core version 5.4.12.Final
2020-06-04 01:08:13.942  INFO 11161 --- [  restartedMain] o.hibernate.annotations.common.Version   : HCANN000001: Hibernate Commons Annotations {5.1.0.Final}
2020-06-04 01:08:14.101  INFO 11161 --- [  restartedMain] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Starting...
2020-06-04 01:08:14.335  INFO 11161 --- [  restartedMain] com.zaxxer.hikari.HikariDataSource       : HikariPool-1 - Start completed.
2020-06-04 01:08:14.355  INFO 11161 --- [  restartedMain] org.hibernate.dialect.Dialect            : HHH000400: Using dialect: org.hibernate.dialect.MySQL8Dialect
2020-06-04 01:08:15.418  INFO 11161 --- [  restartedMain] o.h.e.t.j.p.i.JtaPlatformInitiator       : HHH000490: Using JtaPlatform implementation: [org.hibernate.engine.transaction.jta.platform.internal.NoJtaPlatform]
2020-06-04 01:08:15.430  INFO 11161 --- [  restartedMain] j.LocalContainerEntityManagerFactoryBean : Initialized JPA EntityManagerFactory for persistence unit 'default'
2020-06-04 01:08:15.462  INFO 11161 --- [  restartedMain] o.s.b.d.a.OptionalLiveReloadServer       : LiveReload server is running on port 35729
2020-06-04 01:08:15.975  WARN 11161 --- [  restartedMain] JpaBaseConfiguration$JpaWebConfiguration : spring.jpa.open-in-view is enabled by default. Therefore, database queries may be performed during view rendering. Explicitly configure spring.jpa.open-in-view to disable this warning
2020-06-04 01:08:16.302  INFO 11161 --- [  restartedMain] o.s.s.concurrent.ThreadPoolTaskExecutor  : Initializing ExecutorService 'applicationTaskExecutor'
2020-06-04 01:08:17.249  INFO 11161 --- [  restartedMain] o.s.b.w.embedded.tomcat.TomcatWebServer  : Tomcat started on port(s): 8080 (http) with context path ''
2020-06-04 01:08:17.259  INFO 11161 --- [  restartedMain] c.p.agustin.PapeleriaApplication         : Started PapeleriaApplication in 9.738 seconds (JVM running for 11.79)
2020-06-04 01:08:19.192  INFO 11161 --- [nio-8080-exec-1] o.a.c.c.C.[Tomcat].[localhost].[/]       : Initializing Spring DispatcherServlet 'dispatcherServlet'
2020-06-04 01:08:19.193  INFO 11161 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Initializing Servlet 'dispatcherServlet'
2020-06-04 01:08:19.208  INFO 11161 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : Completed initialization in 15 ms

	</div>

</body>
</html>