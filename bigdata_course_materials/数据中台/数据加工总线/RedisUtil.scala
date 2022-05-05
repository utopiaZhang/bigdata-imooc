package com.imooc.engine.utils

import redis.clients.jedis.{JedisPool, JedisPoolConfig}

/**
 * Redis工具类
 * @author xuwei
 */
object RedisUtil {

  @transient
  private var pool: JedisPool = null

  def makePool(redisHost: String, redisPort: Int, maxTotal: Int): Unit = {
    makePool(redisHost, redisPort, 3000, maxTotal, true, false, 10000)
  }

  def makePool(redisHost: String, redisPort: Int, redisTimeout: Int, maxTotal: Int, testOnBorrow: Boolean, testOnReturn: Boolean, maxWaitMillis: Long): Unit = {
    if (pool == null) {
      val poolConfig = new JedisPoolConfig()
      poolConfig.setMaxTotal(maxTotal)
      poolConfig.setTestOnBorrow(testOnBorrow)
      poolConfig.setMaxWaitMillis(maxWaitMillis)
      pool = new JedisPool(poolConfig, redisHost, redisPort, redisTimeout)

      val hook = new Thread {
        override def run = pool.destroy()
      }
      //JAVA虚拟机关闭钩子，在jvm销毁前执行，销毁jedis连接池
      sys.addShutdownHook(hook.run)
    }
  }

  def getPool: JedisPool = {
    assert(pool != null)
    pool
  }
}
