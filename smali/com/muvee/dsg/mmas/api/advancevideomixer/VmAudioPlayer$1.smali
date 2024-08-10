.class Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;
.super Ljava/lang/Object;
.source "VmAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->prepare(ZZJLcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

.field final synthetic b:Z

.field final synthetic c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;


# direct methods
.method constructor <init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;Z)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    iput-object p2, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

    iput-boolean p3, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)V

    .line 89
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->a:Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;

    iget-object v1, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-interface {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/OnComponentPreparedListener;->onPrepared(Ljava/lang/Object;)V

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->b:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    move-result-object v0

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PLAYING:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->c(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$1;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->e(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$2;

    invoke-direct {v1, p0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1$2;-><init>(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;)V

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 110
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$1;->c:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;

    invoke-static {v0}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;->b(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;

    move-result-object v0

    sget-object v1, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;->PAUSED:Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;->a(Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock;Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;)Lcom/muvee/dsg/mmas/api/advancevideomixer/VmAudioPlayer$PlayLock$State;

    goto :goto_0
.end method
