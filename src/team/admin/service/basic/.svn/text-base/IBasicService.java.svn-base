package team.admin.service.basic;

import java.util.List;

/**
 * 逻辑业务处理的基础接口，其中包含了其它逻辑业务处理时，<br>
 * 可能会用到的公共的接口。该接口中声明的所有方法，其包含<br>
 * 的参数都与具体的类无关。原则上，所有的业务接口都应该继承本接口。
 * @author 岳兴
 *
 * @date 2015-7-24 上午11:43:11
 */
public interface IBasicService {

	/**
	 * 通过ID获取对象,该方法通过传递一个类和对象的id来获取<br>
	 * 对象。返回的对象是一个<code>Object</code>对象，当调用该方法时，需<br>
	 * 要对返回的对象进行强转。
	 * 
	 * @param clazz
	 *            传递的实体类
	 * @param id
	 *            需要查询的对象的id
	 * @return 查询到的对象，是一个<code>Object</code>类型的值，因此需要强转
	 */
	public Object findById(Class clazz, String id);

	/**
	 * 查询方法hql,其中hql为自定义的查询语句，其语法遵循HQL的语法规则。<br>
	 * 同时，在该hql语句中，使用通配符为需要传递的各个参数赋值，需要赋值<br>
	 * 的参数将作为<code>Object</code>类型放入数组中传递到函数中。<br>
	 * 需要特别注意的是，传入的参数的类型应该与其在对应的实体类中对应属性的类型严格对应，否则将报错。
	 * <p>
	 * 该函数将返回一个无类型的List对象， 在使用时，需要进行强转；同时，List对象的类型应当是实体类型。<br>
	 * 如果查询到的并不是完整的实体对象，那么该方法不适用。
	 * 
	 * @param hql
	 *            自定义的查询语句
	 * @param parameters
	 *            需要传入的参数，作为Object对象放入数组
	 * @return 返回一个List，其中包含了所有查询到的实体对象。
	 */
	public List<?> excuteQuery(String hql, Object[] parameters);

	/**
	 * 带分页的hql查询方法，基本属性类似于{@link #excuteQuery(String, Object[])}，不过，多了两个参数。<br>
	 * 两个参数均为int类型。<br>
	 * 需要特别注意的是，传入的参数的类型应该与其在对应的实体类中对应属性的类型严格对应，否则将报错。<br>
	 * 其中，<b>pageNow</b>指定需要显示的是第几页的数据， 而<b>pageSize</b>则指定了每页需要显示多少条数据。
	 * 
	 * @param hql
	 *            自定义的查询语句
	 * @param parameters
	 *            需要传入的参数，作为<code>Object</code>对象放入数组
	 * @param pageNow
	 *            需要显示第几页的数据，<code>int</code>类型
	 * @param pageSize
	 *            每页需要显示多少条数据，<code>int</code>类型
	 * @return 返回一个List，其中包含了所有查询到的实体对象。
	 */
	public List<?> excuteQueryByPage(String hql, Object[] parameters,
			int pageNow, int pageSize);

	/**
	 * 添加对象。可以将实体对象直接添加进数据库。但是该实体对象必须遵循该实体类型<br>
	 * 需要特别注意的是，传入的参数的类型应该与其在对应的实体类中对应属性的类型严格对应，否则将报错。<br>
	 * 所对应的数据库中的表中定义的约束。比如<i>主键唯一</i>，<i>外键存在</i>，<i>主键不为空</i>等。
	 * 
	 * @param object
	 *            需要写入数据库的数据，为一个实体对象
	 */
	public void add(Object object);

	// 执行统一hql语句->修改
	public List<?> excuteUpdate(String hql, Object[] parameters);

	/**
	 * 查询一个特定的对象，条件可以是一个条件，也可以是多个条件。hql语句中使用通配符<br>
	 * 为各个条件注入参数。所有的参数都作为<code>Object<code>类型的数据存放在数组中。<br>
	 * 需要特别注意的是，传入的参数的类型应该与其在对应的实体类中对应属性的类型严格对应，否则将报错。<br>
	 * 最终，函数将返回一个查询到的<code>Object</code>对象，使用时需进行强转。
	 * <p>
	 * 需要注意的是，该方法返回的对象可以是空，也就是说可以查询不到对象，但是，如果
	 * 查询到的对象大于一个的时候将抛出{@link org.hibernate.NonUniqueResultException}异常。<br>
	 * 因此，除非十分确定所查询到的对象个数不大于1，此方法不被推荐。
	 * 
	 * @param hql
	 *            自定义的查询语句
	 * @param parameters
	 *            需要传入的参数，作为<code>Object</code>对象放入数组
	 * @return 返回<b>1个</b><code>Object</code>对象，使用时需强转。
	 */
	public Object uniqueQuery(String hql, Object[] parameters);

	/**
	 * 根据指定的每页显示的数据数目，返回总页数，值的类型为<code>int</code>。<br>
	 * hql语句中使用通配符为各个条件注入参数。所有的参数都作为<code>Object<code>类型的数据存放在数组中。<br>
	 * 需要特别注意的是，传入的参数的类型应该与其在对应的实体类中对应属性的类型严格对应，否则将报错。
	 * 
	 * @param hql
	 *            自定义的查询语句
	 * @param parameters
	 *            需要传入的参数，作为<code>Object</code>对象放入数组
	 * @param pageSize
	 *            每页需要显示的数据的数目，<code>int</code>类型
	 * @return 总页数，<code>int</code>类型
	 */
	public int queryPageCount(String hql, Object[] parameters, int pageSize);

	/**
	 * 根据id号删除对象。该方法需要传入需要删除的记录所在的表对应的实体类。<br>
	 * 在该方法中，通过传入的参数，调用{@link #findById(Class, String)}方法获取到对象后，依据其主键 从数据库中删除记录。
	 * 
	 * @param clazz
	 *            实体类
	 * @param id
	 *            对象的id
	 */
	public void deleteById(Class clazz, String id);

	/**
	 * 通过Object修改。该方法需要传入需要修改的对象。<br>
	 * 对象传入后，将依据其主键对其在数据库中对应的记录进行修改，当然，主键是<b>不能</b>修改的。
	 * 
	 * @param object
	 *            需要修改的对象
	 */
	public void update(Object object);

	/**
	 * 通过自定义的hql获取所有对象。
	 * 
	 * @param hql
	 * @return
	 */
	public List<?> getAll(String hql);

	/**
	 * 返回总记录数。通过传入自定义的hql语句，将执行该hql语句并返回总的记录的个数，返回类型为<code>int</code>。<br>
	 * <b>使用时，本方法可能需要重写。</b>
	 * @param entity
	 *            要查询的实体，<code>String</code>类型
	 * @return 总记录数，<code>int</code>类型
	 */
	public int getTotalRecord(String entity);

}
