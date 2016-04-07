package com.haisijia.fp;

import redis.clients.jedis.Jedis;

public interface FJedisGetValue<T, R> {
	public R getJedisValue(Jedis jedis, T t);
}
