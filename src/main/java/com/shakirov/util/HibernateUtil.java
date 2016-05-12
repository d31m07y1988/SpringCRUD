package com.shakirov.util;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.List;

import com.shakirov.entity.User;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HibernateUtil {
	
	@Autowired
    private SessionFactory sessionFactory;
		
    public <T> Serializable create(final T entity) {
        return sessionFactory.getCurrentSession().save(entity);        
    }
    
    public <T> T update(final T entity) {
        sessionFactory.getCurrentSession().update(entity);   
        return entity;
    }
    
	public <T> void delete(final T entity) {
		sessionFactory.getCurrentSession().delete(entity);
	}

	public <T> void delete(Serializable id, Class<T> entityClass) {
		T entity = fetchById(id, entityClass);
		delete(entity);
	}

    @SuppressWarnings("unchecked")	
    public <T> List<T> fetchAll(Class<T> entityClass) {        
        return sessionFactory.getCurrentSession().createQuery(" FROM "+entityClass.getName()).list();        
    }

    public <T> List<T> fetchAllPaging(Class<T> entityClass, Integer offset, Integer maxResults) {
        return sessionFactory.getCurrentSession().createCriteria(entityClass)
                .setFirstResult(offset!=null?offset:0)
                .setMaxResults(maxResults!=null?maxResults:10)
                .list();
    }

    public <T> Long count(Class<T> entityClass) {
        return (Long)sessionFactory.getCurrentSession().createCriteria(entityClass)
                .setProjection(Projections.rowCount())
                .uniqueResult();
    }

    @SuppressWarnings("rawtypes")
	public <T> List fetchAll(String query) {        
        return sessionFactory.getCurrentSession().createSQLQuery(query).list();        
    }

    public <T> List<T> fetchAllPaging(String query, Integer offset, Integer maxResults) {
        return sessionFactory.getCurrentSession().createSQLQuery(query)
                .setFirstResult(offset!=null?offset:0)
                .setMaxResults(maxResults!=null?maxResults:10)
                .list();
    }

    public <T> Long count(Class<T> entityClass, String query) {
        Long longNumber = ((BigInteger) sessionFactory.getCurrentSession().createSQLQuery(query).uniqueResult()).longValue();
        return longNumber;
    }
    
    @SuppressWarnings("unchecked")
	public <T> T fetchById(Serializable id, Class<T> entityClass) {
        return (T)sessionFactory.getCurrentSession().get(entityClass, id);
    }
    
    
	
}
