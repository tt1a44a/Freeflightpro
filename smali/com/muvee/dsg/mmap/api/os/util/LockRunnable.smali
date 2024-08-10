.class public abstract Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;
.super Ljava/lang/Object;
.source "LockRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 26
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->a:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 13
    monitor-enter p0

    .line 14
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->b:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->a:Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->a:Ljava/lang/Object;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LockRunnable;->b:Z

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
