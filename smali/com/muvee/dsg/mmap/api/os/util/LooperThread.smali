.class public Lcom/muvee/dsg/mmap/api/os/util/LooperThread;
.super Ljava/lang/Thread;
.source "LooperThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/os/util/LooperThread$a;
    }
.end annotation


# static fields
.field public static final MESSAGE_QUIT:I = 0x64

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muvee/dsg/mmap/api/os/util/LooperThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static getHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getThread(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/os/util/LooperThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getThread(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/os/util/LooperThread;
    .locals 3

    .prologue
    .line 47
    sget-object v1, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->a:Ljava/util/Map;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;-><init>()V

    .line 51
    invoke-virtual {v0, p0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->setName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->start()V

    .line 53
    sget-object v2, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    monitor-exit v1

    return-object v0

    .line 56
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
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getThread(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/os/util/LooperThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public static postAtFrontOfQueue(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getThread(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/os/util/LooperThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method public static quit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 84
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getThread(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/os/util/LooperThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 85
    return-void
.end method

.method public static removeQuit(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    invoke-static {p0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getThread(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/os/util/LooperThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 60
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 62
    const-wide/16 v0, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 42
    new-instance v0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread$a;-><init>(Lcom/muvee/dsg/mmap/api/os/util/LooperThread$1;)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->b:Landroid/os/Handler;

    .line 43
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 44
    return-void
.end method
