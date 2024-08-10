.class public Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;
.super Ljava/lang/Object;
.source "ThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHandeler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    .prologue
    .line 43
    sget-object v1, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->a:Ljava/util/Map;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;

    .line 45
    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;-><init>(Ljava/lang/String;)V

    .line 47
    sget-object v2, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->a(Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;)Landroid/os/Handler;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->getHandeler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public static postAtFrontOfQueue(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 102
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->getHandeler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method

.method public static postDelayed(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 92
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->getHandeler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    return-void
.end method

.method public static quit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->a:Ljava/util/Map;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->b(Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 58
    sget-object v0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeCallbacks(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 98
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->getHandeler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method
