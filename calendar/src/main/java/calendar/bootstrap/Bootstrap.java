package calendar.bootstrap;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import calendar.datainit.DataInitializationBean;

public class Bootstrap implements ApplicationContextAware{
	
	private static final String DEV_MODE = "dev";
	
	private ApplicationContext ctx;
	
	private final String mode;
	
	public Bootstrap(String mode) {
		super();
		this.mode = mode;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		this.ctx = applicationContext;
	}

	public void init() {
		if (DEV_MODE.equals(mode)) {
			if (ctx.containsBean("dataInitBean")){
				ctx.getBean("dataInitBean", DataInitializationBean.class)
					.initData();				
			}
		}
	}
	
	
}
