.class Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;
.super Ljava/lang/Object;
.source "ThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->a:Ljava/lang/String;

    .line 23
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->b:Landroid/os/HandlerThread;

    .line 33
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->c:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory$a;->b:Landroid/os/HandlerThread;

    return-object v0
.end method
