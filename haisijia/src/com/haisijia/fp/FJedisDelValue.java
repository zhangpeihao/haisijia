package com.haisijia.fp;

import redis.clients.jedis.Jedis;

@FunctionalInterface
public interface FJedisDelValue<T> {
	public void delJedisValue(Jedis jedis, T t);
}
