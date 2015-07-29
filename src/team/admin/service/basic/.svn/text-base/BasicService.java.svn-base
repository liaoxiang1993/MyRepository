package team.admin.service.basic;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 逻辑业务处理的基础实现方法，其中包含了其它逻辑业务处理时，<br>
 * 可能会用到的公共的方法。该接口中声明的所有方法，其包含<br>
 * 的参数都与具体的类无关。原则上，所有的业务实现类都应该继承本类。
 * @author 岳兴
 *
 * @date 2015-7-25 下午2:09:29
 */
@Service
@Transactional
public class BasicService implements IBasicService {
	@Resource
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public Object findById(Class clazz, String id) {
		return this.sessionFactory.getCurrentSession().get(clazz, id);
	}

	@Override
	public List<?> excuteQuery(String hql, Object[] parameters) {
		// 创建Query对象，由这个对象来执行操作。
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		// 如果Query对象需要注入参数，则使用循环将其注入。
		if (parameters != null && parameters.length > 0) {
			for (int i = 0; i < parameters.length; i++) {
				query.setParameter(i, parameters[i]);
			}
		}
		// 通过list()方法得到查询结果。
		return query.list();
	}

	@Override
	public List<?> excuteQueryByPage(String hql, Object[] parameters,
			int pageNow, int pageSize) {
		// 创建Query对象，由这个对象来执行操作。
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		// 如果Query对象需要注入参数，则使用循环将其注入。
		if (parameters != null && parameters.length > 0) {
			for (int i = 0; i < parameters.length; i++) {
				query.setParameter(i, parameters[i]);
			}
		}
		// setFirstResult()指需要的数据是从哪一条开始的
		// setMaxResults()指明需要多少条数据
		// 最后通过list()方法得到结果集，用一个List对象返回
		return query.setFirstResult((pageNow - 1) * pageSize)
				.setMaxResults(pageSize).list();
	}

	@Override
	public void add(Object object) {
		sessionFactory.getCurrentSession().save(object);
	}

	@Override
	public List<?> excuteUpdate(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object uniqueQuery(String hql, Object[] parameters) {
		// 创建Query对象，由这个对象来执行操作。
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		// 如果Query对象需要注入参数，则使用循环将其注入。ֵ
		if (parameters != null && parameters.length > 0) {
			for (int i = 0; i < parameters.length; i++) {
				query.setParameter(i, parameters[i]);
			}
		}
		//返回唯一的结果集，最多只包含一个对象，对象类型为Object
		return query.uniqueResult();
	}

	@Override
	public int queryPageCount(String hql, Object[] parameters, int pageSize) {
		//通过uniqueQuery()方法得到总记录数
		Object object = this.uniqueQuery(hql, parameters);
		//将返回的结果转化为int型
		Integer rowCounr = Integer.parseInt(object.toString());
		//返回总记录数
		return (rowCounr - 1) / pageSize + 1;
	}

	@Override
	public void deleteById(Class clazz, String id) {
		//使用findById()方法返回对象后，再使用delete()方法删除该对象
		this.sessionFactory.getCurrentSession()
				.delete(this.findById(clazz, id));

	}

	@Override
	public void update(Object object) {
		sessionFactory.getCurrentSession().update(object);
	}

	@Override
	public List<?> getAll(String hql) {
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
	}
	
	@Override
	public int getTotalRecord(String entity) {
		String hql="select count(*) from "+entity;
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		int count = ((Long) query.iterate().next()).intValue();
		return count;
	}

}
