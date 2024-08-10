.class public Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;
.super Ljava/lang/Object;
.source "SafeKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;
    }
.end annotation


# instance fields
.field private final digestPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/util/LruCache",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/bumptech/glide/util/LruCache;

    const-wide/16 v2, 0x3e8

    invoke-direct {v0, v2, v3}, Lcom/bumptech/glide/util/LruCache;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    .line 23
    const/16 v0, 0xa

    new-instance v1, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$1;-><init>(Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;)V

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/pool/FactoryPools;->threadSafe(ILcom/bumptech/glide/util/pool/FactoryPools$Factory;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;

    .line 52
    .local v0, "container":Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;
    :try_start_0
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    .line 54
    iget-object v1, v0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->sha256BytesToHex([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 54
    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->digestPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    throw v1
.end method


# virtual methods
.method public getSafeKey(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Lcom/bumptech/glide/load/Key;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    .local v0, "safeKey":Ljava/lang/String;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->calculateHexStringDigest(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    monitor-enter v2

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/cache/SafeKeyGenerator;->loadIdToSafeHash:Lcom/bumptech/glide/util/LruCache;

    invoke-virtual {v1, p1, v0}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    return-object v0

    .line 39
    .end local v0    # "safeKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 45
    .restart local v0    # "safeKey":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
