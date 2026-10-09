'use strict';
/*
 * DeepSeek Harness (Android) 引擎主动内存优化
 * - 每分钟检查 RSS，超过软阈值立即触发 full GC 压实
 * - 每 30 分钟无差别兜底 GC，防止慢增长
 * - 依赖 --expose-gc（由 NODE_OPTIONS 提供）
 */
const SOFT_LIMIT_MB = 360;      // RSS 软阈值，低于 512MB 堆上限留余量
const CHECK_MS = 60 * 1000;
const IDLE_GC_MS = 30 * 60 * 1000;

function rssMB() {
  return Math.round(process.memoryUsage().rss / 1048576);
}
function gc() {
  try { if (typeof global.gc === 'function') global.gc(); } catch (_) {}
}

setInterval(() => {
  try { if (rssMB() > SOFT_LIMIT_MB) gc(); } catch (_) {}
}, CHECK_MS).unref();

setInterval(() => {
  try { gc(); } catch (_) {}
}, IDLE_GC_MS).unref();

try { console.log(`memopt: active (rss=${rssMB()}MB, soft-limit=${SOFT_LIMIT_MB}MB)`); } catch (_) {}
