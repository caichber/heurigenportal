// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package calendar.model;

import calendar.model.Heuriger;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Heuriger_Roo_Entity {
    
    declare @type: Heuriger: @Entity;
    
    @PersistenceContext
    transient EntityManager Heuriger.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Heuriger.id;
    
    @Version
    @Column(name = "version")
    private Integer Heuriger.version;
    
    public Long Heuriger.getId() {
        return this.id;
    }
    
    public void Heuriger.setId(Long id) {
        this.id = id;
    }
    
    public Integer Heuriger.getVersion() {
        return this.version;
    }
    
    public void Heuriger.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Heuriger.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Heuriger.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Heuriger attached = Heuriger.findHeuriger(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Heuriger.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Heuriger.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Heuriger Heuriger.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Heuriger merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Heuriger.entityManager() {
        EntityManager em = new Heuriger().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Heuriger.countHeurigers() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Heuriger o", Long.class).getSingleResult();
    }
    
    public static List<Heuriger> Heuriger.findAllHeurigers() {
        return entityManager().createQuery("SELECT o FROM Heuriger o", Heuriger.class).getResultList();
    }
    
    public static Heuriger Heuriger.findHeuriger(Long id) {
        if (id == null) return null;
        return entityManager().find(Heuriger.class, id);
    }
    
    public static List<Heuriger> Heuriger.findHeurigerEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Heuriger o", Heuriger.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
