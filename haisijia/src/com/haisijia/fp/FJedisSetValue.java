package com.haisijia.fp;

import redis.clients.jedis.Jedis;

@FunctionalInterface
public interface FJedisSetValue<U, V> {
	public void setJedisValue(Jedis jedis, U u, V v);
}
